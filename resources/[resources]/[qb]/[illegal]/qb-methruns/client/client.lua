local QBCore = exports['qb-core']:GetCoreObject()

local CurrentCops = 0
local PlayerData = QBCore.Functions.GetPlayerData()
local MethVehicle = nil
local LocationData = nil
local MethCarLocation = vector3(0.0, 0.0, 0.0)
local SupplerLocation = vector3(0.0, 0.0, 0.0)
local DropLocation = vector3(0.0, 0.0, 0.0)
local Supplier = nil
local Goodies = false
local ValidPackages = false
local GotTimer = false
local GotPackages = false
local GotMeetLocation = false
local AmbushPeds = nil
local CollectedItems = 0
local DeliveredItems = 0
local PedSpawned = false
local CanDropOff = false
local CanCollect = false
local caseprop = false
local GotCase = false

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerData = QBCore.Functions.GetPlayerData()
        exports["ps-zones"]:DestroyZone('Meth-CarZone')
        exports["ps-zones"]:DestroyZone('Meth-SupplierZone')
        exports["ps-zones"]:DestroyZone('Meth-DropOffZone')
    end
end)

CreateThread(function()
    QBCore.Functions.LoadModel(Config.PedHash)
    local MethPed = CreatePed(0, Config.PedHash, Config.PedPos.x, Config.PedPos.y, Config.PedPos.z-1.0, Config.PedPos.w, false, false)
	TaskStartScenarioInPlace(MethPed, 'WORLD_HUMAN_SMOKING_POT', true)
	FreezeEntityPosition(MethPed, true)
	SetEntityInvincible(MethPed, true)
	SetBlockingOfNonTemporaryEvents(MethPed, true)

    exports['qb-target']:AddTargetEntity(MethPed, {
        options = {
            {
                icon = 'fas fa-box',
                label = 'Hand Goodies',
                canInteract = function()
                    return not ValidPackages
                end,
                action = function()
                    StartItems()
                end,
            },
            {
                icon = 'fas fa-list-check',
                label = 'Get Task',
                canInteract = function()
                    return not Goodies
                end,
                action = function()
                    TriggerEvent('kevin-methruns:client:GetTask')
                end,
            },
            {
                icon = 'fas fa-check',
                label = 'Check Goods',
                canInteract = function()
                    return not ValidPackages
                end,
                action = function()
                    if CurrentCops >= Config.CopNeeded then
                        if Config.UseMethCooldown then
                            QBCore.Functions.TriggerCallback("kevin-methruns:server:coolc",function(isCooldown)
                                if not isCooldown then
                                    TriggerServerEvent('kevin-methruns:server:verifyitems')
                                else
                                    QBCore.Functions.Notify("No deliveries available right now..", 'error')
                                end
                            end)
                        else
                            TriggerServerEvent('kevin-methruns:server:verifyitems')
                        end
                    else
                        QBCore.Functions.Notify("You cannot do this right now..", 'error', 4000)
                    end
                end,
            },
            {
                icon = 'fas fa-mobile-screen-button',
                label = 'Check Status',
                action = function()
                    TriggerServerEvent('kevin-methruns:server:GetRep')
                end,
            },
            {
                icon = 'fas fa-list-check',
                label = 'Collect Reward',
                canInteract = function()
                    return CanCollect
                end,
                action = function()
                    TriggerServerEvent('kevin-methruns:server:getCase')
                    CanCollect = false
                    GotCase = true
                end,
            },
        },
        distance = 2.0
    })
end)

RegisterNetEvent("ps-zones:enter", function(ZoneName, ZoneData)
    if ZoneName == 'Meth-CarZone' then
        exports["ps-zones"]:DestroyZone('Meth-CarZone')
        ClearAreaOfVehicles(MethCarLocation.x, MethCarLocation.y, MethCarLocation.z, 15.0, false, false, false, false, false)
        local MethVehicleHash = Config.VehicleNames[math.random(#Config.VehicleNames)]
        QBCore.Functions.LoadModel(MethVehicleHash)
        MethVehicle = CreateVehicle(MethVehicleHash, MethCarLocation.x, MethCarLocation.y, MethCarLocation.z, MethCarLocation.w, true, true)
        SetVehicleDirtLevel(MethVehicle, 0)
        SetEntityAsMissionEntity(MethVehicle)
        
        CreateThread(function ()
            while not GotTimer do
                if IsPedInVehicle(PlayerPedId(), MethVehicle) then
                    GotTimer = true
                    RemoveBlip(MethCarBlip)
                    TriggerEvent('kevin-methruns:client:StartRun')
                end
                Wait(100)
            end
        end)
    end

    if ZoneName == 'Meth-SupplierZone' then
        exports["ps-zones"]:DestroyZone('Meth-SupplierZone')
        QBCore.Functions.Notify('Be sure that you have enough space on you, these can be heavy', 'primary', 4000)
        QBCore.Functions.LoadModel(Config.PedHash)
        Supplier = CreatePed(0, Config.PedHash, SupplerLocation.x, SupplerLocation.y, SupplerLocation.z-1.0, SupplerLocation.w, true, true)
        FreezeEntityPosition(Supplier, true)
        SetEntityInvincible(Supplier, true)

        CreateThread(function ()
            exports['qb-target']:AddTargetEntity(Supplier, {
                options = {
                    {
                        icon = 'fas fa-box',
                        label = 'Pickup Goods',
                        canInteract = function()
                            return  not GotPackages
                            
                        end,
                        action = function()
                            TriggerEvent('kevin-methruns:client:CollectItems')
                        end,
                    },
                },
                distance = 2.0
            })
        end)
    end

    if ZoneName == 'Meth-DropOffZone' then
        exports["ps-zones"]:DestroyZone('Meth-DropOffZone')
        DropOffPed = CreatePed(0, Config.PedHash, DropLocation.x, DropLocation.y, DropLocation.z -1, DropLocation.w, true, true)
        TaskStartScenarioInPlace(DropOffPed, 'WORLD_HUMAN_SMOKING_POT', true)
        FreezeEntityPosition(DropOffPed, true)
        SetEntityInvincible(DropOffPed, true)
        SetBlockingOfNonTemporaryEvents(DropOffPed, true)
        PedSpawned = true
        
        CreateThread(function()
            while PedSpawned do
                local vehpos = GetEntityCoords(MethVehicle)
                local dist = #(vehpos - vector3(DropLocation.x, DropLocation.y, DropLocation.z))
                if not IsPedInVehicle(PlayerPedId(), MethVehicle) and dist <= 10 then
                    RemoveBlip(DropLocationBlip)
                    FreezeEntityPosition(MethVehicle, true)
                    CanDropOff = true
                end
                exports['qb-target']:AddTargetEntity(DropOffPed, {
                    options = {
                        {
                            icon = 'fas fa-boxes-stacked',
                            label = 'Drop off goods',
                            canInteract = function()
                                return CanDropOff
                            end,
                            action = function()
                                TriggerEvent('kevin-methruns:DropOffItems')
                            end,
                        },
                    },
                    distance = 2.0
                })
                Wait(1000)
            end
        end)
    end
end)

function StartItems()
    TriggerEvent("inventory:client:SetCurrentStash", "Handoff")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Handoff", {
        maxweight = 4000000,
        slots = 50,
    })
end

RegisterNetEvent('kevin-methruns:client:verifypackages', function ()
    ValidPackages = true
    QBCore.Functions.Notify("These look good to me, you can grab your task now.", 'success', 3500)
end)

RegisterNetEvent('kevin-methruns:client:GetTask', function ()
    TriggerServerEvent("kevin-methruns:server:coolout")
    if ValidPackages then
        Goodies = true
        if Config.Notify == 'phone' then
            if Config.Phone == 'qb' then
                TriggerEvent('qb-phone:client:CustomNotification', 'TASK NOTIFICATION', 'Get the vehicle marked on your gps..', 'fas fa-bars', '#c07ef2', 8500)
            elseif Config.Phone == 'gks' then
                TriggerEvent('gksphone:notifi', {title = "TASK NOTIFICATION", message = "Get the vehicle marked on your gps..", img= '/html/static/img/icons/messages.png'})
            end
        elseif Config.Notify == 'qb' then
            QBCore.Functions.Notify('Get the vehicle marked on your gps..', 'primary', 4000)
        end
        MethCarLocation = Config.CarSpawns[math.random(#Config.CarSpawns)]

        MethCarBlip = AddBlipForCoord(MethCarLocation.x, MethCarLocation.y, MethCarLocation.z)
        SetBlipSprite(MethCarBlip, 1)
        SetBlipColour(MethCarBlip, 13)
        SetBlipScale(MethCarBlip, 0.85)
        SetBlipRoute(MethCarBlip, true)
        SetBlipRouteColour(MethCarBlip, 43)

        exports["ps-zones"]:CreateCircleZone("Meth-CarZone", MethCarLocation, 200.0, {
            debugPoly = false,
            minZ = MethCarLocation.z - 1,
            maxZ = MethCarLocation.z + 1,
        })
    else
        QBCore.Functions.Notify("Wow there buddy, don't jump the gun now", 'error', 4000)
    end
end)

RegisterNetEvent('kevin-methruns:client:StartRun', function ()
    if Config.Notify == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'TASK NOTIFICATION', 'Meet the supplier and get the products', 'fas fa-bars', '#c07ef2', 8500)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "TASK NOTIFICATION", message = 'Meet the supplier and get the products', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notify == 'qb' then
        QBCore.Functions.Notify('Meet the supplier and get the products', 'primary', 4000)
    end

    LocationData = Config.PickupLocations[math.random(#Config.PickupLocations)]
    SupplerLocation = LocationData.PedSpawn
    SupplerBlip = AddBlipForCoord(SupplerLocation)
    SetBlipSprite(SupplerBlip, 1)
    SetBlipColour(SupplerBlip, 0)
    SetBlipScale(SupplerBlip, 0.75)
    SetBlipRoute(SupplerBlip, true)
    SetBlipRouteColour(SupplerBlip, 43)

    exports["ps-zones"]:CreateCircleZone("Meth-SupplierZone", SupplerLocation, 200.0, {
        debugPoly = false,
        minZ = SupplerLocation.z - 1,
        maxZ = SupplerLocation.z + 1,
    })
end)

RegisterNetEvent('kevin-methruns:client:CollectItems', function()
    RecievedPackages = Config.Items
    CollectedItems = CollectedItems +1
    TriggerServerEvent('kevin-methruns:server:giveproducts')
    if CollectedItems == RecievedPackages then
        GotPackages = true
        SetPedAsNoLongerNeeded(Supplier)
        RemoveBlip(SupplerBlip)
        TriggerEvent('kevin-methruns:GetDropOffLocation')
        Alert()
        if PlayerData.metadata["methruns"] <= Config.LevelRep then
            for k, v in pairs(LocationData.AmbushSpawn) do
                QBCore.Functions.LoadModel(Config.AmbushPed)
                AmbushPeds = CreatePed(0, Config.AmbushPed, v.x, v.y, v.z, v.w, true, true)
                SetNetworkIdExistsOnAllMachines(NetworkGetNetworkIdFromEntity(AmbushPeds), true)
                SetPedAccuracy(AmbushPeds, Config.LowRepPedAccuracy)
                SetPedArmour(AmbushPeds, Config.LowRepPedArmor)
                SetPedMaxHealth(AmbushPeds, Config.LowRepPedHealth)
                SetPedRelationshipGroupHash(AmbushPeds, `HATES_PLAYER`)
                SetPedKeepTask(AmbushPeds, true)
                SetCanAttackFriendly(AmbushPeds, false, true)
                TaskCombatPed(AmbushPeds, PlayerPedId(), 0, 16)
                SetPedCombatAttributes(AmbushPeds, 46, true)
                SetPedCombatAbility(AmbushPeds, 1)
                SetPedCombatAttributes(AmbushPeds, 0, true)
                GiveWeaponToPed(AmbushPeds, Config.LowRepPedWeapon, -1, false, true)
                SetPedDropsWeaponsWhenDead(AmbushPeds, false)
                SetPedCombatRange(AmbushPeds, 1)
                SetPedFleeAttributes(AmbushPeds, 0, 0)
                SetBlockingOfNonTemporaryEvents(AmbushPeds, true)
                SetPedSuffersCriticalHits(AmbushPeds, false)
                SetPedCanRagdoll(AmbushPeds, false)
            end
        elseif PlayerData.metadata["methruns"] >= Config.LevelRep then
            for k, v in pairs(LocationData.AmbushSpawn) do
                QBCore.Functions.LoadModel(Config.AmbushPed)
                AmbushPeds = CreatePed(0, Config.AmbushPed, v.x, v.y, v.z, v.w, true, true)
                SetNetworkIdExistsOnAllMachines(NetworkGetNetworkIdFromEntity(AmbushPeds), true)
                SetPedAccuracy(AmbushPeds, Config.HighRepPedAccuracy)
                SetPedArmour(AmbushPeds, Config.HighRepPedArmor)
                SetPedMaxHealth(AmbushPeds, Config.HighRepPedHealth)
                SetPedRelationshipGroupHash(AmbushPeds, `HATES_PLAYER`)
                SetPedKeepTask(AmbushPeds, true)
                SetCanAttackFriendly(AmbushPeds, false, true)
                TaskCombatPed(AmbushPeds, PlayerPedId(), 0, 16)
                SetPedCombatAttributes(AmbushPeds, 46, true)
                SetPedCombatAbility(AmbushPeds, 1)
                SetPedCombatAttributes(AmbushPeds, 0, true)
                GiveWeaponToPed(AmbushPeds, Config.HighRepPedWeapon, -1, false, true)
                SetPedDropsWeaponsWhenDead(AmbushPeds, false)
                SetPedCombatRange(AmbushPeds, 1)
                SetPedFleeAttributes(AmbushPeds, 0, 0)
                SetBlockingOfNonTemporaryEvents(AmbushPeds, true)
                SetPedSuffersCriticalHits(AmbushPeds, false)
                SetPedCanRagdoll(AmbushPeds, false)
            end
        end
    end
end)

RegisterNetEvent('kevin-methruns:PoliceTracker', function(coords)
    local transG = 250
    local MethVehicleGpsBlip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(MethVehicleGpsBlip, 161)
    SetBlipColour(MethVehicleGpsBlip, 43)
    SetBlipDisplay(MethVehicleGpsBlip, 8)
    SetBlipAlpha(MethVehicleGpsBlip, transG)
    SetBlipScale(MethVehicleGpsBlip, 1.5)
    SetBlipAsShortRange(MethVehicleGpsBlip, false)
    PulseBlip(MethVehicleGpsBlip)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Suspicious Vehicle')
    EndTextCommandSetBlipName(MethVehicleGpsBlip)
    while transG ~= 0 do
        Wait(14)
        transG = transG - 1
        SetBlipAlpha(MethVehicleGpsBlip, transG)
        if transG == 0 then
            RemoveBlip(MethVehicleGpsBlip)
            return
        end
    end
end)

RegisterNetEvent('kevin-methruns:GetDropOffLocation', function ()
    if Config.Notify == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'TASK NOTIFICATION', 'Wait for a Drop Location', 'fas fa-bars', '#c07ef2', 8500)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "TASK NOTIFICATION", message = 'Wait for a Drop Location', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notify == 'qb' then
        QBCore.Functions.Notify('Wait for a Drop Location', 'primary', 4000)
    end

    CreateThread(function ()
        while not GotMeetLocation do
            MethVehiclePos = GetEntityCoords(MethVehicle)
            TriggerServerEvent('kevin-methruns:PoliceTracker',MethVehiclePos)
            Wait(4000)
        end
    end)

    Wait(Config.LocationTimer * 60000)
    GotMeetLocation = true
    if Config.Notify == 'phone' then
        if Config.Phone == 'qb' then
            TriggerEvent('qb-phone:client:CustomNotification', 'TASK NOTIFICATION', 'Deliver the goods and vehicle', 'fas fa-bars', '#c07ef2', 8500)
        elseif Config.Phone == 'gks' then
            TriggerEvent('gksphone:notifi', {title = "TASK NOTIFICATION", message = 'Deliver the goods and vehicle', img= '/html/static/img/icons/messages.png'})
        end
    elseif Config.Notify == 'qb' then
        QBCore.Functions.Notify('Deliver the goods and vehicle', 'primary', 4000)
    end
    DropLocation = Config.DropLocations[math.random(#Config.DropLocations)]
    DropLocationBlip = AddBlipForCoord(DropLocation)
    SetBlipSprite(DropLocationBlip, 1)
    SetBlipColour(DropLocationBlip, 0)
    SetBlipScale(DropLocationBlip, 0.75)
    SetBlipRoute(DropLocationBlip, true)
    SetBlipRouteColour(DropLocationBlip, 43)

    exports["ps-zones"]:CreateCircleZone("Meth-DropOffZone", DropLocation, 150.0, {
        debugPoly = false,
        minZ = DropLocation.z - 1,
        maxZ = DropLocation.z + 1,
    })
end)

RegisterNetEvent('kevin-methruns:DropOffItems', function()
    QBCore.Functions.TriggerCallback('kevin-methruns:server:hasItems', function(Items)
        if Items then
            DeliveredItems = DeliveredItems +1
            if DeliveredItems == CollectedItems then
                CanCollect = true
                if Config.Notify == 'phone' then
                    if Config.Phone == 'qb' then
                        TriggerEvent('qb-phone:client:CustomNotification', 'TASK NOTIFICATION', 'Return to the boss for payment', 'fas fa-bars', '#c07ef2', 8500)
                    elseif Config.Phone == 'gks' then
                        TriggerEvent('gksphone:notifi', {title = "TASK NOTIFICATION", message = 'Return to the boss for payment', img= '/html/static/img/icons/messages.png'})
                    end
                elseif Config.Notify == 'qb' then
                    QBCore.Functions.Notify('Return to the boss for payment', 'primary', 4000)
                end
                FreezeEntityPosition(DropOffPed, false)
                FreezeEntityPosition(MethVehicle, false)
                TaskEnterVehicle(DropOffPed, MethVehicle, -1, -1, 1.0, 1, 0)
                SetPedAsNoLongerNeeded(DropOffPed)
                Wait(18000)
                DeleteEntity(MethVehicle)
                DeleteEntity(DropOffPed)

                MethVehicle = nil
                LocationData = nil
                MethCarLocation = vector3(0.0, 0.0, 0.0)
                SupplerLocation = vector3(0.0, 0.0, 0.0)
                DropLocation = vector3(0.0, 0.0, 0.0)
                Supplier = nil
                Goodies = false
                ValidPackages = false
                GotTimer = false
                GotPackages = false
                GotMeetLocation = false
                AmbushPeds = nil
                CollectedItems = 0
                DeliveredItems = 0
                PedSpawned = false
                CanDropOff = false
            end
        else
            QBCore.Functions.Notify('You do not have the right items here..', 'error', 5000)
        end
    end)
end)

CreateThread(function()
    while true do
        if GotCase then
            if exports['qb-inventory']:HasItem(Config.Caseitem) then
                if not caseprop then
                    caseprop = true
                    TriggerEvent('animations:client:EmoteCommandStart', {"suitcase2"})
                end
            elseif caseprop then
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                caseprop = false
            end
        end
        Wait(1000)
    end
end)

RegisterNetEvent('kevin-methruns:client:Rewards', function ()
    TriggerServerEvent('kevin-methruns:server:Rewards')
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    GotCase = false
end)

----- ALERTS PORTION
function Alert()
    if Config.Dispatch == 'ps-dispatch' then
        exports['ps-dispatch']:MethRuns()
    elseif Config.Dispatch == 'cd-dispatch' then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {'police'},
            coords = data.coords,
            title = '10-31 - Suspicious Drug Activity',
            message = 'Drug Activity at '..data.street,
            flash = 0,
            unique_id = tostring(math.random(0000000,9999999)),
            blip = {
                sprite = 67,
                scale = 1.5,
                colour = 2,
                flashes = false,
                text = '911 - Suspicious Drug Activity',
                time = (5*60*1000),
                sound = 1,
            }
        })
    end
end
