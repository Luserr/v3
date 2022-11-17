if Config.Framework == 'QBCore' then
    QBCore = exports['qb-core']:GetCoreObject()
elseif Config.Framework == 'ESX' then

end

CreateThread(function()
    if Config.Framework == 'QBCore' then
        QBCore.Functions.CreateCallback('av_restaurant:getBusiness', function(source, cb, job)
            local society = MySQL.query.await('SELECT amount FROM av_society WHERE job = ?', {job})
            local items = MySQL.query.await('SELECT * FROM av_items WHERE job = ?', {job})
            cb({society = society[1], items = items[1]})
        end)
    elseif Config.Framework == 'ESX' then
		ESX.RegisterServerCallback('av_restaurant:getBusiness', function(source,cb,job)
            local society = MySQL.query.await('SELECT amount FROM av_society WHERE job = ?', {job})
            local items = MySQL.query.await('SELECT * FROM av_items WHERE job = ?', {job})
            cb({society = society[1], items = items[1]})
        end)
	end
end)

RegisterServerEvent('av_restaurant:getItems')
AddEventHandler('av_restaurant:getItems', function(data)
    local src = source
    local job = data['job']
    local type = data['type']
    local items = MySQL.query.await('SELECT * FROM av_items WHERE job = ? AND type = ?', {job,type})
    TriggerClientEvent('av_restaurant:listItems',src,items,job)
end)

RegisterServerEvent('av_restaurant:deleteItem')
AddEventHandler('av_restaurant:deleteItem', function(data)
    local src = source
    local name = data['name']
    if isBoss(src) then
        MySQL.query('DELETE FROM av_items WHERE name = ?', {name}, function(result)
            if result then
                TriggerClientEvent('av_restaurant:notification',src,Lang['item_deleted'])
            end
        end)
    end
end)

RegisterServerEvent('av_restaurant:bossWithdraw')
AddEventHandler('av_restaurant:bossWithdraw', function()
    local src = source
    if isBoss(src) then
        local job = GetJob(src)
        if job then
            local societyMoney = MySQL.query.await('SELECT amount FROM av_society WHERE job = ?',{job})
            if societyMoney[1] and tonumber(societyMoney[1]['amount']) > 0 then
                if AddMoney(src, "bank", tonumber(societyMoney[1]['amount'])) then
                    TriggerClientEvent('av_restaurant:notification',src,Lang['boss_withdrawn']..tonumber(societyMoney[1]['amount']))
                    MySQL.update.await('UPDATE av_society SET amount = 0 WHERE job = ? ', {job})
                    TriggerClientEvent('av_restaurant:boss',src)
                end
            end
        end
    end
end)