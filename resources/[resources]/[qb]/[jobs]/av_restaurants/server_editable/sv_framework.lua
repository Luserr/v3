if Config.Framework == 'QBCore' then
    QBCore.Commands.Add(Config.Command, "AV Restaurants", {}, false, function(source, args)
        TriggerClientEvent('av_restaurant:adminMenu',source)
    end, Config.AdminLevel)
elseif Config.Framework == 'ESX' then
    if Config.UsingOldESX then 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
    end
	ESX.RegisterCommand(Config.Command, 'admin', function(xPlayer, args, showError)
		TriggerClientEvent('av_restaurant:adminMenu',xPlayer.source)
	end, true, {help = "AV Restaurants"})
    ESX.RegisterServerCallback('av_restaurant:GetESXJobs', function(source,cb)
        local jobs = ESX.GetJobs()
        cb(jobs)
    end)
end

function GetJob(source)
    if Config.Framework == 'QBCore' then
        local Player = QBCore.Functions.GetPlayer(source)
        return Player.PlayerData.job.name
    elseif Config.Framework == 'ESX' then
		local xPlayer = ESX.GetPlayerFromId(source)
		return xPlayer.job.name
    end
    return false
end

function isBoss(source)
    if Config.Framework == 'QBCore' then
        local Player = QBCore.Functions.GetPlayer(source)
        return Player.PlayerData.job.isboss
    elseif Config.Framework == 'ESX' then
		local xPlayer = ESX.GetPlayerFromId(source)
		return (xPlayer.job.grade_name == "boss")
    end
    return false
end

function AddMoney(source,type,amount)
    if Config.Framework == 'QBCore' then
        local Player = QBCore.Functions.GetPlayer(source)
        return Player.Functions.AddMoney(type,amount)
    elseif Config.Framework == 'ESX' then
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.addAccountMoney(type, amount)
		return true
    end
    return false
end

function RemoveMoney(source,type,amount)
    if Config.Framework == 'QBCore' then
        local Player = QBCore.Functions.GetPlayer(source)
        return Player.Functions.RemoveMoney(type,amount)
    elseif Config.Framework == 'ESX' then
		local xPlayer = ESX.GetPlayerFromId(source)
        if type == 'cash' then
            xPlayer.removeMoney(amount)
        else
		    xPlayer.removeAccountMoney(type, amount)
        end
		return true
    end
    return false
end

function AddItem(source,name,amount,type)
    local src = source
    if Config.Framework == 'QBCore' then
        local Player = QBCore.Functions.GetPlayer(src)
        local info = {}
        info.type = type
        if Player.Functions.AddItem(name,amount,false,info) then
            TriggerClientEvent('inventory:client:ItemBox',Player.PlayerData.source, QBCore.Shared.Items[name], 'add', amount)
        end
    elseif Config.Framework == 'ESX' then
		local xPlayer = ESX.GetPlayerFromId(src)
		if Config.ESXInventory == 'default' then
		    xPlayer.addInventoryItem(name, amount)
        elseif Config.ESXInventory == 'ox_inventory' then
            if exports.ox_inventory:CanCarryItem(src, name, amount) then
                exports.ox_inventory:AddItem(src, name, amount)
            end
		elseif Config.ESXInventory == 'mf-inventory' then
            xPlayer.addInventoryItem(name,amount,100)
        elseif Config.ESXInventory == 'qs-inventory' then
            xPlayer.addInventoryItem(name, amount)
        end
		return true
    end
    return false
end

function RegisterItem(name,type)
    if Config.Framework == 'QBCore' then
        QBCore = exports['qb-core']:GetCoreObject()
        if type ~= "others" then
            QBCore.Functions.CreateUseableItem(name, function(source, item)
                local Player = QBCore.Functions.GetPlayer(source)
                if Player.Functions.RemoveItem(item.name,1) then
                    TriggerClientEvent('av_restaurant:useItem',source,item['info']['type'])
                end
            end)
        end
    elseif Config.Framework == 'ESX' then
        if Config.UsingOldESX then TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) end
		if type ~= "others" then
			ESX.RegisterUsableItem(name, function(source)
				local xPlayer = ESX.GetPlayerFromId(source)
                xPlayer.removeInventoryItem(name, 1)
                TriggerClientEvent('av_restaurant:useItem',source,ESXItems[name]['type'])
			end)
		end
    end
end

function RegisterStash(name, job, type)
    -- Here you can register your stash using inventory events/exports
    if Config.Framework == 'ESX' then
        if type == 'stash' then
            if Config.ESXInventory == 'ox_inventory' then
                exports.ox_inventory:RegisterStash(name, name, Config.StashSlots, Config.StashWeight)
            elseif Config.ESXInventory == 'mf-inventory' then
				exports["mf-inventory"]:createInventory(name, "inventory", "item", "item_inv", Config.StashWeight, Config.StashSlots, {})
			end
        else
            if Config.ESXInventory == 'ox_inventory' then
                exports.ox_inventory:RegisterStash(name, name, Config.TraySlots, Config.TrayWeight)
            elseif Config.ESXInventory == 'mf-inventory' then
				exports["mf-inventory"]:createInventory(name, "inventory", "item", "item_inv", Config.TrayWeight, Config.TraySlots, {})
			end
        end
    end
end

function UpdateSociety(society,amount)
    MySQL.Async.insert('INSERT INTO av_society (job, amount) VALUES (:society, :amount) ON DUPLICATE KEY UPDATE amount = (amount + :amount)', {
        ['society'] = society,
        ['amount'] = amount
    })
end

function VerifyItem(name)
    if Config.Framework == 'QBCore' then
        return QBCore.Shared.Items[name]
    elseif Config.Framework == 'ESX' then
        return ESX.Items[name]
    end
end