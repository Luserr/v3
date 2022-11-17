local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('venture_peds:server:PedCheck', function(citizenid, pedname)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    MySQL.Async.fetchAll('SELECT * FROM venture_peds WHERE citizenid = @citizenid AND pedname = @pedname', {
        ['@citizenid'] = citizenid, ['@pedname'] = pedname
    }, function(result)
        if result[1] ~= nil then
            for k,v in pairs(result) do
                playerp = GetPlayerPed(src)
                TriggerClientEvent('venture_peds:client:PedSet', src, playerp, v.pedname)
                print(v.pedname)
                print(playerp)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "You do not own that ped")
        end
    end)
end)

RegisterNetEvent('venture_peds:server:RegisterPed', function(citizenid, pedname)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    print(citizenid, pedname)
    local citi = citizenid
    local model = pedname
    MySQL.Async.insert('INSERT INTO venture_peds (citizenid, pedname) VALUES (@citizenid, @pedname)', {
        ['@citizenid'] = citi, ['@pedname'] = model
    })
end)

QBCore.Commands.Add('registernewped', 'Registers a New Ped to the database', {}, false, function(source, args)
    TriggerClientEvent('venture_peds:client:RegisterMenu', source)
end, 'admin')