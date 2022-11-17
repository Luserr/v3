QBCore = exports['qb-core']:GetCoreObject()

function getSocietyMoney()
    return exports['Renewed-Banking']:getAccountMoney('cookies')
end

function addSocietyMoney(money)
	exports['Renewed-Banking']:addAccountMoney("cookies", money, "Cookies")
end

function removeSocietyMoney(money)
	exports['Renewed-Banking']:removeAccountMoney("cookies", money, "Cookies")
end

function CanCarryItem(id, item, amount)
	return true -- There is no way to check can caryy item in latest qb.
end

function GetItemLabel(item)
	return QBCore.Shared.Items[item].label
end

function GetPlayerFromId(id)
	return QBCore.Functions.GetPlayer(id).Functions
end

function getMoney(id)
	local xPlayer = QBCore.Functions.GetPlayer(id)
	return xPlayer.PlayerData.money['cash']
end