-- Variables

local QBCore = exports['qb-core']:GetCoreObject()

-- Functions

local function GlobalTax(value)
	local tax = (value / 100 * Config.GlobalTax)
	return tax
end

-- Server Events

RegisterNetEvent("qb-fuel:server:PayFuel", function (amount, inGasStation, hasWeapon)
	local src = source
	if not src then return end
	local player = QBCore.Functions.GetPlayer(src)
	if not player then return end
	local tax = GlobalTax(amount)
	local total = math.ceil(amount + tax)
	player.Functions.RemoveMoney('cash', total)
end)

QBCore.Functions.CreateCallback('qb-fuel:server:fuelCan', function(source, cb)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local itemData = Player.Functions.GetItemByName("weapon_petrolcan")
    cb(itemData)
end)

QBCore.Functions.CreateCallback('qb-fuel:server:fuelCanPurchase', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cashBalance = Player.PlayerData.money.cash
	if not Player then return end
    if cashBalance >= Config.canCost then
		Player.Functions.RemoveMoney('cash', Config.canCost)
        Player.Functions.AddItem("weapon_petrolcan", 1, false)
		TriggerClientEvent('QBCore:Notify', src, "You purchased a jerry can for $"..Config.canCost, "success")
        cb(true)
    else
        TriggerClientEvent('QBCore:Notify', src, "You dont have enough cash on you..", "error")
        cb(false)
    end
end)
