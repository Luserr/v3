local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("venture_crips:stash",function()
    TriggerEvent("inventory:client:SetCurrentStash", "RRC Crips")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "RRC Crips", {
		maxweight = 5000000,
		slots = 500,
	})
end)

RegisterNetEvent("venture_bnj:stash",function()
    TriggerEvent("inventory:client:SetCurrentStash", "Bad News Jews")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "Bad News Jews", {
		maxweight = 5000000,
		slots = 500,
	})
end)

RegisterNetEvent("venture_syn:stash",function()
    TriggerEvent("inventory:client:SetCurrentStash", "Syndicate")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "Syndicate", {
		maxweight = 5000000,
		slots = 500,
	})
end)

RegisterNetEvent("venture_dow:stash",function()
    TriggerEvent("inventory:client:SetCurrentStash", "Devils of War")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "Devils of War", {
		maxweight = 5000000,
		slots = 500,
	})
end)
