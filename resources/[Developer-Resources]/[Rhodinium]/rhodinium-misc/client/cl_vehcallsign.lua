local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('kz-callsignveh:openUI')
AddEventHandler('kz-callsignveh:openUI', function() 
    local plyVeh = GetVehiclePedIsIn(PlayerPedId(),false)

    local Elements = {
        header = "Set Callsign", 
        rows = {
            {label = 'Callsign', type = "number", icon = "time"},
            {label = 'Division (0 = patrol)', type = "number", icon = "time"},
            {label = 'Rank', type = "number", icon = "time"},
        },
    }

    local Keyboard, callSign, division, rank = exports["rhodinium-keyboard"]:Keyboard(Elements)

    if not Keyboard then 
        ClearPedTasks(PlayerPedId())
        return 
    end

    local callSign = tonumber(callSign) or 0
    if callSign >= 999 then
        return QBCore.Functions.Notify("Three Digits Only.")
    end
    
    local division = tonumber(division) or 0
    if division >= 10 then
        return QBCore.Functions.Notify("One Digits Only.")
    end

    local rank = tonumber(rank) or 0
    if rank >= 10 then
        return QBCore.Functions.Notify("One Digits Only.")
    end
    local str = "".. callSign ..""
    local fields = { str:match( (str:gsub(".", "(.)")) ) } 

    QBCore.Functions.Progressbar("set_callsign", "Changing Callsign...", 7500, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
		SetVehicleMod(plyVeh, 42, tonumber(fields[1]))
        SetVehicleMod(plyVeh, 44, tonumber(fields[2]))
        SetVehicleMod(plyVeh, 45, tonumber(fields[3]))

        SetVehicleMod(plyVeh, 8, tonumber(division))
        SetVehicleMod(plyVeh, 9, tonumber(rank))

		ClearPedTasks(playerPed)
	end, function()
		ClearPedTasks(playerPed)
	end)
end)
