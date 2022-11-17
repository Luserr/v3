local QBCore = exports['qb-core']:GetCoreObject()

local peds = Shared.Peds

RegisterNetEvent('romoy:restart:server:PedSpawn', function()
    while true do
        local src = source
        local player = GetPlayerPed(src)
        local playercoords = GetEntityCoords(player)
        local chosenped = peds[math.random(#peds)]
        Citizen.Wait(2700)
        local ped = CreatePed(1, chosenped, playercoords.x, playercoords.y, playercoords.z, true, false)
        TaskCombatPed(ped, player, 0, 16)
        GiveWeaponToPed(ped, GetHashKey('weapon_assaultrifle'), 250, false, true)
        SetPedAccuracy(ped, 75)
    end
end)

RegisterCommand('testserverside', function()
    TriggerEvent('romoy:restart:server:PedSpawn')
end)

local function ShowCoordinates()
    local player = source
    local ped = GetPlayerPed(player)
    local playerCoords = GetEntityCoords(ped)

    print(playerCoords) -- vector3(...)
end

RegisterNetEvent("myCoordinates")
AddEventHandler("myCoordinates", ShowCoordinates)

RegisterCommand('coordstest', function()
    TriggerEvent('myCoordinates')
end)