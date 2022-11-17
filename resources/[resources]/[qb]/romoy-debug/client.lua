QBCore = exports['qb-core']:GetCoreObject()

local dumpsters = {
    [218085040] = true, 
    [666561306] = true, 
    [-58485588] = true
}

local amount = 0 

local allowedRanks = {
    'god',
    'admin',
}

function inTable(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

Citizen.CreateThread(function()
    local objects = GetGamePool('CObject')
    for _, entity in ipairs(objects) do
        local model = GetEntityModel(entity)

        if inTable(dumpsters, model) then
            print(model)
        end
    end
end)

RegisterCommand('entitywipe', function(soucre, args)
    QBCore.Functions.TriggerCallback('qb-admin/server/get-permission', function(result)
        for i=1, #allowedRanks do
            local yesranks = allowedRanks[i]
            if result ~= yesranks then
                amount = 1
            end
            if result == yesranks then
                local vehiclePool = GetGamePool('CVehicle')
                local objectPool = GetGamePool('CObject')
                TriggerServerEvent('qb-admin/server/chat-say', 'You have 10 seconds to find shelter!!')
                Citizen.Wait(10000)
                for i=1, #vehiclePool do
                    if GetPedInVehicleSeat(vehiclePool[i], -1) == 0 then
                        SetEntityAsMissionEntity(vehiclePool[i])
                        DeleteEntity(vehiclePool[i])
                        wipedamount = tonumber(vehiclePool[i])
                    end
                end
                for i=1, #objectPool do
                    SetEntityAsMissionEntity(objectPool[i])
                    DeleteEntity(objectPool[i])
                    objamount = tonumber(objectPool[i])
                end
            end
            local total = objamount + wipedamount
            TriggerServerEvent('qb-admin/server/chat-say', 'Deleted '..total..' entites')
            QBCore.Functions.Notify('Deleted '..objamount.." Objects")
            QBCore.Functions.Notify("Deleted "..amount.." Vehicles without a driver")
        end
    end)
end)

RegisterCommand('dvclobj', function(source, args, radius)
    local radius = args[1]
    local objects = GetGamePool('CObject')
    for i=1, #objects do
        local coords = GetEntityCoords(objects[i])
        local pcoords = GetEntityCoords(PlayerPedId())
        local distance = #(pcoords - coords)
        if distance <= radius then
            SetEntityAsMissionEntity(objects[i])
            local damount = DeleteObject(objects[i])
        end
    end
    print(damount)
end)