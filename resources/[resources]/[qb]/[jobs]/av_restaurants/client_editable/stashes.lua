AddEventHandler('av_restaurant:stash', function(data)
    if Config.Framework == 'QBCore' then
        TriggerEvent("inventory:client:SetCurrentStash", data['zoneName'])
        TriggerServerEvent("inventory:server:OpenInventory", "stash", data['zoneName'], {
            maxweight = Config.StashWeight,
            slots = Config.StashSlots,
        })
    elseif Config.Framework == 'ESX' then
        -- Here you can trigger your inventory event/export to register/open a stash
        -- Check server_editable/sv_framework.lua if your inventory needs to register stash server side
        -- Use Config.StashWeight for weight and Config.StashSlots for slots
        if Config.ESXInventory == 'ox_inventory' then
			if exports.ox_inventory:openInventory('stash', data['zoneName']) == false then
				TriggerServerEvent('ox:loadStashes')
				exports.ox_inventory:openInventory('stash', data['zoneName'])
			end
		elseif Config.ESXInventory == 'mf-inventory' then
			exports["mf-inventory"]:openOtherInventory(data['zoneName'])
        elseif Config.ESXInventory == 'qs-inventory' then
            local other = {}
            other.maxweight = Config.StashWeight
            other.slots = Config.StashSlots
            TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash_"..data['zoneName'], other)
            TriggerEvent("inventory:client:SetCurrentStash", "Stash_"..data['zoneName'])
		end
    end
end)

AddEventHandler('av_restaurant:tray', function(data)
    if Config.Framework == 'QBCore' then
        TriggerEvent("inventory:client:SetCurrentStash", data['zoneName'])
        TriggerServerEvent("inventory:server:OpenInventory", "stash", data['zoneName'], {
            maxweight = Config.TrayWeight,
            slots = Config.TraySlots,
        })
    elseif Config.Framework == 'ESX' then
        -- Here you can trigger your inventory event/export to register/open a stash
        -- Check server_editable/sv_framework.lua if your inventory needs to register stash server side
        -- Use Config.TrayWeight for weight and Config.TraySlots for slots
		if Config.ESXInventory == 'ox_inventory' then
			if exports.ox_inventory:openInventory('stash', data['zoneName']) == false then
				TriggerServerEvent('ox:loadStashes')
				exports.ox_inventory:openInventory('stash', data['zoneName'])
			end
		elseif Config.ESXInventory == 'mf-inventory' then
			exports["mf-inventory"]:openOtherInventory(data['zoneName'])
        elseif Config.ESXInventory == 'qs-inventory' then
            local other = {}
            other.maxweight = Config.TrayWeight
            other.slots = Config.TraySlots
            TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash_"..data['zoneName'], other)
            TriggerEvent("inventory:client:SetCurrentStash", "Stash_"..data['zoneName'])
		end
    end
end)