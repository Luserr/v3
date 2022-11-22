local JVF = JAM.VehicleFinance
local JVS = JAM.VehicleShop

-- Start Thread

function JVF:Start()
	if not self then return; end
	while not ESX do Citizen.Wait(0); end
	while not ESX.IsPlayerLoaded() do Citizen.Wait(0); end 
	while not JUtils do Citizen.Wait(0); end
	while not JVS do Citizen.Wait(0); end

	--print("JAM_VehicleFinance:Start() - Succesful")
	self:FinanceCheck()
	Citizen.CreateThread(function(...) self:PlayerUpdate(...); end)
    --Citizen.CreateThread(function(...)self:MechanicUpdate(...);end)
end

-- Player Functions

function JVF:FinanceCheck()
	ESX.TriggerServerCallback('JAM_VehicleFinance:PlayerLogin', function(repo)
		if repo then 
			exports['mythic_notify']:SendAlert('error', 'One of your vehicles has been marked for reposession. <br/>Make a payment now by visiting the dealership and using the computer at the front desk.', 30000)
			--ESX.ShowNotification("One of your vehicles has been marked for reposession. Make a repayment now (with /doRepay amount).") 
			TriggerServerEvent('JAM_VehicleFinance:MarkVehicles', repo)
		end
	end)
end

function JVF:PlayerUpdate()
	if not self or not ESX or not JUtils or not JVS then return; end
	local timer = GetGameTimer()
	self.StartTime = ((GetGameTimer() / 1000) / 60)
	while true do
		Citizen.Wait(0)
		self.tick = (self.tick or 0) + 1
		local drawing = self:PositionCheck()
		if drawing then
			if self.LastDrawing then
				if drawing ~= self.LastDrawing then self.Confirming = false; self.LastDrawing = drawing; end
			else self.LastDrawing = drawing; self.Confirming = false; end
			if (IsControlJustPressed(0, JUtils.Keys[self.FinanceKey]) or IsDisabledControlJustPressed(0, JUtils.Keys[self.FinanceKey])) and self.LastVeh and ((GetGameTimer() - timer) > 1000) then
				timer = GetGameTimer()	
				if not IsPedInAnyVehicle(PlayerPedId(), true) then
					ESX.TriggerServerCallback('JAM_VehicleFinance:CheckFunds', function(valid, downpay, price)
						if valid then
							if self.Confirming and not JVS.CurBuying then
								JVS.CurBuying = true
								self:PurchaseVehicle(self.LastVeh, downpay, price)
								ESX.ShowNotification("You have purchased the vehicle.")
								self.Confrming = false
							else 
								self.Confirming = true
							end
						else ESX.ShowNotification("You don't have enough money.")
						end
					end, self.FinanceStartingAmount, self.LastVeh)
				end
			elseif (IsControlJustPressed(0, JUtils.Keys["UP"]) or IsDisabledControlJustPressed(0, JUtils.Keys["UP"])) then
				self.FinanceStartingAmount = math.min(self.FinanceStartingAmount + 1, 80)
				timer = GetGameTimer()			
			elseif (IsControlJustPressed(0, JUtils.Keys["DOWN"]) or IsDisabledControlJustPressed(0, JUtils.Keys["DOWN"])) then
				self.FinanceStartingAmount = math.max(self.FinanceStartingAmount - 1, 45)
				timer = GetGameTimer()			
			elseif (IsControlPressed(0, JUtils.Keys["UP"]) or IsDisabledControlPressed(0, JUtils.Keys["UP"])) and ((GetGameTimer() - timer) > 150)  then
				self.FinanceStartingAmount = math.min(self.FinanceStartingAmount + 1, 80)		
			elseif (IsControlPressed(0, JUtils.Keys["DOWN"]) or IsDisabledControlPressed(0, JUtils.Keys["DOWN"])) and ((GetGameTimer() - timer) > 150) then
				self.FinanceStartingAmount = math.max(self.FinanceStartingAmount - 1, 45)
			end
		end
	end
end

function JVF:PositionCheck()
	if not JVS or not JVS.DisplayPositions then return; end
	local plyPed = PlayerPedId()
	local plyPos = GetEntityCoords(plyPed)	

	local nearestDist,nearestVeh,nearestPos,listType,key = JVS:GetNearestDisplay(plyPos)
	if not nearestDist then return; end

	if self.LastVeh and nearestVeh ~= self.LastVeh.veh then 
		self.FinanceStartingAmount = 45
		self.LastVeh = { dist = nearestDist, veh = nearestVeh, pos = nearestPos, list = listType, key = key } 
	else 
		self.LastVeh = { dist = nearestDist, veh = nearestVeh, pos = nearestPos, list = listType, key  = key } 
	end

	local nearestModel,nearestPrice,nearestProfit
	for k,v in pairs(JVS.ShopData) do 
		for k,v in pairs(v) do
			if v.model == self.LastVeh.veh then
				nearestModel = v.model
				nearestPrice = v.price
				if v.profit then 
					nearestProfit = v.profit / 100
				end
			end
		end
	end

	if nearestDist < JVS.DrawTextDist then
		if self.Confirming then
			if nearestProfit then
				JVS:DrawText3D(nearestPos.x,nearestPos.y,nearestPos.z + 0.8, "Press [ "..self.FinanceKey.." ] again to confirm. [ ~r~"..self.FinanceStartingAmount.."~s~% Downpayment ] : [ $" .. math.floor((nearestPrice + (nearestPrice * nearestProfit)) * (self.FinanceStartingAmount / 100)) .." ]")
				return nearestVeh
			else 				
				JVS:DrawText3D(nearestPos.x,nearestPos.y,nearestPos.z + 0.8, "Press [ "..self.FinanceKey.." ] again to confirm. [ ~r~"..self.FinanceStartingAmount.."~s~% Downpayment ] : [ $" .. math.floor(nearestPrice * (self.FinanceStartingAmount / 100)) .." ]")
				return nearestVeh
			end
		else 
			if nearestProfit then
				JVS:DrawText3D(nearestPos.x,nearestPos.y,nearestPos.z + 0.8, "Press [ "..self.FinanceKey.." ] to finance this vehicle. [ ~r~"..self.FinanceStartingAmount.."~s~% Downpayment ] : [ $" .. math.floor((nearestPrice + (nearestPrice * nearestProfit)) * (self.FinanceStartingAmount / 100)) .." ]")
				return nearestVeh
			else 
				if nearestPos and nearestPrice then
					JVS:DrawText3D(nearestPos.x,nearestPos.y,nearestPos.z + 0.8, "Press [ "..self.FinanceKey.." ] to finance this vehicle. [ ~r~"..self.FinanceStartingAmount.."~s~% Downpayment ] : [ $" .. math.floor(nearestPrice * (self.FinanceStartingAmount / 100)) .." ]")
				end
				return nearestVeh
			end
		end
	else 
		self.FinanceStartingAmount = 45
		return false
	end
end

function JVF:PurchaseVehicle(veh, downpay, price)
	if veh.list == 1 or veh.list == 3 then spawnPos = JVS.PurchasedCarPos; else spawnPos = JVS.PurchasedUtilPos; end
	TriggerServerEvent('JAM_VehicleFinance:PayForVehicle', downpay)
    ESX.Game.SpawnVehicle(veh.veh,spawnPos.xyz, spawnPos.w, function(cbVeh)
        ESX.TriggerServerCallback("tp-generateplate",function(newPlate)
            print("Getting new plate for Financed Vehicle")
            Citizen.Wait(10)
            SetEntityCoords(cbVeh, spawnPos.xyz, 0.0, 0.0, 0.0, true)
            SetEntityHeading(cbVeh, spawnPos.w)
            SetVehicleOnGroundProperly(cbVeh)
            Citizen.Wait(10)
            TaskWarpPedIntoVehicle(PlayerPedId(), cbVeh, -1)
            SetVehicleNumberPlateText(cbVeh, newPlate)
			Citizen.Wait(10)
	
			local vehProps = ESX.Game.GetVehicleProperties(cbVeh)
			vehProps.name = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
            TriggerServerEvent('JAM_VehicleFinance:CompletePurchase', vehProps, downpay, price)
            TriggerServerEvent('garage:addKeys', newPlate)
        end)
		JVS.CurBuying = false
	end)
end

-- Mechanic Functions

local gotem = false
local allreadyDone = false
local removeBlipu = false

function JVF:MechanicUpdate()
	while not self.Towables do Citizen.Wait(0); end	
	local closestVeh,closestDist,closestRepo
	local tick = 0
	local timer = GetGameTimer()

	while true do
		Citizen.Wait(0)	
		tick = tick + 1
		if tick % 100 == 1 then
			closestVeh = false
			closestDist = false
			closestRepo = false

			local plyPos = GetEntityCoords(PlayerPedId())
			local allVehicles = ESX.Game.GetVehiclesInArea(plyPos, 800000.0)

			for k,v in pairs(allVehicles) do
				local vehProps = ESX.Game.GetVehicleProperties(v)
				local vehPos = GetEntityCoords(v)
				local dist = JUtils:GetVecDist(plyPos, vehPos)
				if not closestDist or closestDist > dist then
					for key,val in pairs(self.Towables) do
						if val.plate == vehProps.plate then
							closestDist = dist
							closestRepo = v
						end
					end
				end
			end
		end

		if closestRepo and closestDist then
			
				if closestDist < 500000.0 then
					local closestPos = GetEntityCoords(closestRepo)
					createBlip(closestRepo)
					local plate = GetVehicleNumberPlateText(closestRepo)
					local vehicleLabel = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(closestRepo)))
					local streetName = GetStreetNameAtCoord(closestPos.x, closestPos.y, closestPos.z)
					local readableStreetname = GetStreetNameFromHashKey(streetName)
					allreadyDone = true
					
					--DrawMarker(27, closestPos.x, closestPos.y, closestPos.z - 0.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 5.0, 5.0, 5.0, 255, 45, 45, 100, false, true, 2, false, false, false, false)
					--DrawMarker(29, closestPos.x, closestPos.y, closestPos.z + 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, 255, 45, 45, 100, false, true, 2, false, false, false, false)
					--createBlip()
					if gotem then
						-- do nothing
					else
							--[[ createBlip(closestRepo)
							local plate = GetVehicleNumberPlateText(closestRepo)
							local vehicleLabel = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(closestRepo)))
							local streetName = GetStreetNameAtCoord(closestPos.x, closestPos.y, closestPos.z)
							local readableStreetname = GetStreetNameFromHashKey(streetName)
							exports['mythic_notify']:SendAlert('inform', 'You are looking for;<br />Model: <span style="font-weight:bold;color:red;">' .. vehicleLabel .. '</span> <br />Plate: <span style="font-weight:bold;color:red;">' .. plate .. '</span><br/> Last seen on ' .. readableStreetname, 45000, { ['background-color'] = '#fcc200', ['color'] = '#000000' })
							gotem = true ]]
						end
					end
					--createBlip(closestRepo)

					self:DrawRepoMarker(closestRepo, timer)
				elseif closestDist > 50.0 then
					closestDist = false
					closestRepo = false
				
				end
			
	end

end


function createBlip(closestRepo)
    --local ped = PlayerPedId()
    --local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
	--local blip = GetBlipFromEntity(vehicle)
	if allreadyDone == false then
		local closestPos = GetEntityCoords(closestRepo)
		local plate = GetVehicleNumberPlateText(closestRepo)
		local vehicleLabel = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(closestRepo)))
		local streetName = GetStreetNameAtCoord(closestPos.x, closestPos.y, closestPos.z)
		local readableStreetname = GetStreetNameFromHashKey(streetName)

		exports['mythic_notify']:SendAlert('inform', 'You are looking for;<br />Model: <span style="font-weight:bold;color:red;">' .. vehicleLabel .. '</span> <br />Plate: <span style="font-weight:bold;color:red;">' .. plate .. '</span><br/> Last seen on ' .. readableStreetname, 45000, { ['background-color'] = '#fcc200', ['color'] = '#000000' })


		blip = AddBlipForEntity(closestRepo)
		SetBlipSprite(blip, 1)
		SetBlipColour(blip, 5)
		SetBlipFlashes(blip, true)
		ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
		SetBlipRotation(blip, math.ceil(GetEntityHeading(ped))) -- update rotation
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('Car for repo')
		EndTextCommandSetBlipName(blip)
		SetBlipScale(blip, 0.8) -- set scale
		SetBlipAsShortRange(blip, true)
		--SetBlipColour(blip, 42)
	end
end

function JVF:DrawRepoMarker(closestRepo, timer)
	local plyPos = GetEntityCoords(PlayerPedId())
	local dist = JUtils:GetVecDist(self.RepoPoint, plyPos)
	if dist < 50.0 then
		DrawMarker(1, self.RepoPoint.x, self.RepoPoint.y, self.RepoPoint.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, 255, 45, 45, 100, false, true, 2, false, false, false, false)
		if dist < 5.0 then
			ESX.ShowHelpNotification("Press ~INPUT_PICKUP~ to repossess the nearest vehicle.")
			if (IsControlJustPressed(0, 86) or IsDisabledControlJustPressed(0, 86)) and (GetGameTimer() - timer > 200) then
				timer = GetGameTimer()
				local vehProps = ESX.Game.GetVehicleProperties(closestRepo)
				ESX.TriggerServerCallback('JAM_VehicleFinance:RepoVehicleEnd', function(valid, val)
					if valid then 
						local maxPassengers = GetVehicleMaxNumberOfPassengers(closestRepo)
				    for seat = -1,maxPassengers-1,1 do
				      local ped = GetPedInVehicleSeat(closestRepo,seat)
				    if ped and ped ~= 0 then TaskLeaveVehicle(ped,closestRepo,16); end
				    end 
						ESX.Game.DeleteVehicle(closestRepo)
						ESX.ShowNotification('You earnt $~g~'..val..'~s~ for the repossession.')
						table.remove(self.Towables,k)
					else
						ESX.ShowNotification("You can't repossess this vehicle.")
					end
				end, vehProps)
			end
		end
	end
end

-- Repo Events

RegisterNetEvent('JAM_VehicleFinance:RemoveRepo')
AddEventHandler('JAM_VehicleFinance:RemoveRepo', function(vehicle)
	--if not JVF or not JVF.Towables or not JVF.Towables[1] then return; end
	for k,v in pairs(JVF.Towables) do
		if v.plate == vehicle then
			table.remove(JVF.Towables,k)
		end	
	end
end)

RegisterNetEvent('JAM_VehicleFinance:MarkForRepo')
AddEventHandler('JAM_VehicleFinance:MarkForRepo', function(vehicles)
	while not ESX do Citizen.Wait(0); end
	while not ESX.IsPlayerLoaded() do Citizen.Wait(0); end
	local plyData = ESX.GetPlayerData()
	if plyData.job.name ~= JVF.TowDriverJob then return; end
	JVF.Towables = JVF.Towables or {}
	for k,v in pairs(vehicles) do table.insert(JVF.Towables, v); end
end)

-- Repay Commands

RegisterCommand('checkRepay', function(source, args)
	if not ESX then return; end
	local plyPed = PlayerPedId()
	if not IsPedInAnyVehicle(plyPed, false) then ESX.ShowNotification('Get in a vehicle first.'); return; end
	local plyVeh = GetVehiclePedIsIn(plyPed, true)
	local vehProps = ESX.Game.GetVehicleProperties(plyVeh)

	ESX.TriggerServerCallback('JAM_VehicleFinance:GetOwnedVehicles', function(data)
		if not data then ESX.ShowNotification("You don't own any vehicles.") return; end
		local matched = false
		for k,v in pairs(data) do
			if vehProps.plate == v.plate then 
				matched = true
				print(vehProps.plate,v.plate)
				if v.finance then
					if v.finance < 1 then
						print(v.finance)
						ESX.ShowNotification("You own this vehicle.")
					else
						ESX.ShowNotification("You owe $~r~"..v.finance.."~s~. You have ~r~"..(v.financetimer).." ~s~minutes remaining to make a repayment.")
					end
				end
			end
		end
		if not matched then ESX.ShowNotification("You don't own this vehicle."); end
	end)
end)

RegisterCommand('checkRepos', function(...) 
	local plyData = ESX.GetPlayerData()
	allreadyDone = false
	exports['mythic_notify']:SendAlert('error', 'If you dont see a message after this, That means there are currently no repos on the streets <br/ > <br/ >Try again in a short while.', 10000)
	if plyData.job.name == JVF.TowDriverJob then
		if not JVF.Towables then exports['mythic_notify']:SendAlert('error', 'There are no vehicles marked for reposession at the moment.', 10000); return; end
		local compString = ''
		for k,v in pairs(JVF.Towables) do
			local str = 'Plate : '..v.plate..'\nOwed : '..v.finance..'\n'
			print(str)
			JVF:MechanicUpdate()
		end
	end
end)

Citizen.CreateThread(function(...) JVF:Start(); end)