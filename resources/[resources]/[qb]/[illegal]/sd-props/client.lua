local QBCore = exports['qb-core']:GetCoreObject()

local HasItem = false
local CurrentProp, HasProp = nil, false
local slots = 40
local items = {}
local CurrentProps = {}
local checking = false
local lastProp = nil
local invehicle = false
-- FUNCTIONS

function startPropsLoop()
    CreateThread(function()
        while true do
            local player = QBCore.Functions.GetPlayerData()
            while player == nil do
                player = QBCore.Functions.GetPlayerData()
                Wait(500)
            end
            for i = 1, slots do
                items[i] = player.items[i]
            end
            checkProps()
            Wait(1000)
        end
    end)
end

function checkProps()
    for i = 1, slots do
        if items[i] ~= nil then
            local name = items[i].name
            if Config.PropList[name] and CurrentProp == nil then
                HasItem = true
                AddPropToHands(name)
                disableControls()
            end
        end
    end

    local hasItem = false
    for j = 1, slots do
        if items[j] ~= nil then
            local name = items[j].name
            if name == lastProp then
                hasItem = true
            end
        end
    end
    if not hasItem then
        RemovePropFromHands()
    end
end

function AddPropToHands(PropName)
    lastProp = PropName
    AddProp(PropName)
    CreateThread(function()
        while HasItem do
            if not IsEntityPlayingAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 3) then
                RequestAnimationDict("anim@heists@box_carry@")
                TaskPlayAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
            end
            Wait(500)
        end
    end)
end

function disableControls()
    CreateThread(function()
        while HasItem do
            if invehicle == nil then
				invehicle = false
			end

			if IsPedGettingIntoAVehicle(PlayerPedId()) and HasItem then
				QBCore.Functions.Notify("Cannot get in the car holding this.", 'error')
				ClearPedTasksImmediately(PlayerPedId())
			end

            if not invehicle and IsPedInAnyVehicle(PlayerPedId(), true) then
				invehicle = true
				if HasItem then
					QBCore.Functions.Notify("Cannot get in the car holding this.", 'error')
					ClearPedTasksImmediately(PlayerPedId())
				end
			end

			if invehicle and not IsPedInAnyVehicle(PlayerPedId(), true) then
				invehicle = false
			end

            if IsPedRunning(PlayerPedId()) or IsPedSprinting(PlayerPedId()) then -- disable running
                SetPlayerControl(PlayerId(), 0, 0)
                Citizen.Wait(1000)
                SetPlayerControl(PlayerId(), 1, 1)
            end
            Wait(300)
        end
    end)
end

function AddProp(Name)
    if Config.PropList[Name] ~= nil then
        if CurrentProp == nil then
            RequestModelHash(Config.PropList[Name]['prop'])
            CurrentProp = CreateObject(Config.PropList[Name]['hash'], 0, 0, 0, true, true, false)
            AttachEntityToEntity(CurrentProp, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), Config.PropList[Name]['bone-index']['bone']), Config.PropList[Name]['bone-index']['X'], Config.PropList[Name]['bone-index']['Y'], Config.PropList[Name]['bone-index']['Z'], Config.PropList[Name]['bone-index']['XR'], Config.PropList[Name]['bone-index']['YR'], Config.PropList[Name]['bone-index']['ZR'], true, true, false, true, 1, true)
            HasProp = true
        end
    end
end

function RemoveProp()
    if CurrentProp ~= nil then
        if HasProp ~= nil then
            DetachEntity(CurrentProp, true, false)
            DeleteEntity(CurrentProp)
            DeleteObject(CurrentProp)
            HasProp = false
            CurrentProp = nil
        end
    end
end

function GetPropStatus()
    return HasProp
end

function GetPropName()
    return lastProp
end


function RemovePropFromHands()
    lastProp = nil
    HasItem = false
    RemoveProp()
    StopAnimTask(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 1.0)
end

-- // Functions \\ --
function ResetAnimSet()
    ResetPedMovementClipset(PlayerPedId())
    ResetPedWeaponMovementClipset(PlayerPedId())
    ResetPedStrafeClipset(PlayerPedId())
end

function RequestAnimationDict(AnimDict)
    RequestAnimDict(AnimDict)
    while not HasAnimDictLoaded(AnimDict) do
        Citizen.Wait(1)
    end
end

function RequestModelHash(Model)
    RequestModel(Model)
    while not HasModelLoaded(Model) do
        Wait(1)
    end
end

-- EVENTS
RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    Wait(5000)
    startPropsLoop()
end)

AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then return end
    startPropsLoop()
end)

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then return end
    RemovePropFromHands()
end)

RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    RemovePropFromHands()
end)

-- EXPORTS
exports("AddProp", AddProp)
exports("RemoveProp", RemoveProp)
exports("GetPropName", GetPropName)
exports("GetPropStatus", GetPropStatus)
exports("RequestAnimationDict", RequestAnimationDict)
exports("RequestModelHash", RequestModelHash)