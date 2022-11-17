local QBCore = exports['qb-core']:GetCoreObject()

local id = nil

AddEventHandler('onResourceStart', function(resourceName)
    TriggerEvent('romoy_headbag:server:IdUpdate')
  end)
  
RegisterNetEvent('romoy_headbag:server:IdUpdate', function()
    MySQL.Async.fetchAll('SELECT * FROM head_bag_heist', {}, function(result)
        if result ~= nil then
        print('Updating')
            for k,v in pairs(result) do
            id = tonumber(v.id)
            end
        else
            print('No Results found')
        end
    end)
end)

RegisterNetEvent('romoy_headbag:server:AvailabilityDecide', function(license, citid, outcome, avail)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    id = id + 1
    MySQL.Async.insert('INSERT INTO head_bag_heist (id, steam, citizenid, rewards, outcome, availability) VALUES (@id, @steam, @citizenid, @rewards, @outcome, @availability)', {
        ['@id'] = id, ['@steam'] = license, ['@citizenid'] = citid, ['@rewards'] = "Boosting Disabler and Headbag", ['@outcome'] = outcome, ['@availability'] = avail
    })
    print(id)
end)    

RegisterNetEvent('romoy_headbag:server:Availability', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local timeout = math.random(12, 45) * 60000
    local minutes = timeout / 60000
    print(timeout, minutes)
    MySQL.Async.fetchAll('SELECT * FROM head_bag_heist', {}, function(result)
        if result ~= nil then
            for k, v in pairs(result) do
                print(v.availability)
                if v.availability == 1 or '1' then
                    print('IT WORKS!')
                    TriggerClientEvent('romoy_headbag:client:AvailabilitySet', src, false)
                    TriggerClientEvent('romoy_headbag:client:TimeOut', src, minutes)
                    Wait(timeout)
                    TriggerClientEvent('romoy_headbag:client:TimeOut', src, 0)
                    MySQL.Async.execute('UPDATE head_bag_heist SET availability = ? WHERE id = ?', {'0', id})
                    TriggerClientEvent('romoy_headbag:client:AvailabilitySet', src, true)
                    return
                else
                    print('It does not work...')
                    return
                end
            end
        end
    end)
end)


QBCore.Functions.CreateUseableItem("headbaglaptop", function(source)
    TriggerClientEvent("romoy_headbag:client:ShowUI", source)
end)