local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateUseableItem("lotto", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("lotto:usar", source)
    end
end)


RegisterServerEvent('lotto:win')
AddEventHandler('lotto:win', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local money = math.random(10, 20)
	Player.Functions.AddMoney('cash', Config.Payment * money)
end)
