local QBCore = exports['qb-core']:GetCoreObject()

local test = '' --Debugging purposes

RegisterNetEvent('romoy:server:BloodCheck', function(blood)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    dataCheck(blood)
end)    

function dataCheck(blood)
    local Player = QBCore.Functions.GetPlayer(source)
    local data = {}
    MySQL.Async.fetchAll('SELECT * FROM players WHERE bloodnumber = @bloodnumber', {
        ['@bloodnumber'] = blood
    }, function(result)
        if result[1] ~= nil then
            for k,v in pairs(result) do
                info = json.decode(v.charinfo)
                end
            end
            fullname = info.firstname..' '..info.lastname
            info = {
                data = fullname
            }
            print(fullname)
            Player.Functions.AddItem(Shared.LabTestItem, 1, false, info)
        end)
end

--[[RegisterNetEvent('romoy:server:databaseCheck', function(name)
    local result = MySQL.Async.fetchAll('SELECT * FROM players WHERE name = @name', { ['@name'] = name})
    local info = json.decode(result)
    print(info)
end)]]--
