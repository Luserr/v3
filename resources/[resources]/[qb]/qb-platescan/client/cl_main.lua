local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = nil
local lastVeh = nil
local lastPlate = nil

local class = {
    [0] = Lang:t('info.class.compact'),
    [1] = Lang:t('info.class.sedan'),
    [2] = Lang:t('info.class.suv'),
    [3] = Lang:t('info.class.coupe'),
    [4] = Lang:t('info.class.muscle'),
    [5] = Lang:t('info.class.sports_classic'),
    [6] = Lang:t('info.class.sports'),
    [7] = Lang:t('info.class.super'),
    [8] = Lang:t('info.class.motorcycle'),
    [9] = Lang:t('info.class.offroad'),
    [10] = Lang:t('info.class.industrial'),
    [11] = Lang:t('info.class.utility'),
    [12] = Lang:t('info.class.van'),
    [17] = Lang:t('info.class.service'),
    [19] = Lang:t('info.class.military'),
    [20] = Lang:t('info.class.truck'),
}

local function vehicleData(vehicle)
	local vData = {
		name = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))),
		class = class[GetVehicleClass(vehicle)],
	}
	return vData
end

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
		local PlayerData = QBCore.Functions.GetPlayerData()
        PlayerJob = PlayerData.job
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = nil
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    PlayerJob = PlayerData.job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    local PlayerData = QBCore.Functions.GetPlayerData()
    PlayerJob = PlayerData.job
end)

RegisterNetEvent("qb-platescan:client:AddStolenPlate", function(veh, plate)
    if PlayerJob.name ~= "police" then
		if math.random(1, 100) < 75 then
			local vehicle = vehicleData(veh)
			local vData = {
				veh = veh,
				plate = plate,
				name = vehicle.name,
				class = vehicle.class,
			}
			if Config.Debug then print("Plate marked as stolen") end
			TriggerServerEvent("qb-platescan:server:AddStolenPlate", vData)
		else
			if Config.Debug then print("Stolen status ignored") end
		end
	end
end)

RegisterNetEvent("qb-platescan:client:ScanPlate", function(vData, cam, locked)
	local pData, scanStatus, plateStatus
	local flagReason = {}
	if Config.Debug then print(json.encode(vData)) end
	if vData.warrant or vData.stolen or vData.bolo then
		scanStatus = "bad"
		plateStatus = Lang:t('info.status.flagged')
		if vData.warrant then table.insert(flagReason, Lang:t('info.status.warrant')) end
		if vData.stolen then table.insert(flagReason, Lang:t('info.status.stolen')) end
		if vData.bolo then table.insert(flagReason, Lang:t('info.status.bolo')) end
		if Config.LockOnFlag and not locked then
			TriggerEvent("wk:togglePlateLock", cam, true, true)
		end
	else
		scanStatus = "good"
		plateStatus = Lang:t('info.status.negative')
	end
	PlaySound(-1, Config.GTAVSounds[scanStatus].name, Config.GTAVSounds[scanStatus].ref, false, 0, false)
	pData = {
		length = Config.NotifDuration,
		netId = vData.id,
		info = ('[%s]'):format(vData.plate),
		info2 = vData.owner,
		info3 = vData.name..", "..vData.class,
		plateStatus = plateStatus,
		flagReason = flagReason,
	}
	SendNUIMessage({
		action = 'display',
		info = pData,
		type = scanStatus,
		length = pData.length
	})
end)

RegisterCommand('+platescan', function()
	if PlayerJob.name ~= "police" then return end
	if not IsPedInAnyPoliceVehicle(PlayerPedId()) then return end
	if exports["qb-phone"]:IsPhoneOpen() or IsPauseMenuActive() or IsAimCamActive() then return end
	local data, vData, vehicle = exports["wk_wars2x"]:GetFrontPlate(), {}
	if data.veh ~= nil and data.veh ~= 0 then
		lastVeh = data.veh
		lastPlate = data.plate
		vehicle = vehicleData(data.veh)
		vData = {
			locked = data.locked,
			cam = data.cam,
			veh = data.veh,
			plate = data.plate,
			name = vehicle.name,
			class = vehicle.class,
		}
	else
		vehicle = vehicleData(lastVeh)
		vData = {
			locked = data.locked,
			cam = data.cam,
			veh = lastVeh,
			plate = lastPlate,
			name = vehicle.name,
			class = vehicle.class,
		}
	end
	TriggerServerEvent("qb-platescan:server:ScanPlate", vData) 
end)

Citizen.CreateThread(function()
	-- Register Keybinds
    exports["rhodinium-callbacks"]:registerKeyMapping("", "police", "Scan Plate (Police)", "+platescan", "-platescan", 'Y' )
    --RegisterCommand("+switchWeaponMode", SwitchWeaponMode, false)
    RegisterCommand("-platescan", function() end, false)
end)
--RegisterKeyMapping('+platescan', 'Scan Plate (Police)', 'keyboard', 'Y')