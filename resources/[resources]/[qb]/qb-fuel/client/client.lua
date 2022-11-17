-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local fuelSynced = false
local inBlacklisted = false
local inGasStation = false
local isFueling = false
local nozzleInHand = false

local isPaid = false
local RefuelDisabled = true

local Stations = {}

local props = {
	'prop_gas_pump_1d',
	'prop_gas_pump_1a',
	'prop_gas_pump_1b',
	'prop_gas_pump_1c',
	'prop_vintage_pump',
	'prop_gas_pump_old2',
	'prop_gas_pump_old3',
}

local CurrentWeaponData = {}

-- Functions

local function GlobalTax(value)
	local tax = (value / 100 * Config.GlobalTax)
	return tax
end

local function isHoldingWeapon(weaponHash)
	return GetSelectedPedWeapon(PlayerPedId()) == weaponHash
end

local function ManageFuelUsage(vehicle)
	if not DecorExistOn(vehicle, Config.FuelDecor) then
		SetFuel(vehicle, math.random(200, 800) / 10)
	elseif not fuelSynced then
		SetFuel(vehicle, GetFuel(vehicle))
		fuelSynced = true
	end
	if IsVehicleEngineOn(vehicle) then
		SetFuel(vehicle, GetVehicleFuelLevel(vehicle) - Config.FuelUsage[Round(GetVehicleCurrentRpm(vehicle), 1)] * (Config.Classes[GetVehicleClass(vehicle)] or 1.0) / 10)
		SetVehicleEngineOn(veh, true, true, true)
	else
		SetVehicleEngineOn(veh, true, true, true)
	end
end

-- Threads

CreateThread(function()
	local bones = {
		"petroltank",
		"petroltank_l",
		"petroltank_r",
		"wheel_rf",
		"wheel_rr",
		"petrolcap ",
		"seat_dside_r",
		"engine",
	}
	exports['qb-target']:AddTargetBone(bones, {
		options = {
			{
				type = "client",
				event = "qb-fuel:client:PayFuel",
				icon = "fas fa-gas-pump",
				label = "Refuel Vehicle",
				canInteract = function()
					return nozzleInHand or HasPedGotWeapon(PlayerPedId(), 883325847)
				end
			}
		},
		distance = 1.5,
	})
end)

if Config.LeaveEngineRunning then
	CreateThread(function()
		while true do
			Wait(100)
			local ped = PlayerPedId()
			if DoesEntityExist(ped) and IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) and not IsPauseMenuActive() then
				local engineWasRunning = GetIsVehicleEngineRunning(GetVehiclePedIsIn(ped, true))
				Wait(1000)
				if DoesEntityExist(ped) and not IsPedInAnyVehicle(ped, false) and not IsEntityDead(ped) and not IsPauseMenuActive() then
					local veh = GetVehiclePedIsIn(ped, true)
					if engineWasRunning then
						SetVehicleEngineOn(veh, true, true, true)
					end
				end
			end
		end
	end)
end

if Config.ShowNearestGasStationOnly then
	CreateThread(function()
		local currentGasBlip = 0
		while true do
			local coords = GetEntityCoords(PlayerPedId())
			local closest = 1000
			local closestCoords

			for _, gasStationCoords in pairs(Config.GasStationsBlips) do
				local dstcheck = #(coords - gasStationCoords)
				if dstcheck < closest then
					closest = dstcheck
					closestCoords = gasStationCoords
				end
			end
			if DoesBlipExist(currentGasBlip) then
				RemoveBlip(currentGasBlip)
			end
			currentGasBlip = CreateBlip(closestCoords)
			Wait(10000)
		end
	end)

else
	CreateThread(function()
		for _, gasStationCoords in pairs(Config.GasStationsBlips) do
			CreateBlip(gasStationCoords)
		end
	end)
end

CreateThread(function()
	for k=1, #Config.GasStations do
		Stations[k] = PolyZone:Create(Config.GasStations[k].zones, {
			name="GasStation"..k,
			minZ = 	Config.GasStations[k].minz,
			maxZ = Config.GasStations[k].maxz,
			debugPoly = false
		})
		Stations[k]:onPlayerInOut(function(isPointInside)
			if isPointInside then
				inGasStation = true
			else
				inGasStation = false
			end
		end)
	end
end)

CreateThread(function()
	DecorRegister(Config.FuelDecor, 1)
	for index = 1, #Config.Blacklist do
		if type(Config.Blacklist[index]) == 'string' then
			Config.Blacklist[GetHashKey(Config.Blacklist[index])] = true
		else
			Config.Blacklist[Config.Blacklist[index]] = true
		end
	end
	for index = #Config.Blacklist, 1, -1 do
		Config.Blacklist[index] = nil
	end
	while true do
		Wait(1000)
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			local vehicle = GetVehiclePedIsIn(ped)
			if Config.Blacklist[GetEntityModel(vehicle)] then
				inBlacklisted = true
			else
				inBlacklisted = false
			end
			if not inBlacklisted and GetPedInVehicleSeat(vehicle, -1) == ped then
				ManageFuelUsage(vehicle)
			end
		else
			if fuelSynced then
				fuelSynced = false
			end
			if inBlacklisted then
				inBlacklisted = false
			end
		end
	end
end)

-- Client Events

RegisterNetEvent('qb-fuel:client:grabNozzleFromPump', function(data)
	local ped = PlayerPedId()
	if nozzleInHand then return end
	LoadAnimDict("anim@am_hold_up@male")
    TaskPlayAnim(ped, "anim@am_hold_up@male", "shoplift_high", 2.0, 8.0, -1, 50, 0, 0, 0, 0)
	nozzle = CreateObject(GetHashKey('prop_cs_fuel_nozle'), 1.0, 1.0, 1.0, true, true, false)
	AttachEntityToEntity(nozzle, ped, GetPedBoneIndex(ped, 18905), 0.13, 0.04, 0.01, -42.0, -115.0, -63.42, 0, 1, 0, 1, 0, 1)
	local pumpCoords = GetEntityCoords(data.entity)
	nozzleInHand = true
	Citizen.CreateThread(function()
		while nozzleInHand do
			local currentcoords = GetEntityCoords(ped)
			local dist = #(pumpCoords - currentcoords)
			if dist > 5.0 then
				isPaid = false
				RefuelDisabled = true
				nozzleInHand = false
				DeleteObject(nozzle)
			end
			Wait(2500)
		end
	end)
end)

RegisterNetEvent('qb-fuel:client:returnNozzle', function()
	if nozzleInHand then
		nozzleInHand = false
		DeleteObject(nozzle)
	end
end)

RegisterNetEvent('qb-fuel:client:buyCanMenu', function(data)
	local tax = GlobalTax(Config.fuelPrice)
	local total = math.ceil(Config.fuelPrice + tax)
	exports['qb-menu']:openMenu({
		{
			header = "Gas Pump",
			txt = 'Select the kind of fuel you want to use',
			icon = 'fas fa-circle-exclamation',
			isMenuHeader = true
		},
		{
			header = "Regular",
			txt = 'Octane: 87 | Price: '..total,
			icon = 'fas fa-gas-pump',
			params = {
				event = "qb-fuel:client:grabNozzleFromPump",
				args = {
					entity = data.entity
				}
			}
		},
	})
end)

RegisterNetEvent('qb-fuel:client:buyCan', function()
	local ped = PlayerPedId()
	if not HasPedGotWeapon(ped, 883325847) then
		QBCore.Functions.TriggerCallback('qb-fuel:server:fuelCanPurchase', function(hasMoney)
			if hasMoney then
				TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_petrolcan"], "add") -- Just put this here so the if statement don't feel empty.
			end
		end)
	end
end)

RegisterNetEvent('qb-fuel:client:refuelCanMenu', function()
	local ped = PlayerPedId()
	local price = 0
	local weapon = GetSelectedPedWeapon(PlayerPedId())
	local ammo = GetAmmoInPedWeapon(PlayerPedId(), weapon)
	local ammotoAdd = 4500 - ammo

	local fuelToAdd = tonumber(ammotoAdd/45)
	if fuelToAdd ~= 0 then
		price = math.floor(fuelToAdd * Config.fuelPrice)
		exports['qb-menu']:openMenu({
			{
				header = "Gas Station",
				txt = "The total cost of refueling the Gas can will be "..price.."$",
				params = {
					event = "qb-fuel:client:refuelCan",
				}
			},
		})
	else
		QBCore.Functions.Notify(Lang:t("already_full"), "error")
	end
end)

RegisterNetEvent('qb-fuel:client:refuelCan', function()
	local vehicle = QBCore.Functions.GetClosestVehicle()
	local ped = PlayerPedId()
	local CurFuel = GetVehicleFuelLevel(vehicle)
	if HasPedGotWeapon(ped, 883325847) then
		if GetAmmoInPedWeapon(ped, 883325847) < 4500 then
			RequestAnimDict("weapon@w_sp_jerrycan")
			while not HasAnimDictLoaded('weapon@w_sp_jerrycan') do Wait(100) end
			TaskPlayAnim(ped, "weapon@w_sp_jerrycan", "fire", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
			QBCore.Functions.Progressbar("refuel-car", "Refueling", 10000, false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				TriggerServerEvent('qb-fuel:server:PayForFuel', Config.refuelCost, GetPlayerServerId(PlayerId()))
				TriggerServerEvent("weapons:server:UpdateWeaponAmmo", CurrentWeaponData, tonumber(4500))
				PlaySound(-1, "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1)
				StopAnimTask(ped, "weapon@w_sp_jerrycan", "fire", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
			end, function() -- Cancel
				QBCore.Functions.Notify(Lang:t("notify.refuel_cancel"), "error")
				StopAnimTask(ped, "weapon@w_sp_jerrycan", "fire", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
			end)
		else
			QBCore.Functions.Notify(Lang:t("notify.jerrycan_full"), "error")
		end
	end
end)

RegisterNetEvent('qb-fuel:client:PayFuel', function()
	local vehicle = QBCore.Functions.GetClosestVehicle()
	local CurFuel = math.floor(GetFuel(vehicle))
	local refillCost = Round(Config.RefillCost - CurFuel) * Config.CostMultiplier
	local ped = PlayerPedId()
	local tax = GlobalTax(refillCost)
	local total = math.ceil(refillCost + tax)
	if HasPedGotWeapon(ped, 883325847) then
		print("has weapon")
		if GetAmmoInPedWeapon(ped, 883325847) ~= 0 then
			print("Got ammo and more then 0")
			if CurFuel < 95 then
				print("off to client dumbass fucking devs")
				TriggerEvent("qb-fuel:client:RefuelVehicle")
			else
				QBCore.Functions.Notify(Lang:t("notify.vehicle_full"), "error")
			end
		else
			QBCore.Functions.Notify(Lang:t("notify.jerrycan_empty"), "error")
		end
	else
		if CurFuel < 95 then
			exports['qb-menu']:openMenu({
				{
					header = "Refuel Vehicle",
					txt = 'Fuel Amount: '.. math.floor(GetFuel(vehicle)) .. ' | Total Cost: $'..total,
					icon = 'fas fa-circle-exclamation',
					isMenuHeader = true
				},
				{
					header = "Start Refueling",
					txt = '',
					icon = 'fas fa-gas-pump',
					disabled = RefuelDisabled,
					params = {
						event = "qb-fuel:client:RefuelVehicle",
					}
				},
				{
					header = "Send bill",
					txt = '',
					icon = 'fas fa-credit-card',
					disabled = isPaid,
					params = {
						event = "qb-fuel:client:sendBill",
						args = {
							totalcost = refillCost
						}
					}
				},
			})
		else
			QBCore.Functions.Notify(Lang:t("notify.vehicle_full"), "error")
		end
	end
end)

AddEventHandler('qb-fuel:client:sendBill', function(data)
	local tax = GlobalTax(data.totalcost)
	local total = math.ceil(data.totalcost + tax)
	local success = exports['qb-phone']:PhoneNotification("GAS STATION", 'Fuel Cost: $'..total, 'fas fa-gas-pump', '#b3e0f2', "NONE", 'fas fa-check-circle', 'fas fa-times-circle')
	if success then
		if QBCore.Functions.GetPlayerData().money['cash'] <= total then
			QBCore.Functions.Notify(Lang:t("notify.no_money"), "error")
		else
			TriggerServerEvent('qb-fuel:server:PayFuel', data.totalcost, inGasStation, false)
			RefuelDisabled = false
			isPaid = true
		end
	end
end)

AddEventHandler('weapons:client:SetCurrentWeapon', function(data, bool)
	if bool ~= false then
		CurrentWeaponData = data
	else
		CurrentWeaponData = {}
	end
	CanShoot = bool
end)

RegisterNetEvent('qb-fuel:client:RefuelVehicle', function()
	local gasProp = 0
	local ped = PlayerPedId()
	local vehicle = QBCore.Functions.GetClosestVehicle()
	local ped = PlayerPedId()
	local CurFuel = GetFuel(vehicle)
	local time = (100 - CurFuel) * 400
	local vehicleCoords = GetEntityCoords(vehicle)
	if inGasStation == false and not HasPedGotWeapon(ped, 883325847) then
	elseif inGasStation == false and GetAmmoInPedWeapon(ped, 883325847) == 0 then
		return
	end
	if HasPedGotWeapon(ped, 883325847) then
		local fuelToAdd = tonumber((100 - CurFuel) * 45)
		local weapon = GetSelectedPedWeapon(PlayerPedId())
		local ammo = GetAmmoInPedWeapon(PlayerPedId(), weapon)
		if fuelToAdd == 0 then
			QBCore.Functions.Notify("Vehicle already full", "error")
			return
		end
		if ammo <= 40 then
			QBCore.Functions.Notify("No fuel in gas can", "error")
		else
			RequestAnimDict("weapon@w_sp_jerrycan")
			while not HasAnimDictLoaded('weapon@w_sp_jerrycan') do
				Wait(100)
			end
			TaskPlayAnim(ped, "weapon@w_sp_jerrycan", "fire", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
			if GetIsVehicleEngineRunning(vehicle) and Config.VehicleBlowUp then
				local Chance = math.random(1, 100)
				if Chance <= Config.BlowUpChance then
					AddExplosion(vehicleCoords, 5, 50.0, true, false, true)
					return
				end
			end
			TriggerEvent("qb-fuel:client:fuelTick", vehicle)
			QBCore.Functions.Progressbar("refuel-car", "Refueling", time, false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				SetFuel(vehicle, 100)
				local totalAmmo = math.floor(math.abs(ammo - fuelToAdd))
				print(totalAmmo)
				if totalAmmo < 0 then
					totalAmmo = 0
				end
				QBCore.Functions.Notify("Removed Fuel Can - Scuffy Iknow.", "error")
				TriggerServerEvent("qb-smallresources:server:RemoveItem", "WEAPON_PETROLCAN", 1)
				TriggerServerEvent("weapons:server:UpdateWeaponAmmo", CurrentWeaponData, 0) 
				PlaySound(-1, "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1)
				StopAnimTask(ped, "weapon@w_sp_jerrycan", "fire", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
				isFueling = false
			end, function() -- Cancel
				QBCore.Functions.Notify(Lang:t("notify.refuel_cancel"), "error")
				StopAnimTask(ped, "weapon@w_sp_jerrycan", "fire", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
			end)
		end
	else
		if inGasStation then
			if isCloseVeh() then
				if isPaid then
					TaskTurnPedToFaceEntity(ped, vehicle, 1000)
					Wait(1000)
					RequestAnimDict("timetable@gardener@filling_can")
					while not HasAnimDictLoaded('timetable@gardener@filling_can') do Wait(100) end
					TaskPlayAnim(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )

					if GetIsVehicleEngineRunning(vehicle) and Config.VehicleBlowUp then
						local Chance = math.random(1, 100)
						if Chance <= Config.BlowUpChance then
							AddExplosion(vehicleCoords, 5, 50.0, true, false, true)
							return
						end
					end
					QBCore.Functions.Progressbar("refuel-car", "Refueling", time, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
					}, {}, {}, {}, function() -- Done
						isPaid = false
						RefuelDisabled = true
						SetFuel(vehicle, 100)
						PlaySound(-1, "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1)
						StopAnimTask(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
					end, function() -- Cancel
						QBCore.Functions.Notify(Lang:t("notify.refuel_cancel"), "error")
						StopAnimTask(ped, "timetable@gardener@filling_can", "gar_ig_5_filling_can", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
					end)
				end
			end
		end
	end
end)

-- Target Export

exports['qb-target']:AddTargetModel(props, {
	options = {
		{
			num = 2,
			type = "client",
			event = "qb-fuel:client:returnNozzle",
			icon = "fas fa-hand-holding",
			label = "Return Hose",
			canInteract = function(entity)
				return nozzleInHand
			end,
		},
		{
			num = 1,
			type = "client",
			event = "qb-fuel:client:buyCanMenu",
			icon = "fas fa-gas-pump",
			label = "Refill Vehicle",
			canInteract = function(entity)
				return not nozzleInHand
			end,
		},
		{
			num = 3,
			type = "client",
			event = "qb-fuel:client:buyCan",
			icon = "fas fa-gas-pump",
			label = "Buy Jerry Can",
			canInteract = function(entity)
				return not isHoldingWeapon(GetHashKey("weapon_petrolcan"))
			end
		},
		{
			num = 4,
			type = "client",
			event = "qb-fuel:client:refuelCanMenu",
			icon = "fas fa-gas-pump",
			label = "Refuel Jerry Can",
			canInteract = function(entity)
				return isHoldingWeapon(GetHashKey("weapon_petrolcan"))
			end,
		},
	},
	distance = 2.0
})
