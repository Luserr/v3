local QBCore = exports[Shared.Framework]:GetCoreObject()

local peds = Shared.Peds

local ranks = Shared.AllowedRanks

local allowed = Shared.AllowedRanks

local coords = Shared.Coords

RegisterCommand('clientcoords', function()
    local ped = PlayerPedId()
    local pedcoords = GetEntityCoords(ped)
    print(pedcoords)
end)

RegisterNetEvent('romoy:pedSpawn', function()
    while true do
    local tcoords = GetEntityCoords(PlayerPedId())
    local PlayerData = QBCore.Functions.GetPlayerData()
    local plocation = PlayerData.position
    local chosenped = peds[math.random(#peds)]
    local chosencoords = coords[math.random(#coords)]
    Citizen.Wait(1700)
    RequestModel(chosenped)
    while not HasModelLoaded(chosenped) do
        Citizen.Wait(1000)
    end
    local sped = CreatePed(1, chosenped, chosencoords.x, chosencoords.y, chosencoords.z, true, false)
    TaskCombatPed(sped, PlayerPedId(), 0, 16)
    SetPedAsEnemy(PlayerPedId(), true)
    GiveWeaponToPed(sped, GetHashKey('weapon_assaultrifle'), 250, false, true)
    SetPedAccuracy(sped, 75)
    end
end)

RegisterCommand(Shared.CommandName, function(source, args, reason)
    TriggerEvent('chat:addSuggestion', Shared.CommandName, 'help text', {
        { name="message", help="Message the players see when kicked" },
    })
    QBCore.Functions.TriggerCallback('qb-admin/server/get-permission', function(result)
        if result ~= 'god' then
            QBCore.Functions.Notify('You lack the permission required', 'error')
        else
            if result == 'god' then
                --[[RequestModel(peds)
                while not HasModelLoaded(peds) do
                    Citizen.Wait(1000)
                end]]--
                TriggerEvent('romoy:ServerRestart')
            end
        end
        reason = args[1]
        print(reason)
    end)
end)        

RegisterNetEvent('romoy:ServerRestart', function(source, reason, message)
    local restart = false
    TriggerServerEvent('qb-admin/server/chat-say', 'Restarting in 10 Minutes')
    SetWeatherTypeNow('BLIZZARD')
    TriggerServerEvent('qb-weathersync:server:RequestStateSync')
    TriggerEvent('romoy:pedSpawn')
    --TriggerServerEvent('romoy:restart:server:PedSpawn')
    Citizen.Wait(300000)
    TriggerServerEvent('qb-admin/server/chat-say', 'Restarting in 5 Minutes')
    --TriggerServerEvent('romoy:restart:server:PedSpawn')
    TriggerEvent('romoy:pedSpawn')
    Citizen.Wait(300000)
    TriggerServerEvent('qb-admin/server/chat-say', 'Restarting Now')
    TriggerEvent('romoy:pedSpawn')
   -- TriggerServerEvent('romoy:restart:server:PedSpawn')
end)

--[[RegisterCommand('restart', function(source, args)
    QBCore.Functions.TriggerCallback('qb-admin/server/get-permission', function(result)
        if result == 'god' then
        test = args[1]
        print(test)
        TriggerEvent('romoy:ServerRestart')   
        else 
            if result ~= 'god' then
                QBCore.Functions.Notify('You lack the permission to use this', 'error')
            end
        end
    end)
end)]]-- 

RegisterCommand('testevent', function()
    TriggerEvent('romoy:pedSpawn')
    print('Yes')
end)