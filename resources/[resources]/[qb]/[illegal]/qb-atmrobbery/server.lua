local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
local cashA = 350
local cashB = 850


-- hack
QBCore.Functions.CreateUseableItem('trojan_usb', function(source)
	local Player = QBCore.Functions.GetPlayer(source)
   TriggerClientEvent('hack:trojan_usb',source)
end)

-- Recompensa
RegisterServerEvent("qb-atmrobbery:success")
AddEventHandler("qb-atmrobbery:success",function()
    local src = source
	local Player =  QBCore.Functions.GetPlayer(source)
    local bags = 1
	local info = {
		worth = math.random(cashA, cashB)
	}
	Player.Functions.AddItem('markedbills', bags, false, info)
	--Player.Functions.AddItem("markedbills", tonumber(reward))
    Player.Functions.RemoveItem("trojan_usb", 1)
	--TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["markedbills"], "add")
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], "add")
end)

-- Cooldown
RegisterServerEvent('qb-atmrobbery:Server:BeginCooldown')
AddEventHandler('qb-atmrobbery:Server:BeginCooldown', function()
    Cooldown = true
    local timer = 60 * 1000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            Cooldown = false
        end
    end
end)

QBCore.Functions.CreateCallback("qb-atmrobbery:Cooldown",function(source, cb)
    if Cooldown then
        cb(true)
    else
        cb(false)
        
    end
end)
