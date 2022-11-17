local QBCore = exports['qb-core']:GetCoreObject()

--Consumables
CreateThread(function()
	local cocktails = { "amarettosour", "bellini", "bloodymary", "cosmopolitan", "longisland", "margarita", "pinacolada", "sangria", "screwdriver", "strawdaquiri", "strawmargarita", "midori", "prosecco", "tequila", "triplesec" }
    for k,v in pairs(cocktails) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('nc-vanillaunicorn:client:DrinkAlcohol', source, item.name) end) end
	
	local beers = { "ambeer", "dusche", "logger", "pisswasser", "pisswasser2", "pisswasser3" }
    for k,v in pairs(beers) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('nc-vanillaunicorn:client:DrinkAlcohol', source, item.name) end) end
	
	local drinks = { "sprunk", "sprunklight", "ecola", "ecolalight", "cranberry" }
    for k,v in pairs(drinks) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('nc-vanillaunicorn:client:Drink', source, item.name) end) end
	
	local food = { "chocolate", "vusliders", "vutacos", "nplate", "tots", "nachos" }
    for k,v in pairs(food) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('nc-vanillaunicorn:client:Eat', source, item.name) end) end
end)

RegisterServerEvent('nc-vanillaunicorn:GetFood')
AddEventHandler('nc-vanillaunicorn:GetFood', function(ItemMake, craftable)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	--This grabs the table from client and removes the item requirements
	if craftable ~= nil then
		for i = 1, #craftable do
			for k, v in pairs(craftable[i]) do
				if ItemMake == k then
					for l, b in pairs(craftable[i][k]) do
						TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[tostring(l)], "remove", b) 
						Player.Functions.RemoveItem(tostring(l), b)
					end
				end
			end
		end	
	end
	--This should give the item, while the rest removes the requirements
	Player.Functions.AddItem(ItemMake, 1, false, {["quality"] = nil})
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ItemMake], "add", 1) 
end)

RegisterNetEvent('qb-vanillaunicorn:bill:player', function(info)
    local Player = QBCore.Functions.GetPlayer(source)
    local Player2 = QBCore.Functions.GetPlayer(tonumber(info.citizenid))
    local type = info.billtype
    local pos = GetEntityCoords(GetPlayerPed(source))
    local pos2 = GetEntityCoords(GetPlayerPed(tonumber(info.citizenid)))
    local dist = #(pos - pos2)
    if Player.PlayerData.job.name == 'vanilla' then
        if Player.PlayerData.job.onduty then
            if type == 'bank' then
                if dist < 5 then
                    local Amount = tonumber(info.billprice)
                    local playeramount = Amount * 0.2
                    local bossamount = Amount - playeramount
                    Player2.Functions.RemoveMoney('bank', Amount, 'Vanilla Unicorn debit card charged')
                    -- Send money to sender job--
                    Player.Functions.AddMoney('bank', playeramount, 'Vanilla Unicorn debit card charged')
                    exports['Renewed-Banking']:addAccountMoney(Player.PlayerData.job.name, bossamount, "Vanilla Unicorn")
                    -----
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You have been charged $ ' ..Amount..' From your debit card', 'error')
                    TriggerClientEvent('QBCore:Notify', source, 'You charged the person $ ' ..Amount..' From their debit card', 'success')
                else
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are too far away! ', 'error')
                end
            else
                if dist < 5 then
                    local Amount = tonumber(info.billprice)
                    local playeramount = Amount * 0.4
                    local bossamount = Amount - playeramount
                    Player2.Functions.RemoveMoney('cash', Amount, 'Burgershot receipt')
                    -- Send money to sender job--
                    Player.Functions.AddMoney('cash', playeramount, 'Burgershot receipt')
                    exports['Renewed-Banking']:addAccountMoney(Player.PlayerData.job.name, bossamount, "Vanilla Unicorn")
                    -----
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You have been charged $ ' ..Amount, 'error')
                    TriggerClientEvent('QBCore:Notify', source, 'You charged the person $ ' ..Amount, 'success')
                else
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are too far away! ', 'error')
                end
            end
        else
            TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are not on Duty! ', 'error')
        end
    end
end)

---ITEM REQUIREMENT CHECKS
QBCore.Functions.CreateCallback('nc-vanillaunicorn:get', function(source, cb, item, craftable)
local hasitem = false
local hasanyitem = nil
for i = 1, #craftable do
	for k, v in pairs(craftable[i]) do
		if k == item then
			for l, b in pairs(craftable[i][k]) do
				if QBCore.Functions.GetPlayer(source).Functions.GetItemByName(l) and QBCore.Functions.GetPlayer(source).Functions.GetItemByName(l).amount >= b then hasitem = true
				else hasanyitem = false
				end
			end
		end
	end
end
if hasanyitem ~= nil then hasitem = false end
if hasitem then cb(true) else cb(false) end end)

