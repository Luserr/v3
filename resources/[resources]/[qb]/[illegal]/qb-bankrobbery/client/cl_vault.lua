local QBCore = exports['qb-core']:GetCoreObject()

local PacificZone = PolyZone:Create({vector2(227.14488220215, 213.12579345703), vector2(266.51919555664, 199.21022033691), vector2(287.84991455078, 261.22985839844), vector2(250.8860168457, 275.25485229492)}, {
    name = "pacificbank",
    minZ = 100.00,
    maxZ = 105.50
})

local Laser1 = Laser.new(vector3(259.906, 229.711, 103.772), {vector3(255.549, 234.133, 100.683), vector3(257.374, 231.657, 100.683), vector3(253.942, 230.824, 100.683)}, {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "lowervault1"})
local Laser2 = Laser.new(vector3(247.704, 233.616, 104.165), {vector3(256.850, 230.513, 100.683), vector3(256.461, 234.034, 101.463), vector3(251.250, 240.455, 100.683), vector3(252.001, 236.034, 100.683)}, {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "lowervault2"})
local Laser3 = Laser.new(vector3(251.619, 241.131, 104.699), {vector3(249.331, 231.798, 101.505), vector3(254.754, 233.652, 100.683), vector3(258.954, 236.069, 100.683), vector3(251.435, 235.654, 100.683)}, {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "lowervault3"})
local Laser4 = Laser.new(vector3(262.562, 237.010, 104.528), {vector3(247.755, 233.758, 101.268), vector3(249.672, 239.023, 101.412), vector3(253.880, 237.109, 100.683)}, {travelTimeBetweenTargets = {1.0, 1.0}, waitTimeAtTargets = {0.0, 0.0}, randomTargetSelection = true, name = "lowervault4"})

--- Sets the vault to lockdown state when hit by laser
local HitByLaser = function()
    if Config.Banks['Vault'].lockdown then return end
    TriggerServerEvent('qb-bankrobbery:server:HitByLaser')
    QBCore.Functions.Notify("You see a laser hitting you..", "error", 1000)
end

--- Stops all laser movement
local StopLasers = function()
    print('Stop Lasers')
    Laser1.setActive(false)
    Laser1.setMoving(false)
    Laser2.setActive(false)
    Laser2.setMoving(false)
    Laser3.setActive(false)
    Laser3.setMoving(false)
    Laser4.setActive(false)
    Laser4.setMoving(false)
end

--- Starts all laser movement
local StartLasers = function()
    if Config.Banks['Vault'].powerplantHit then return end
    print('Start Lasers')
    Laser1.setActive(true)
    Laser1.setMoving(true)
    Laser2.setActive(true)
    Laser2.setMoving(true)
    Laser3.setActive(true)
    Laser3.setMoving(true)
    Laser4.setActive(true)
    Laser4.setMoving(true)

    Laser1.onPlayerHit(function(playerBeingHit, hitPos) if playerBeingHit then HitByLaser() end end)
    Laser2.onPlayerHit(function(playerBeingHit, hitPos) if playerBeingHit then HitByLaser() end end)
    Laser3.onPlayerHit(function(playerBeingHit, hitPos) if playerBeingHit then HitByLaser() end end)
    Laser4.onPlayerHit(function(playerBeingHit, hitPos) if playerBeingHit then HitByLaser() end end)
end

PacificZone:onPlayerInOut(function(isPointInside)
    if isPointInside then
        if Config.Banks['Vault'].lasersActive and not Config.Banks['Vault'].powerplantHit then
            StartLasers()
        end
    else
        StopLasers()
    end
end)

--- Spawns new cash or gold piles and removes existing ones
local StackProps = function()
    RequestModel('h4_prop_h4_cash_stack_01a')
    RequestModel('h4_prop_h4_gold_stack_01a')
    while not HasModelLoaded('h4_prop_h4_cash_stack_01a') or not HasModelLoaded('h4_prop_h4_gold_stack_01a') do Wait(10) end
    for k, v in pairs(Config.Banks['Vault'].stacks) do
        -- REMOVE EXISTING STACKS FIRST
        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 2.0, v.model, false, false, false)
        if object ~= 0 then
            local netId = NetworkGetNetworkIdFromEntity(object)
            TriggerServerEvent('qb-bankrobbery:server:DeleteObject', netId)
            Wait(500)
        end
        -- CREATE NEW
        local Stack = CreateObject(v.model, v.coords.xyz, 1, 0, 0)
        SetEntityHeading(Stack, v.coords.w)
    end
end

--- Performs the animation of looting a stack for a given index number, deletes current one
--- @param index number - Index number of stack in the lower vault
LootStack = function(index) -- Globally used
    -- Set Taken
    TriggerServerEvent('qb-bankrobbery:server:SetStackTaken', index, true)
    -- Animation
    LocalPlayer.state:set("inv_busy", true, true)
    if Config.Banks['Vault'].stacks[index].model == `h4_prop_h4_cash_stack_01a` then
        -- CASH
        local ped = PlayerPedId()
        local coords, rotation = GetEntityCoords(ped), GetEntityRotation(ped)
        local animDict = 'anim@scripted@heist@ig1_table_grab@cash@male@'
        loadAnimDict(animDict)
        RequestModel('hei_p_m_bag_var22_arm_s')
        while not HasModelLoaded("hei_p_m_bag_var22_arm_s") do Wait(10) end
        local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, coords, 1, 1, 0)
        local sceneObject = GetClosestObjectOfType(coords, 3.0, `h4_prop_h4_cash_stack_01a`, 0, 0, 0)
        local scenePos = GetEntityCoords(sceneObject)
        local sceneRot = GetEntityRotation(sceneObject)

        local netScene = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene, animDict, 'enter', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene, animDict, 'enter_bag', 1.0, -1.0, 1148846080)

        local netScene2 = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, 'grab', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene2, animDict, 'grab_bag', 1.0, -1.0, 1148846080)
        NetworkAddEntityToSynchronisedScene(sceneObject, netScene2, animDict, 'grab_cash', 1.0, -1.0, 1148846080)

        local netScene3 = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene3, animDict, 'grab_idle', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene3, animDict, 'grab_idle_bag', 1.0, -1.0, 1148846080)

        local netScene4 = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene4, animDict, 'exit', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene4, animDict, 'exit_bag', 1.0, -1.0, 1148846080)

        NetworkStartSynchronisedScene(netScene)
        Wait(GetAnimDuration(animDict, 'enter') * 1000)
        NetworkStartSynchronisedScene(netScene2)
        Wait(GetAnimDuration(animDict, 'grab') * 1000 - 3000)

        DeleteObject(sceneObject)
        while DoesEntityExist(sceneObject) do
            Wait(10)
            DeleteObject(sceneObject)
        end

        NetworkStartSynchronisedScene(netScene4)
        Wait(GetAnimDuration(animDict, 'exit') * 1000)
        DeleteObject(bag)
        ClearPedTasks(ped)
        -- Reward
        TriggerServerEvent('qb-bankrobbery:server:StackReward', 'money')
        TriggerServerEvent('qb-bankrobbery:server:StackReward', 'gne')
    elseif Config.Banks['Vault'].stacks[index].model == `h4_prop_h4_gold_stack_01a` then
        -- GOLD
        local ped = PlayerPedId()
        local coords, rotation = GetEntityCoords(ped), GetEntityRotation(ped)
        local animDict = 'anim@scripted@heist@ig1_table_grab@gold@male@'
        loadAnimDict(animDict)
        
        RequestModel('hei_p_m_bag_var22_arm_s')
        while not HasModelLoaded("hei_p_m_bag_var22_arm_s") do Wait(10) end
        local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, coords, 1, 1, 0)
        local sceneObject = GetClosestObjectOfType(coords, 3.0, `h4_prop_h4_gold_stack_01a`, 0, 0, 0)
        local scenePos = GetEntityCoords(sceneObject)
        local sceneRot = GetEntityRotation(sceneObject)

        local netScene = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene, animDict, 'enter', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene, animDict, 'enter_bag', 1.0, -1.0, 1148846080)

        local netScene2 = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, 'grab', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene2, animDict, 'grab_bag', 1.0, -1.0, 1148846080)
        NetworkAddEntityToSynchronisedScene(sceneObject, netScene2, animDict, 'grab_gold', 1.0, -1.0, 1148846080)

        local netScene3 = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene3, animDict, 'grab_idle', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene3, animDict, 'grab_idle_bag', 1.0, -1.0, 1148846080)

        local netScene4 = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, netScene4, animDict, 'exit', 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, netScene4, animDict, 'exit_bag', 1.0, -1.0, 1148846080)

        NetworkStartSynchronisedScene(netScene)
        Wait(GetAnimDuration(animDict, 'enter')*1000)
        NetworkStartSynchronisedScene(netScene2)
        Wait(GetAnimDuration(animDict, 'grab')*1000-3000)
        DeleteObject(sceneObject)
        while DoesEntityExist(sceneObject) do
            Wait(10)
            DeleteObject(sceneObject)
        end
        NetworkStartSynchronisedScene(netScene4)
        Wait(GetAnimDuration(animDict, 'exit')*1000)
        DeleteObject(bag)
        ClearPedTasks(ped)
        -- Reward
        TriggerServerEvent('qb-bankrobbery:server:StackReward', 'gold')
        TriggerServerEvent('qb-bankrobbery:server:StackReward', 'gne')
    end
    LocalPlayer.state:set("inv_busy", false, true)
end

--- Performs the animation of planing an explosive and making an explosion to break open the doors
--- @param index number - Index number of explosion location in the lower vault
local VaultExplosion = function(index)
    LocalPlayer.state:set("inv_busy", true, true)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    -- Remove explosive
    TriggerServerEvent("qb-smallresources:server:RemoveItem", "explosive", 1)
    --QBCore.Functions.RemoveItem('explosive')
    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["explosive"], "remove")
    -- Animation
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    RequestModel("hei_p_m_bag_var22_arm_s")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") or not HasModelLoaded("hei_p_m_bag_var22_arm_s") do Wait(50) end
    SetEntityHeading(ped, Config.Banks['Vault'].explosion[index].w)
    local pos = Config.Banks['Vault'].explosion[index].xyz
    Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local bagscene = NetworkCreateSynchronisedScene(pos.x, pos.y, pos.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), pos.x, pos.y, pos.z,  true,  true, false)
    SetEntityCollision(bag, false, true)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local charge = CreateObject(`prop_bomb_01`, x, y, z + 0.2,  true,  true, true)
    SetEntityCollision(charge, false, true)
    AttachEntityToEntity(charge, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Wait(5000)
    DetachEntity(charge, 1, 1)
    FreezeEntityPosition(charge, true)
    DeleteObject(bag)
    NetworkStopSynchronisedScene(bagscene)
    LocalPlayer.state:set("inv_busy", false, true)
    for i=8, 1, -1 do
        Wait(1000)
        QBCore.Functions.Notify('Blast in '..i, 'error', 800)
    end
    Wait(1000)
    DeleteEntity(charge)
    AddExplosion(Config.Banks['Vault'].explosion[index].xyz, 2, 4.0, true, false, 10.0)
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-bankrobbery:server:GetConfig', function(config)
        Config = config
        if Config.Banks['Vault'].lasersActive and not Config.Banks['Vault'].powerplantHit then
            local coords = GetEntityCoords(PlayerPedId())
            if PacificZone:isPointInside(coords) then
                StartLasers()
            end
        end
    end)
end)

RegisterNetEvent('qb-bankrobbery:client:SetPowerPlant', function(state)
    Config.Banks['Vault'].powerplantHit = state
end)

RegisterNetEvent('qb-bankrobbery:client:SetLasers', function(state)
    Config.Banks['Vault'].lasersActive = state
    if state then
        local coords = GetEntityCoords(PlayerPedId())
        if PacificZone:isPointInside(coords) then
            StartLasers()
        end
    else
        StopLasers()
    end
end)

RegisterNetEvent('qb-bankrobbery:client:VaultLockDown', function()
    Config.Banks['Vault'].lockdown = true
end)

RegisterNetEvent('qb-bankrobbery:client:SetGoldHacked', function()
    Config.Banks['Vault'].goldhacked = true
end)

RegisterNetEvent('qb-bankrobbery:client:SetStackTaken', function(index, state)
    Config.Banks['Vault'].stacks[index].taken = state
end)

RegisterNetEvent('qb-bankrobbery:client:UseGoldLaptop', function()
    if #(GetEntityCoords(PlayerPedId()) - vector3(257.43, 227.81, 101.68)) < 1.0 then
            if exports['qb-inventory']:HasItem("laptop_gold") then
                if not Config.Banks['Pacific'].hacked and not Config.Banks['Vault'].goldhacked then
                    QBCore.Functions.Progressbar("hack_gate", "Connecting the laptop..", math.random(5000, 10000), false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "anim@gangops@facility@servers@",
                        anim = "hotwire",
                        flags = 16,
                    }, {}, {}, function() -- Done
                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                        -- Remove Use
                        TriggerServerEvent('qb-bankrobbery:server:LaptopDamage', 'laptop_gold')
                        LaptopAnimation('Vault')
                    end, function() -- Cancel
                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                        QBCore.Functions.Notify("Canceled..", "error")
                    end)
                else
                    QBCore.Functions.Notify('Security lockdown is active..', 'error', 2500)
                end
            else
                QBCore.Functions.Notify('You are missing some item(s)..', 'error', 2500)
            end
    end
end)

RegisterNetEvent('qb-bankrobbery:client:UseGreyUsb', function()
    if not Config.Banks['Vault'].hacked then
            if exports['qb-inventory']:HasItem("usb_grey") then
                -- HACK ATTEMPT
                TriggerEvent("DimboPassHack:StartHack", 9, function(passed)
                    if passed then
                        CreateTrollys('Vault')
                        StackProps()
                        TriggerServerEvent('qb-bankrobbery:server:SetBankHacked', 'Vault')
                        TriggerServerEvent('qb-bankrobbery:server:PrintCodes')
                    else
                        QBCore.Functions.Notify("You failed..", "error", 2500)
                    end
                end)
                -- REMOVE USE
                TriggerServerEvent('qb-bankrobbery:server:LaptopDamage', 'usb_grey')
            else
                QBCore.Functions.Notify("You are missing something(s)..", "error", 2500)
            end
    else
        QBCore.Functions.Notify("Someone has already hacked this..", "error")
    end
end)

RegisterNetEvent('qb-bankrobbery:client:EnterVaultCode', function()
    if not Config.Banks['Vault'].code then
        local input = exports['qb-input']:ShowInput({
            header = "Enter Code",
            submitText = "Submit",
            inputs = {
                {
                    type = 'number',
                    isRequired = true,
                    name = 'code',
                    text = '****'
                }
            }
        })
        if input then
            if not input.code then 
                return 
            end
            local code = tonumber(input.code)
            if code <= 0 or code >= 10000 then
                QBCore.Functions.Notify('Invalid Input.. (4 digits)', 'error', 2500)
                return
            end
            TriggerServerEvent('qb-bankrobbery:server:AttemptCode', code)
        end
    else
        QBCore.Functions.Notify('Someone already opened this door..', 'error', 2500)
    end
end)

RegisterNetEvent('qb-bankrobbery:client:CorrectCode', function()
    Config.Banks['Vault'].code = true
end)

RegisterNetEvent('explosive:UseExplosive', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId())
    for i=1, #Config.Banks['Vault'].explosion, 1 do
        if #(coords - Config.Banks['Vault'].explosion[i].xyz) < 1.50 then
            VaultExplosion(i)
            break
        end
    end
end)