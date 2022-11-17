local QBCore = exports['qb-core']:GetCoreObject()

local currentcrips = 0

RegisterNetEvent('venture:gangs:server:HackingStash', function()
    local Players = QBCore.Functions.GetPlayers()
    if currentcrips >= 6 then
    TriggerClientEvent('venture:gangs:client:Hacking', 6)
    print(currentcrips)
else
    if currentcrips < 6 then
        TriggerClientEvent('venture:gangs:client:Hacking', 5)
        print(currentcrips)
    end
end
end)

Citizen.CreateThread(function()
    local Players = QBCore.Functions.GetPlayers()
    for i=1, #Players, 1 do
        local xPlayers = QBCore.Functions.GetPlayer(Players[i])
        if xPlayers.PlayerData.gang.name == 'crip' then
            currentcrips = currentcrips + 1
        end
    end
end)