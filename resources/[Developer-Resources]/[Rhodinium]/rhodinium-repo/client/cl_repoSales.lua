ESX = nil
PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)
        TriggerEvent("esx:getSharedObject", function(response)
            ESX = response
        end)
    end

    if ESX.IsPlayerLoaded() then
		PlayerData = ESX.GetPlayerData()
		RemoveVehicles()
		Citizen.Wait(500)
		LoadSellPlace()
		SpawnVehicles()
    end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(response)
	PlayerData = response
	LoadSellPlace()
	SpawnVehicles()
end)

RegisterNetEvent("LG_CLBan")
AddEventHandler("LG_CLBan", function()
	TriggerServerEvent('LG:BannedModdaFukka')
end)

RegisterNetEvent("tp_repocarsales:refreshVehicles")
AddEventHandler("tp_repocarsales:refreshVehicles", function()
	RemoveVehicles()
	Citizen.Wait(500)
	SpawnVehicles()
end)

function LoadSellPlace()
	Citizen.CreateThread(function()
		local SellPos = Config.SellPosition
		local Blip = AddBlipForCoord(448.978, -1146.853, 29.308)
		SetBlipSprite (Blip, 595)
		SetBlipDisplay(Blip, 4)
		SetBlipScale  (Blip, 0.8)
		SetBlipColour (Blip, 60)
		SetBlipAsShortRange(Blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Repo'd Vehicles")
		EndTextCommandSetBlipName(Blip)

		while true do
			local sleepThread = 500
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)
			--local dstCheck = GetDistanceBetweenCoords(pedCoords, SellPos["x"], SellPos["y"], SellPos["z"], true)

			--[[ if dstCheck <= 10.0 then
				sleepThread = 5
				if dstCheck <= 4.2 then
					DrawText3Ds(SellPos.x, SellPos.y, SellPos.z + 1.5, "[~g~E~w~] Open menu")
					if IsControlJustPressed(0, 38) then
						if IsPedInAnyVehicle(ped, false) then
							local vehicle = GetVehiclePedIsIn(PlayerPedId())
                            TriggerServerEvent("tp:checkFinance", GetVehicleNumberPlateText(vehicle))
							--OpenSellMenu(GetVehiclePedIsUsing(ped))
						else
							exports['mythic_notify']:SendAlert('error', 'You must sit in/on the vehicle!')
							--TriggerEvent("pNotify:SendNotification", {text = 'You must sit in/on the vehicle!', layout = "bottomCenter", timeout = 5000, type = 'error', progressBar = true, animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
						end
					end
				end
			end ]]

			for i = 1, #Config.VehiclePositions, 1 do
				if Config.VehiclePositions[i]["entityId"] ~= nil then
					local pedCoords = GetEntityCoords(ped)
					local vehCoords = GetEntityCoords(Config.VehiclePositions[i]["entityId"])					
					local vehProps = ESX.Game.GetVehicleProperties(Config.VehiclePositions[i]["entityId"])
					local vehName1 = GetEntityModel(Config.VehiclePositions[i]["entityId"])
					local vehName2 = GetLabelText(GetDisplayNameFromVehicleModel(vehName1))
					if VehName2 == nil then
						vehName2 = GetDisplayNameFromVehicleModel(vehName1)
					end
					local turbs = 'No'
					local engine = 'Stock'
					local gearbox = 'Stock'
					local suspension = 'Stock'
					local randombool, Ground = GetGroundZFor_3dCoord(vehCoords.x, vehCoords.y, vehCoords.z)
					
					if vehProps.modTurbo and vehProps.modTurbo > 0 then 
						turbs = 'Yes'
					end
					if vehProps.modEngine >= 0 then
						engine = ("Level " .. tostring(vehProps.modEngine + 1))
					end
					if vehProps.modTransmission >= 0 then
						gearbox = ("Level " .. tostring(vehProps.modTransmission + 1))
					end
					if vehProps.modSuspension >= 0 then
						suspension = ("Level " .. tostring(vehProps.modSuspension + 1))
					end
					

					local dstCheck = GetDistanceBetweenCoords(pedCoords, vehCoords, true)
					if dstCheck <= 2.0 then
						sleepThread = 5
						drawTextA = "[" .. vehName2 .. " - $" .. Config.VehiclePositions[i]["price"] .. "]"
						drawTextB = "[Turbo: ~r~" .. turbs .. "~s~] [Engine: ~r~" .. engine .. "~s~]"
						drawTextC = "[Gearbox: ~r~" .. gearbox .. "~s~] [Suspension: ~r~" .. suspension .. "~s~]"
						DrawText3Db(vehCoords.x, vehCoords.y, Ground + 1.8, drawTextA)
						DrawText3Db(vehCoords.x, vehCoords.y, Ground + 1.7, drawTextB)
						DrawText3Db(vehCoords.x, vehCoords.y, Ground + 1.6, drawTextC)

						if IsControlJustPressed(0, 38) then
							if IsPedInVehicle(ped, Config.VehiclePositions[i]["entityId"], false) then
								OpenSellMenu(Config.VehiclePositions[i]["entityId"], Config.VehiclePositions[i]["price"], true, Config.VehiclePositions[i]["owner"])
							else
								exports['mythic_notify']:SendAlert('error', 'You must sit in/on the vehicle!')
								--TriggerEvent("pNotify:SendNotification", {text = 'You must sit in/on the vehicle!', layout = "bottomCenter", timeout = 5000, type = 'error', progressBar = true, animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
							end
						end
					end
				end
			end
			Citizen.Wait(sleepThread)
		end
	end)
end

function OpenSellMenu(veh, price, buyVehicle, owner)
	local elements = {}

	if not buyVehicle then
		return
	else
		table.insert(elements, {["label"] = "Buy using bank balance - $" .. price, ["value"] = "buy"})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sell_veh',
		{
			title = "Repo Car Sales",
			align = 'bottom-right',
			elements = elements
		},
		function(data, menu)
			local action = data.current.value
			if action == "buy" then
				ESX.TriggerServerCallback('tp_repocarsales:buyVehicle', function(isPurchasable, totalMoney)
					if isPurchasable then
						menu.close()
					else
						exports['mythic_notify']:SendAlert('error', "You cannot afford this car.")
						menu.close()
					end
				end,ESX.Game.GetVehicleProperties(veh), price)
			end
		end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent("reposales_DeleteVehicle")
AddEventHandler("reposales_DeleteVehicle", function(price)
	DeleteVehicle(GetVehiclePedIsUsing(PlayerPedId()))
	exports['mythic_notify']:SendAlert('success', 'You bought the vehicle for $' .. price .. '.')
	--TriggerEvent("pNotify:SendNotification", {text = 'You bought the vehicle for ' .. price ..':-', layout = "centerLeft", timeout = 5000, type = 'success', progressBar = true, animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
	Citizen.Wait(5000)
	exports['mythic_notify']:SendAlert('success', 'Your vehicle is now ready to collect from your garage')
	--TriggerEvent("pNotify:SendNotification", {text = 'Your vehicle is now ready to collect from your garage', layout = "centerLeft", timeout = 5000, type = 'success', progressBar = true, animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end)

function RemoveVehicles()
	local VehPos = Config.VehiclePositions
	for i = 1, #VehPos, 1 do
		local veh, distance = ESX.Game.GetClosestVehicle(VehPos[i])
		if DoesEntityExist(veh) and distance <= 1.0 then
			DeleteEntity(veh)
		end
	end
end

function SpawnVehicles()
	local VehPos = Config.VehiclePositions
	ESX.TriggerServerCallback("tp_repocarsales:retrieveVehicles", function(vehicles)
		for i = 1, #vehicles, 1 do
			local vehicleProps = vehicles[i]["vehProps"]
			LoadModel(vehicleProps["model"])
			VehPos[i]["entityId"] = CreateVehicle(vehicleProps["model"], VehPos[i]["x"], VehPos[i]["y"], VehPos[i]["z"], VehPos[i]["h"], false)
			VehPos[i]["price"] = vehicles[i]["price"]
			--VehPos[i]["owner"] = vehicles[i]["owner"]
			ESX.Game.SetVehicleProperties(VehPos[i]["entityId"], vehicleProps)
			SetVehicleOnGroundProperly(VehPos[i]["entityId"])
			FreezeEntityPosition(VehPos[i]["entityId"], true)
			SetEntityAsMissionEntity(VehPos[i]["entityId"], true, true)
			SetModelAsNoLongerNeeded(vehicleProps["model"])
		end
	end)
end

LoadModel = function(model)
	while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(1)
	end
end



function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

function DrawText3Db(x,y,z, text, scaleB)
	if not scaleB then scaleB = 1.2; end
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	local px,py,pz = table.unpack(GetGameplayCamCoord())
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	local scale = (((1/dist)*2)*(1/GetGameplayCamFov())*100)*scaleB
  
	if onScreen then
	  -- Formalize the text
	  SetTextColour(220, 220, 220, 255)
	  SetTextScale(0.0*scale, 0.40*scale)
	  SetTextFont(4)
	  SetTextProportional(1)
	  SetTextCentre(true)
  
	  -- Diplay the text
	  SetTextEntry("STRING")
	  AddTextComponentString(text)
	  EndTextCommandDisplayText(_x, _y)
	end
  end