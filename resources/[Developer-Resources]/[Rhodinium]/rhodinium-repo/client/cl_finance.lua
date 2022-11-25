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

RegisterNetEvent('rhodinium:endRepo')
AddEventHandler('rhodinium:endRepo', function(vehicle)
	local ped = PlayerPedId()
	local closestRepo = GetVehiclePedIsIn(ped)
	print("Trying To Repo")
	local vehProps = QBCore.Functions.GetVehicleProperties(closestRepo)
	QBCore.Functions.TriggerCallback('JAM_VehicleFinance:RepoVehicleEnd', function(valid, val)
		if valid then 
			local maxPassengers = GetVehicleMaxNumberOfPassengers(closestRepo)
			for seat = -1,maxPassengers-1,1 do
			local ped = GetPedInVehicleSeat(closestRepo,seat)
			if ped and ped ~= 0 then 
				TaskLeaveVehicle(ped,closestRepo,16)
			end
			end 
			if DoesEntityExist(closestRepo) then
				SetEntityAsMissionEntity(closestRepo, true, true)
				DeleteVehicle(closestRepo)
				DeleteEntity(closestRepo)
			end 
			QBCore.Functions.Notify('You earnt $'..val..' for the repossession.', 'success', 7500)
			--table.remove(Towables,k)
		else
			QBCore.Functions.Notify('You cant repossess this vehicle.', 'error', 7500)
		end
	end, vehProps)
end)

-- Repo Events

RegisterNetEvent('JAM_VehicleFinance:RemoveRepo')
AddEventHandler('JAM_VehicleFinance:RemoveRepo', function(vehicle)
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