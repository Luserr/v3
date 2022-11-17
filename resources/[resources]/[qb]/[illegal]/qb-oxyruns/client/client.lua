local QBCore = exports['qb-core']:GetCoreObject()

local PickUpLocations = vector4(0.0, 0.0, 0.0, 0.0)
local OxyLocations = vector4(0.0, 0.0, 0.0, 0.0)
local Supplier = nil
local SupplierBox = nil
local CurrentCops = 0
local OnDelivery = false
local GotPackages = false
local VehicleHash = nil
local BuyerHash = nil
local PackagesCollected = 0
local DeliveredPackages = 0
local SupplierBlip = nil
local DropBlip = nil
local BuyerVehicle = nil
local Buyer = nil
local OxyBox = nil
local HasBox = false

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        exports["ps-zones"]:DestroyZone('Oxy-SupplierZone')
        exports["ps-zones"]:DestroyZone('Oxy-BuyerZone')
    end
end)

CreateThread(function()
    QBCore.Functions.LoadModel(Config.PedModel)
    local StarterPed = CreatePed(0, Config.PedModel, Config.PedLocation.x, Config.PedLocation.y, Config.PedLocation.z-1.0, Config.PedLocation.w, false, false)
	TaskStartScenarioInPlace(StarterPed, 'WORLD_HUMAN_CLIPBOARD', true)
	FreezeEntityPosition(StarterPed, true)
	SetEntityInvincible(StarterPed, true)
	SetBlockingOfNonTemporaryEvents(StarterPed, true)

    exports['qb-target']:AddTargetEntity(StarterPed, {
        options = {
            {
                icon = 'fas fa-circle',
                label = 'Check In',
                canInteract = function()
                    return not OnDelivery
                end,
                action = function()
                    TriggerEvent('kevin-oxyruns:initiate')
                end,
            },
        },
        distance = 2.0
    })
end)

RegisterNetEvent("ps-zones:enter", function(ZoneName, ZoneData)
    if ZoneName == 'Oxy-SupplierZone' then
        exports["ps-zones"]:DestroyZone('Oxy-SupplierZone')
        TriggerEvent('kevin-oxyruns:SpawnSupplier')
    end

    if ZoneName == 'Oxy-BuyerZone' then
        exports["ps-zones"]:DestroyZone('Oxy-BuyerZone')
        TriggerEvent('kevin-oxyruns:SpawnBuyers')
    end
end)

RegisterNetEvent('kevin-oxyruns:initiate', function ()
    if CurrentCops >= Config.CopsNeeded then
        OnDelivery = true
        TriggerEvent('animations:client:EmoteCommandStart', {"clipboard"})
        QBCore.Functions.Progressbar("start_delivery", 'Getting Information', 10000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {
        }, {}, function() -- Done
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.TriggerCallback("kevin-oxyruns:coolc",function(isCooldown)
                if not isCooldown then
                    if Config.UseStartPayment then
                        QBCore.Functions.TriggerCallback("kevin-oxyruns:Haspayment",function(money)
                            if money then
                                OnDelivery = true
                                TriggerServerEvent("kevin-oxyruns:coolout")
                                TriggerEvent('kevin-oxyruns:OxyStart')
                            else
                                OnDelivery = false
                            end
                        end)
                    else
                        OnDelivery = true
                        TriggerServerEvent("kevin-oxyruns:coolout")
                        TriggerEvent('kevin-oxyruns:OxyStart')
                    end
                else
                    OnDelivery = false
                    QBCore.Functions.Notify("No deliveries available right now..", 'error')
                end
            end)
        end, function() -- Cancel
            OnDelivery = false
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            QBCore.Functions.Notify("Cancelled", 'error')
        end,"fas fa-boxes-stacked")
    else
        if Config.Notifications == 'phone' then
            if Config.Phone == 'qb' then
                TriggerEvent('qb-phone:client:CustomNotification', 'NOTIFICATION', 'No deliveries available at this time', 'fas fa-bars', '#86F9A1', 4000)
            elseif Config.Phone == 'gks' then
                TriggerEvent('gksphone:notifi', {title = "NOTIFICATION", message = 'No deliveries available at this time', img= '/html/static/img/icons/messages.png'})
            end
        elseif Config.Notifications == 'qbcore' then
            QBCore.Functions.Notify('No deliveries available at this time', 'error')
        end
    end
end)

RegisterNetEvent('kevin-oxyruns:OxyStart', function ()
    if Config.Notifications == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'NOTIFICATION', 'Meet With supplier and collect packages', 'fas fa-bars', '#86F9A1', 4000)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "NOTIFICATION", message = 'Meet With supplier and collect packages', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notifications == 'qbcore' then
        QBCore.Functions.Notify('Meet With supplier and collect packages', 'primary')
    end

    PickUpLocations = Config.PickUpLocations[math.random(#Config.PickUpLocations)]
    SupplierBlip = AddBlipForCoord(PickUpLocations.x, PickUpLocations.y, PickUpLocations.z)

    SetBlipSprite(SupplierBlip, Config.OxySupplierBlip)
    SetBlipColour(SupplierBlip, Config.OxyBlipsColor)
    SetBlipScale(SupplierBlip, Config.OxySupplierBlipScale)
    SetBlipRoute(SupplierBlip, Config.UseGpsRoute)
    SetBlipRouteColour(SupplierBlip, Config.OxySupplierBlipRouteColor)

    exports["ps-zones"]:CreateBoxZone("Oxy-SupplierZone", PickUpLocations, 65.0, 65.0, {
        debugPoly = false,
        heading = PickUpLocations.w,
        minZ = PickUpLocations.z - 1,
        maxZ = PickUpLocations.z + 15,
    })
end)

RegisterNetEvent('kevin-oxyruns:SpawnSupplier', function ()
    local SupplierHash = Config.SupplierPeds[math.random(#Config.SupplierPeds)]
    QBCore.Functions.LoadModel(SupplierHash)
    QBCore.Functions.LoadModel(`hei_prop_heist_box`)
    Supplier = CreatePed(0, SupplierHash, PickUpLocations.x, PickUpLocations.y, PickUpLocations.z-1.0, PickUpLocations.w, true, true)
    SupplierBox = CreateObject(`hei_prop_heist_box`, 0, 0, 0, true, true, true)
    FreezeEntityPosition(Supplier, true)
    SetEntityInvincible(Supplier, true)
    AttachEntityToEntity(SupplierBox, Supplier, GetPedBoneIndex(Supplier, 0xEB95), 0.075, -0.10, 0.255, -130.0, 105.0, 0.0, true, true, false, false, 0, true)
    LoadAnim('anim@heists@box_carry@')
    TaskPlayAnim(Supplier, 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
    SupplierSpawned = true
    CreateThread(function ()
        exports['qb-target']:AddTargetEntity(Supplier, {
            options = {
                {
                    icon = 'fas fa-circle',
                    label = 'Take Packages',
                    canInteract = function()
                        return not GotPackages
                    end,
                    action = function()
                        TriggerEvent('kevin-oxyruns:CollectPackages')
                    end,
                },
            },
            distance = 2.0
        })
    end)
end)

RegisterNetEvent('kevin-oxyruns:CollectPackages', function ()
    RecievedPackages = Config.Packages
    PackagesCollected = PackagesCollected +1

    if Config.Notifications == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'NOTIFICATION', PackagesCollected..' / '..RecievedPackages..' Collected Packages.', 'fas fa-bars', '#86F9A1', 4000)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "NOTIFICATION", message = PackagesCollected..' / '..RecievedPackages..' Collected Packages.', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notifications == 'qbcore' then
        QBCore.Functions.Notify(PackagesCollected..' / '..RecievedPackages..' Collected Packages.', 'primary')
    end

    TriggerServerEvent('kevin-oxyruns:giveoxypackages')
    if PackagesCollected == RecievedPackages then
        RemoveBlip(SupplierBlip)
        GotPackages = true
        DeleteEntity(SupplierBox)
        ClearPedTasks(Supplier)
        Wait(500)
        SetPedAsNoLongerNeeded(Supplier)
        TriggerEvent('kevin-oxyruns:GetBuyerLocation')
    end
end)

RegisterNetEvent('kevin-oxyruns:GetBuyerLocation', function ()
    OxyLocations = Config.OxyLocations[math.random(#Config.OxyLocations)]
    DropBlip = AddBlipForCoord(OxyLocations.Location)
    SetBlipSprite(DropBlip, Config.OxyDropBlip)
    SetBlipColour(DropBlip, Config.OxyBlipsColor)
    SetBlipScale(DropBlip, Config.OxyDropBlipScale)
    SetBlipRoute(DropBlip, Config.UseGpsRoute)
    SetBlipRouteColour(DropBlip, Config.OxyBlipsColor)

    if Config.Notifications == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'NOTIFICATION', 'Go to the area on the gps to sell package', 'fas fa-bars', '#86F9A1', 4000)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "NOTIFICATION", message = 'Go to the area on the gps to sell package', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notifications == 'qbcore' then
        QBCore.Functions.Notify('Go to the area on the gps to sell package', 'primary')
    end

    exports["ps-zones"]:CreateBoxZone("Oxy-BuyerZone", OxyLocations.Location, 25.0, 25.0, {
        debugPoly = false,
        heading = OxyLocations.Location.w,
        minZ = OxyLocations.Location.z - 1,
        maxZ = OxyLocations.Location.z + 15,
    })
end)

RegisterNetEvent('kevin-oxyruns:SpawnBuyers', function ()
    if Config.Notifications == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'NOTIFICATION', 'Buyers have been notified...now you wait.', 'fas fa-bars', '#86F9A1', 4000)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "NOTIFICATION", message = 'Buyers have been notified...now you wait.', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notifications == 'qbcore' then
        QBCore.Functions.Notify('Buyers have been notified...now you wait.', 'primary')
    end

    local chance = math.random(1, 100)
    if chance <= Config.AlertChance then
        Alert()
    end
    
    Wait(Config.BuyerTimer * 60000)
    VehicleHash =  OxyLocations.Vehicles[math.random(#OxyLocations.Vehicles)]
    QBCore.Functions.LoadModel(VehicleHash)
    BuyerVehicle = CreateVehicle(VehicleHash, OxyLocations.CarSpawn.x, OxyLocations.CarSpawn.y, OxyLocations.CarSpawn.z, OxyLocations.CarSpawn.w, true, true)

    BuyerHash = OxyLocations.Peds[math.random(#OxyLocations.Peds)]
    QBCore.Functions.LoadModel(BuyerHash)
    Buyer = CreatePed(0,BuyerHash, OxyLocations.CarSpawn.x, OxyLocations.CarSpawn.y, OxyLocations.CarSpawn.z, OxyLocations.CarSpawn.w, true, true)
    SetEntityAsMissionEntity(Buyer, true, true)
    SetEntityAsMissionEntity(BuyerVehicle, true, true)
    SetPedIntoVehicle(Buyer, BuyerVehicle, -1)
    SetDriverAbility(Buyer, 1.0)
    TaskVehicleDriveToCoord(Buyer, BuyerVehicle, OxyLocations.Location.x, OxyLocations.Location.y, OxyLocations.Location.z, Config.PedDrivingSpeed, 1, 0, Config.PedDrivingStyle, 1.0, true)
    SetPedKeepTask(Buyer, true)

    CreateThread(function ()
        exports['qb-target']:AddTargetEntity(BuyerVehicle, {
            options = {
                {
                    icon = 'fas fa-box',
                    label = 'Give Package',
                    canInteract = function()
                        return HasBox
                    end,
                    action = function()
                        TriggerEvent('kevin-oxyruns:HandPackage')
                    end,
                },
            },
            distance = 2.0
        })
    end)
end)

RegisterNetEvent('kevin-oxyruns:HandPackage', function ()
    TriggerServerEvent('kevin-oxyruns:removeoxypackages')
    DeliveredPackages = DeliveredPackages +1
    exports['qb-target']:RemoveTargetEntity(BuyerVehicle, 'Give Package')
    SetPedAsNoLongerNeeded(Buyer)
    RemoveBlip(DropBlip)
    CreateThread(function ()
        Wait(15000)
        DeleteEntity(Buyer)
        DeleteEntity(BuyerVehicle)
    end)
    Wait(20000)
    TriggerEvent('kevin-oxyruns:GetBuyerLocation')

    if DeliveredPackages == RecievedPackages then
        ClearPedTasks(PlayerPedId())
        RemoveBlip(DropBlip)

        if Config.Notifications == 'phone' then
            if Config.Phone == 'qb' then
                TriggerEvent('qb-phone:client:CustomNotification', 'NOTIFICATION', 'All packages sold.', 'fas fa-bars', '#86F9A1', 4000)
            elseif Config.Phone == 'gks' then
                TriggerEvent('gksphone:notifi', {title = "NOTIFICATION", message = "All packages sold.", img= '/html/static/img/icons/messages.png'})
            end
        elseif Config.Notifications == 'qbcore' then
            QBCore.Functions.Notify('All packages sold.', 'primary')
        end
        TriggerEvent('kevin-oxyruns:clean')
    end
end)

RegisterNetEvent('kevin-oxyruns:clean', function ()
    exports["ps-zones"]:DestroyZone('Oxy-SupplierZone')
    exports["ps-zones"]:DestroyZone('Oxy-BuyerZone')
    PickUpLocations = vector4(0.0, 0.0, 0.0, 0.0)
    OxyLocations = vector4(0.0, 0.0, 0.0, 0.0)
    Supplier = nil
    SupplierBox = nil
    OnDelivery = false
    GotPackages = false
    PackagesCollected = 0
    VehicleHash = nil
    DeliveredPackages = 0
    BuyerHash = nil
    SupplierBlip = nil
    DropBlip = nil
    BuyerVehicle = nil
    Buyer = nil
    OxyBox = nil
end)

CreateThread(function()
    while true do
        if LocalPlayer.state['isLoggedIn'] then
            local player = PlayerPedId()
            local Item = QBCore.Functions.HasItem(Config.OxyPackageName)
            if Item then
                if not HasBox then
                    HasBox = true
                    LoadAnim('anim@heists@box_carry@')
                    TaskPlayAnim(player, 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                    CarryAnimation()
                    QBCore.Functions.LoadModel(`hei_prop_heist_box`)
                    OxyBox = CreateObject(`hei_prop_heist_box`, 0, 0, 0, true, true, true)
                    AttachEntityToEntity(OxyBox, player, GetPedBoneIndex(player, 0xEB95), 0.075, -0.10, 0.255, -130.0, 105.0, 0.0, true, true, false, false, 0, true)
                    DisableControls()
                end
            elseif HasBox then
                ClearPedTasks(player)
                DeleteEntity(OxyBox)
                HasBox = false
            end
        end
        Wait(1000)
    end
end)

function DisableControls()
    CreateThread(function ()
        while HasBox do
            DisableControlAction(0, 21, true) -- Sprinting
            DisableControlAction(0, 22, true) -- Jumping
            DisableControlAction(0, 23, true) -- Vehicle Entering
            DisableControlAction(0, 36, true) -- Ctrl
            DisableControlAction(0, 24, true) -- Disable Attack
            DisableControlAction(0, 25, true) -- Disable Aim
            Wait(1)
        end
    end)
end

function  CarryAnimation()
    CreateThread( function ()
        while HasBox do
            if not IsEntityPlayingAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 3) then
                TaskPlayAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
            end
            Wait(1000)
        end
    end)
end

function LoadAnim(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end

----- ALERTS PORTION
function Alert()
    if Config.Dispatch == 'ps-dispatch' then
        exports['ps-dispatch']:Oxy()
    elseif Config.Dispatch == 'cd-dispatch' then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {'police'},
            coords = data.coords,
            title = '10-31 - Drug Activity',
            message = 'Drug Activity at '..data.street,
            flash = 0,
            unique_id = tostring(math.random(0000000,9999999)),
            blip = {
                sprite = 67,
                scale = 1.5,
                colour = 2,
                flashes = false,
                text = '911 - Drug Activity',
                time = (5*60*1000),
                sound = 1,
            }
        })
    end
end