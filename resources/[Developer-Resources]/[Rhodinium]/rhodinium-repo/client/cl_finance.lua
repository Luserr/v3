local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = {}
-- Start Thread

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    FinanceCheck()
	Citizen.CreateThread(function()  
		Wait(1000)
		QBCore.Functions.GetPlayerData(function(PlayerData)
			PlayerJob = PlayerData.job
		end)
	end)
end)

RegisterCommand("checkr", function()
	FinanceCheck()
end, false)


-- Player Functions
 
function FinanceCheck()
	QBCore.Functions.TriggerCallback('JAM_VehicleFinance:PlayerLogin', function(repo)
		if repo then 
			QBCore.Functions.Notify('One of your vehicles has been marked for reposession. Make a payment now', 'error', 30000)
			--ESX.ShowNotification("One of your vehicles has been marked for reposession. Make a repayment now (with /doRepay amount).") 
			TriggerServerEvent('JAM_VehicleFinance:MarkVehicles', repo)
		end
	end)
end

-- Mechanic Functions

local gotem = false
local allreadyDone = false
local removeBlipu = false

function MechanicUpdate(vehicle, plate)
	while not Towables do 
		Citizen.Wait(0)
	end	

	for key,val in pairs(Towables) do
		print(json.encode(Towables))
		if val.plate == plate then
			createBlip(vehicle)
			DrawRepoMarker(vehicle, timer)
		end
	end
end exports('MechanicUpdate', MechanicUpdate)


function createBlip(closestRepo)
	local PlayerData = QBCore.Functions.GetPlayerData()
	if PlayerData.job.name == "tow" then
		if allreadyDone == false then
			local closestPos = GetEntityCoords(closestRepo)
			local plate = GetVehicleNumberPlateText(closestRepo)
			local vehicleLabel = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(closestRepo)))
			local streetName = GetStreetNameAtCoord(closestPos.x, closestPos.y, closestPos.z)
			local readableStreetname = GetStreetNameFromHashKey(streetName)

			exports['qb-dispatch']:repoVehicle(closestRepo)
			
			--exports['mythic_notify']:SendAlert('inform', 'You are looking for;<br />Model: <span style="font-weight:bold;color:red;">' .. vehicleLabel .. '</span> <br />Plate: <span style="font-weight:bold;color:red;">' .. plate .. '</span><br/> Last seen on ' .. readableStreetname, 45000, { ['background-color'] = '#fcc200', ['color'] = '#000000' })


			blip = AddBlipForEntity(closestRepo)
			SetBlipSprite(blip, 1)
			SetBlipColour(blip, 5)
			SetBlipFlashes(blip, true)
			ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
			SetBlipRotation(blip, math.ceil(GetEntityHeading(ped))) -- update rotation
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('CAR FOR REPOSSESSION')
			EndTextCommandSetBlipName(blip)
			SetBlipScale(blip, 0.9) -- set scale
			SetBlipAsShortRange(blip, true)
		end
	end
end

function DrawRepoMarker(closestRepo, timer)
	print("MARKER SHOULD HAVE DRAWN")
	--[[ local plyPos = GetEntityCoords(PlayerPedId())
	local dist = GetVecDist(RepoPoint, plyPos)
	if dist < 50.0 then
		DrawMarker(1, RepoPoint.x, RepoPoint.y, RepoPoint.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, 255, 45, 45, 100, false, true, 2, false, false, false, false)
		if dist < 5.0 then
			ESX.ShowHelpNotification("Press ~INPUT_PICKUP~ to repossess the nearest vehicle.")
			if (IsControlJustPressed(0, 86) or IsDisabledControlJustPressed(0, 86)) and (GetGameTimer() - timer > 200) then
				timer = GetGameTimer()
				local vehProps = ESX.Game.GetVehicleProperties(closestRepo)
				QBCore.Functions.TriggerCallback('JAM_VehicleFinance:RepoVehicleEnd', function(valid, val)
					if valid then 
						local maxPassengers = GetVehicleMaxNumberOfPassengers(closestRepo)
				    for seat = -1,maxPassengers-1,1 do
				      local ped = GetPedInVehicleSeat(closestRepo,seat)
				    if ped and ped ~= 0 then TaskLeaveVehicle(ped,closestRepo,16); end
				    end 
						ESX.Game.DeleteVehicle(closestRepo)
						ESX.ShowNotification('You earnt $~g~'..val..'~s~ for the repossession.')
						table.remove(Towables,k)
					else
						ESX.ShowNotification("You can't repossess this vehicle.")
					end
				end, vehProps)
			end
		end
	end ]]
end

-- Repo Events

RegisterNetEvent('JAM_VehicleFinance:RemoveRepo')
AddEventHandler('JAM_VehicleFinance:RemoveRepo', function(vehicle)
	--if not JVF or not JVF.Towables or not JVF.Towables[1] then return; end
	for k,v in pairs(Towables) do
		if v.plate == vehicle then
			table.remove(Towables,k)
		end	
	end
end)

RegisterNetEvent('JAM_VehicleFinance:MarkForRepo')
AddEventHandler('JAM_VehicleFinance:MarkForRepo', function(vehicles)
	local PlayerData = QBCore.Functions.GetPlayerData()
	if PlayerData.job.name ~= "tow" then
		return
	end
	Towables = Towables or {}
	for k,v in pairs(vehicles) do 
		table.insert(Towables, v)
	end
end)
 
--[[ RegisterCommand('checkRepos', function() 

	local PlayerData = QBCore.Functions.GetPlayerData()
	print("if you dont see anyting after this there is no repo")
	--exports['mythic_notify']:SendAlert('error', 'If you dont see a message after this, That means there are currently no repos on the streets <br/ > <br/ >Try again in a short while.', 10000)
	if PlayerData.job.name == "tow" then
		if not Towables then 
			print("there are no vehicles marked for reposession at the moment")
			--exports['mythic_notify']:SendAlert('error', 'There are no vehicles marked for reposession at the moment.', 10000); 
			return
		end
		for k,v in pairs(Towables) do
			--print(json.encode(v))
			local str = 'Plate : '..v.plate..'\nOwed : '..v.paymentamount..'\n'
			--print(str)
			MechanicUpdate()
		end
	end
end) ]]

--[[ Citizen.CreateThread(function() Start(); end)

 ]]
