local QBCore = exports['qb-core']:GetCoreObject()

local cooldown = false

RegisterNetEvent('romoy:mrpd:server:GlobalCooldown', function(timer)
    src = source
    local Player = QBCore.Functions.GetPlayer(src)
    CoolDown(timer)
end)

RegisterNetEvent('romoy:mrpd:server:Ready', function()
    print('MRPD Heist Ready')
end)

RegisterNetEvent('romoy:mrpd:server:DataBaseLog', function(cid, name, stage, result)
    MySQL.Async.insert('INSERT INTO mrpdheist (citizenid, steamname, stage, result) VALUES (@citizenid, @steamname, @stage, @result)', {
        ['citizenid'] = cid, ['steamname'] = name, ['stage'] = stage, ['result'] = result
        }, function(result)
    end)            
end)

function CoolDown(time)
    while true do 
    timeremaining = time - 1
    if timeremaining <= 0 then
        return false
    end
    end
end