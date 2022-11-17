if Config.Framework == 'QBCore' then
    QBCore = exports['qb-core']:GetCoreObject()
end

function EatDrink(type)
    if type == 'food' then
        if Config.Framework == 'QBCore' then
            TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + Config.EatValue)
        elseif Config.Framework == 'ESX' then
            TriggerEvent('esx_status:add','hunger',Config.EatValue)
        end
    elseif type == 'drink' then
        if Config.Framework == 'QBCore' then
            TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Config.DrinkValue)
        elseif Config.Framework == 'ESX' then
            TriggerEvent('esx_status:add','thirst',Config.DrinkValue)
        end
    elseif type == 'joint' then
        TriggerServerEvent("QBCore:Server:SetMetaData", "stress", QBCore.Functions.GetPlayerData().metadata["stress"] - Config.JointValue)
        -- ESX Status doesn't have any stress event (?)
    end
end

function ServerCallback(cbName, cb, data)
    if Config.Framework == 'QBCore' then
        QBCore.Functions.TriggerCallback(cbName, function(data)
            if cb then cb(data) else return data end
        end, data)
    elseif Config.Framework == 'ESX' then
        ESX.TriggerServerCallback(cbName, function(data)
            if cb then cb(data) else return data end
        end, data)
    end
end

RegisterNetEvent('av_restaurant:notification')
AddEventHandler('av_restaurant:notification', function(msg)
    -- Your notification event goes here
    SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0, 1)
end)