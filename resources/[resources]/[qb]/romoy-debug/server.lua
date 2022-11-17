local QBCore = exports['qb-core']:GetCoreObject()

local players = QBCore.Functions.GetPlayer(source)
local playercoords = GetEntityCoords(players)

local animalpeds = {
    'a_c_chop',
    'a_c_raccoon_1',
    'a_c_shepherd',
}

function spawnPeds()
    for i=1, #animalpeds do
        local ped = animalpeds
        Citizen.Wait(3000)
        CreatePed(pedType, ped, servercoords, true, false)
    end
end

exports('SpawnPeds', spawnPeds)