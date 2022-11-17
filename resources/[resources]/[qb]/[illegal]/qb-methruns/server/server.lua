local QBCore = exports['qb-core']:GetCoreObject()

local CoolDown = false

RegisterServerEvent('kevin-methruns:server:coolout', function()
    CoolDown = true
    local timer = Config.CoolDown * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CoolDown = false
        end
    end
end)

QBCore.Functions.CreateCallback("kevin-methruns:server:coolc",function(source, cb)
    if CoolDown then
        cb(true)
    else
        cb(false)
    end
end)

function GetStartItems()
	local items = {}
	local result = MySQL.Sync.fetchScalar('SELECT items FROM stashitems WHERE stash = ?', {'Handoff'})
	if result then
		local stashItems = json.decode(result)
		if stashItems then
			for k, item in pairs(stashItems) do
				local itemInfo = QBCore.Shared.Items[item.name:lower()]
				if itemInfo then
					items[item.slot] = {
						name = itemInfo["name"],
						amount = tonumber(item.amount),
						info = item.info or "",
						label = itemInfo["label"],
						description = itemInfo["description"] or "",
						weight = itemInfo["weight"],
						type = itemInfo["type"],
						unique = itemInfo["unique"],
						useable = itemInfo["useable"],
						image = itemInfo["image"],
						slot = item.slot,
					}
				end
			end
		end
	end
	return items
end

RegisterNetEvent('kevin-methruns:server:verifyitems', function ()
    local PlayerId = source
	if Config.UseItemsStacked then
		for k, v in pairs(GetStartItems()) do
			if v.name == Config.StartItem then
				if v.amount == Config.RequiredAmount then
					TriggerClientEvent('kevin-methruns:client:verifypackages', PlayerId)
					MySQL.Sync.fetchAll("UPDATE stashitems SET items = '[]' WHERE stash = ?", { 'Handoff' })
				end
			end
		end
	else
		for k, v in pairs(GetStartItems()) do
			if v.name == Config.StartItem then
				if k == Config.RequiredAmount then
					TriggerClientEvent('kevin-methruns:client:verifypackages', PlayerId)
					MySQL.Sync.fetchAll("UPDATE stashitems SET items = '[]' WHERE stash = ?", { 'Handoff' })
				end
			end
		end
	end

end)

RegisterNetEvent('kevin-methruns:server:giveproducts', function ()
    local PlayerId = source
	local Player = QBCore.Functions.GetPlayer(PlayerId)

	if Player.PlayerData.metadata['methruns'] <= Config.LevelRep then
		Player.Functions.AddItem(Config.LowRepItem, 1, false)
		TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items[Config.LowRepItem], "add")
	elseif Player.PlayerData.metadata['methruns'] >= Config.LevelRep then
        Player.Functions.AddItem(Config.HighRepItem, 1, false)
		TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items[Config.HighRepItem], "add")
	end
end)

QBCore.Functions.CreateCallback('kevin-methruns:server:hasItems', function(source, cb)
    local PlayerId = source
    local Player = QBCore.Functions.GetPlayer(PlayerId)

	if Player.PlayerData.metadata['methruns'] <= Config.LevelRep then
		local hasItems = Player.Functions.GetItemByName(Config.LowRepItem)
		if hasItems then
			Player.Functions.RemoveItem(Config.LowRepItem, 1, false)
			TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items[Config.LowRepItem], "remove")
			cb(true)
		else
			cb(false)
		end
	elseif Player.PlayerData.metadata['methruns'] >= Config.LevelRep then
		local hasItems = Player.Functions.GetItemByName(Config.HighRepItem)
		if hasItems then
			Player.Functions.RemoveItem(Config.HighRepItem, 1, false)
			TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items[Config.HighRepItem], "remove")
			cb(true)
		else
			cb(false)
		end
	end
end)

RegisterNetEvent('kevin-methruns:server:Rewards', function()
    local PlayerId = source
    local Player = QBCore.Functions.GetPlayer(PlayerId)
    local randomRep = math.random(Config.MinRep, Config.MaxRep)
    local uprep = Player.PlayerData.metadata['methruns'] + randomRep
    Player.Functions.SetMetaData("methruns", uprep)
	if Player.PlayerData.metadata['methruns'] <= Config.LevelRep then
		local Pay = math.random(Config.MinMethPayoutLowRep, Config.MaxMethPayoutLowRep)
		Player.Functions.AddMoney('cash', Pay, 'Methrun Payment')
	elseif Player.PlayerData.metadata['methruns'] >= Config.LevelRep then
		local Pay = math.random(Config.MinMethPayoutHighRep, Config.MaxMethPayoutHighRep)
		Player.Functions.AddMoney('cash', Pay, 'Methrun Payment')
	end
	Player.Functions.RemoveItem('methcase', 1, false)
	TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items['methcase'], "remove")

end)

RegisterNetEvent('kevin-methruns:server:GetRep', function ()
	local PlayerId = source
    local Player = QBCore.Functions.GetPlayer(PlayerId)
	local rep = Player.PlayerData.metadata['drugsrep']
	TriggerClientEvent('QBCore:Notify', PlayerId, 'Current Reputation: '..rep, 'primary', 5000)
end)

RegisterNetEvent('kevin-methruns:server:getCase', function ()
	local PlayerId = source
	local Player = QBCore.Functions.GetPlayer(PlayerId)
	Player.Functions.AddItem('methcase', 1, false)
	TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items['methcase'], "add")
end)

QBCore.Functions.CreateUseableItem("methcase", function(source)
	TriggerClientEvent('kevin-methruns:client:Rewards', source)
end)

RegisterNetEvent('kevin-methruns:PoliceTracker', function (coords)
    local players = QBCore.Functions.GetQBPlayers()
    for _, v in pairs(players) do
        if v and v.PlayerData.job.name == Config.PoliceJobName then
            TriggerClientEvent('kevin-methruns:PoliceTracker', v.PlayerData.source, coords)
        end
    end
end)