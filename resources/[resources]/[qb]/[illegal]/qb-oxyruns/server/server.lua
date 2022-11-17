local QBCore = exports['qb-core']:GetCoreObject()

local CoolDown = false

RegisterServerEvent('kevin-oxyruns:coolout', function()
    CoolDown = true
    local timer = Config.CoolDown *60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CoolDown = false
        end
    end
end)

QBCore.Functions.CreateCallback("kevin-oxyruns:coolc",function(source, cb)
    if CoolDown then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('kevin-oxyruns:Haspayment',function(source, cb)
	local src = source
    local Player = QBCore.Functions.GetPlayer(source)

    local Payment = Config.OxyStartPayment
    if Player.PlayerData.money.cash >= Payment then
        Player.Functions.RemoveMoney('cash', Payment, 'Oxy Delivery Payment')
        cb(true)
    else
        cb(false)
		TriggerClientEvent('QBCore:Notify', src, 'You cannot afford to do this..', 'error')
    end
end)

RegisterNetEvent('kevin-oxyruns:giveoxypackages', function ()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.OxyPackageName, 1, false)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.OxyPackageName], "add")
end)

RegisterNetEvent('kevin-oxyruns:removeoxypackages', function ()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local OxyPackage = Player.Functions.GetItemByName(Config.OxyPackageName)
    local MarkedBills = Player.Functions.GetItemByName(Config.MarkedBills)
    local cleanedmoney = 0
    if OxyPackage then
        local cash = math.random(Config.MinPay, Config.MaxPay)
        Player.Functions.AddMoney('cash', cash, 'Oxy Sale')

        Player.Functions.RemoveItem(Config.OxyPackageName, 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.OxyPackageName], "remove")

        local chance = math.random(1,100)
        local rareitemchance = math.random(1,100)
        local rare = Config.RareItem[math.random(#Config.RareItem)]
        if rareitemchance <= Config.RareItemChance then
            Player.Functions.AddItem(rare, Config.RareItemAmount, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rare], "add",Config.RareItemAmount)
        end

        if chance <= Config.ItemChance then
            Player.Functions.AddItem(Config.ItemName, Config.OxyAmount, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ItemName], "add",Config.OxyAmount)
        end
    end
    local cleanchance = math.random(1, 100)
    if cleanchance <= Config.CleanChance then
        if MarkedBills then
            cleanedmoney = cleanedmoney + (MarkedBills.info.worth * MarkedBills.amount)
            Player.Functions.AddMoney('cash', cleanedmoney, 'Cleaned Money')
            Player.Functions.RemoveItem(Config.MarkedBills, MarkedBills.amount)
        else
            TriggerClientEvent('QBCore:Notify', src, 'No extra sauce with this?', 'error')
        end
    end
end)