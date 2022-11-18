local carBombActive, carHasBomb, listening = false, false, false
local bombTick, Duration = 0, 0
local FoundBombs = {}
local VehTarget = nil
local Mercy = exports[Config.Settings['CoreName']]:GetCoreObject()

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    Citizen.CreateThread(CreateTarget)
end)

--[[ AddEventHandler('onResourceStart', function(resource)
    Citizen.CreateThread(CreateTarget)
end)
 ]]
RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    exports[Config.Settings['TargetName']]:RemoveGlobalVehicle(VehTarget)
end)

-- [ Code ] --

-- [ Functions ] --

function CreateTarget()
    VehTarget = exports[Config.Settings['TargetName']]:AddGlobalVehicle({
        options = { 
            { 
                num = 1, 
                type = "client", 
                icon = 'fas fa-cut', 
                label = 'Defuse Car Bomb',  
                
                action = function(entity) 
                    TriggerEvent('mc-carbombs/client/try-remove', entity) 
                end,
                canInteract = function(entity, distance, data) 
                    return isThisVehicleABomb(NetworkGetNetworkIdFromEntity(entity)) 
                end,
            }
        },
        distance = 1.8,
    })
end



local function getVehicleSpeed(pEntity)
    if Config.Settings['SpeedType']:lower() == 'mph' then
        return GetEntitySpeed(pEntity) * 2.236936
    else
        return GetEntitySpeed(pEntity) * 3.6
    end
end

local function doTickNoise(pEntity)
    PlaySoundFromEntity(-1, 'Beep_Red', pEntity, 'DLC_HEIST_HACKING_SNAKE_SOUNDS', true, 10)
    bombTick = bombTick + 1
end

local function stopTickNoise(pEntity)
    bombTick = 0
end

local function resetCarBombState()
    listening = false
    carBombActive = false
    carHasBomb = false
    bombTick = 0
    Duration = 0
end

local function explodeVehicle(pEntity)
    TriggerServerEvent('mc-carbombs/server/sync-explosion', pEntity)
    TriggerServerEvent('mc-carbombs/server/remove', NetworkGetNetworkIdFromEntity(pEntity))
    FoundBombs[NetworkGetNetworkIdFromEntity(pEntity)] = nil
end

local function listenForBombTick(pEntity, pMinSpeed, pTicksBeforeExplode, pTicksForRemoval)
    if listening then return end
    listening = true
    Citizen.CreateThread(function()
        while listening do
            if not DoesEntityExist(pEntity) then
                resetCarBombState()
                break
            end

            if carHasBomb and not carBombActive and getVehicleSpeed(pEntity) > pMinSpeed then
                carBombActive = true
                Mercy.Functions.Notify('Bomb activated - Do not leave the vehicle - Keep Vehicle Above: '.. pMinSpeed, 'success', 10000)
            end

            if Duration >= pTicksForRemoval then
                resetCarBombState()
                Mercy.Functions.Notify('Bomb deactivated', 'success', 10000)
                TriggerServerEvent('mc-carbombs/server/remove', NetworkGetNetworkIdFromEntity(pEntity))
                FoundBombs[NetworkGetNetworkIdFromEntity(pEntity)] = nil
                break
            end

            if carBombActive and getVehicleSpeed(pEntity) < pMinSpeed then
                doTickNoise(pEntity)
            elseif getVehicleSpeed(pEntity) > pMinSpeed and bombTick > 0 then
                stopTickNoise(pEntity)
            end

            if bombTick > pTicksBeforeExplode then
                resetCarBombState()
                explodeVehicle(pEntity)
            end

            Duration = Duration + 1
            Wait(1000)
        end
    end)
end

local function RequestAnimationDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
end

function TargetVehicle()
    local playerped = PlayerPedId()
    local coordA = GetEntityCoords(playerped, 1)
    local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
    local targetVehicle = getVehicleInDirection(coordA, coordB)
    return targetVehicle
end
  
function getVehicleInDirection(coordFrom, coordTo)
    local offset = 0
    local rayHandle
    local vehicle
    for i = 0, 100 do
        rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z + offset, 2, PlayerPedId(), 0)
        a, b, c, d, vehicle = GetRaycastResult(rayHandle)
        offset = offset - 1
        if vehicle ~= 0 then break end
    end
    local distance = Vdist2(coordFrom, GetEntityCoords(vehicle))
    if distance > 25 then vehicle = nil end
    return vehicle ~= nil and vehicle or 0
end

local function checkForCarBomb(pEntity)
    if not DoesEntityExist(pEntity) then return end
    RequestAnimationDict("missexile3")
    TaskPlayAnim(PlayerPedId(), "missexile3", "ex03_dingy_search_case_a_michael", 1.0, 1.0, -1, 1, -1, 0, 0, 0)
    Mercy.Functions.Progressbar("searching_carbomb", 'Searching for car bomb...', 1000 * Config.Settings['TaskbarTime'], false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        Mercy.Functions.TriggerCallback('mc-carbombs/server/get-data-from-netid', function(metaData)
            if metaData == nil then return Mercy.Functions.Notify('There seems to be no bomb on this vehicle.', 'error') end
            local carBombMeta = metaData.carBombData or false
            if carBombMeta and carBombMeta.hasCarBomb then
                TriggerServerEvent('mc-carbombs/server/found', NetworkGetNetworkIdFromEntity(pEntity), carBombMeta)
                return Mercy.Functions.Notify('Looks like there is a car bomb on this vehicle', 'error')
            end
            return Mercy.Functions.Notify('There seems to be no bomb on this vehicle.', 'error')
        end, NetworkGetNetworkIdFromEntity(pEntity))
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        Mercy.Functions.Notify('Canceled..', 'error')
    end)
end

function isThisVehicleABomb(pNetID)
    for k, v in pairs(FoundBombs) do
        if k == pNetID then
            return true
        end
    end
    return false
end

-- [ Threads ] --
RegisterNetEvent("mc-carbombs/client/use-bomb", function(IsMirror)
    local vehicle = TargetVehicle()
    if vehicle == 0 then return end
    if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId(), true), GetEntityCoords(vehicle), false) > 3.0 then return end

    if IsMirror then
        return checkForCarBomb(vehicle)
    end

    TaskStartScenarioInPlace(PlayerPedId(), 'CODE_HUMAN_MEDIC_KNEEL', 0, false)
    local getSpeedType = Config.Settings['SpeedType']:lower() == 'mph' and 'MPH' or 'KMH'
    local Elements = {
        header = "Place Bomb", 
        rows = {
            {label = 'Min Speed (' .. getSpeedType .. ')', type = "number", icon = "time"},
            {label = 'Ticks before explosion (Seconds)', type = "number", icon = "time"},
            {label = 'Removal Length (Seconds)', type = "number", icon = "time"},
            {label = 'Grid Size (5-12)', type = "number", icon = "time"},
            {label = 'Time To Complete (10-30 Seconds)', type = "number", icon = "time"},
        },
    }
	local Keyboard, MinSpeedd, TicksExplode, RemovalTime, Grid, TimeComp = exports["rhodinium-keyboard"]:Keyboard(Elements)
    if not Keyboard then
        ClearPedTasks(PlayerPedId())
        return
    end

    local minSpeed = tonumber(MinSpeedd) or 0
    if minSpeed <= 1 then
        return Mercy.Functions.Notify('Min speed must be more than 1 MPH', 'error')
    end

    local ticksBeforeExplode = tonumber(TicksExplode) or 0
    if ticksBeforeExplode < 5 then
        return Mercy.Functions.Notify('Min ticks before explosion needs to be more than 5..', 'error')
    end

    local ticksForRemoval = tonumber(RemovalTime) or 0
    if ticksForRemoval < 5 then
        return Mercy.Functions.Notify('Removal duration needs to be more than 5..', 'error')
    end

    local gridSize = tonumber(Grid)
    if gridSize > 12 or gridSize < 5 then
        return Mercy.Functions.Notify("Grid size must be between 5-12..", 'error')
    end

    local timeToComplete = tonumber(TimeComp) * 1000
    if timeToComplete < 10000 or timeToComplete > 30000 then
        return Mercy.Functions.Notify("Time to complete must be between 10-30 seconds..", 'error')
    end

    Mercy.Functions.Progressbar("use_carbomb", 'Planting car bomb...', 1000 * Config.Settings['TaskbarTime'], false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        print(vehicle)
        local netId = NetworkGetNetworkIdFromEntity(vehicle) 
        Mercy.Functions.TriggerCallback('mc-carbombs/server/add', function(Planted) 
            if Planted then
                return Mercy.Functions.Notify('Successfully added car bomb to vehicle', 'success')
            else
                return Mercy.Functions.Notify('Failed to plant bomb..', 'error')
            end
        end, netId, minSpeed, ticksBeforeExplode, ticksForRemoval, gridSize, 0, timeToComplete)
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        Mercy.Functions.Notify('Canceled..', 'error')
    end)
end)

-- [ Events ] --

local isInVehicle = false
local isEnteringVehicle = false
local currentVehicle = 0
local currentSeat = 0

CreateThread(function()
	while true do
		Wait(0)

		local ped = PlayerPedId()

		if not isInVehicle and not IsPlayerDead(PlayerId()) then
			if DoesEntityExist(GetVehiclePedIsTryingToEnter(ped)) and not isEnteringVehicle then
				-- trying to enter a vehicle!
				local vehicle = GetVehiclePedIsTryingToEnter(ped)
				local seat = GetSeatPedIsTryingToEnter(ped)
				local netId = VehToNet(vehicle)
				isEnteringVehicle = true
				TriggerEvent('baseevents:enteringVehicle-bomb', vehicle, seat, GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)), netId)
			elseif not DoesEntityExist(GetVehiclePedIsTryingToEnter(ped)) and not IsPedInAnyVehicle(ped, true) and isEnteringVehicle then
				-- vehicle entering aborted
				TriggerEvent('baseevents:enteringAborted-bomb')
				isEnteringVehicle = false
			elseif IsPedInAnyVehicle(ped, false) then
				-- suddenly appeared in a vehicle, possible teleport
				isEnteringVehicle = false
				isInVehicle = true
				currentVehicle = GetVehiclePedIsUsing(ped)
				currentSeat = GetPedVehicleSeat(ped)
				local model = GetEntityModel(currentVehicle)
				local name = GetDisplayNameFromVehicleModel()
				local netId = VehToNet(currentVehicle)
				TriggerEvent('baseevents:enteredVehicle-bomb', currentVehicle, currentSeat, GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle)), netId)
			end
		elseif isInVehicle then
			if not IsPedInAnyVehicle(ped, false) or IsPlayerDead(PlayerId()) then
				-- bye, vehicle
				local model = GetEntityModel(currentVehicle)
				local name = GetDisplayNameFromVehicleModel()
				local netId = VehToNet(currentVehicle)
				TriggerEvent('baseevents:leftVehicle-bomb', currentVehicle, currentSeat, GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle)), netId)
				isInVehicle = false
				currentVehicle = 0
				currentSeat = 0
			end
		end
		Wait(50)
	end
end)

function GetPedVehicleSeat(ped)
    local vehicle = GetVehiclePedIsIn(ped, false)
    for i=-2,GetVehicleMaxNumberOfPassengers(vehicle) do
        if(GetPedInVehicleSeat(vehicle, i) == ped) then return i end
    end
    return -2
end

RegisterNetEvent("mc-carbombs/client/sync-explosion", function(pEntity)
    NetworkExplodeVehicle(pEntity, true, false, false)
end)

AddEventHandler('baseevents:enteredVehicle-bomb', function(pEntity, pSeat, pName, pClass, pModel)
    if pSeat ~= -1 then return end

    Mercy.Functions.TriggerCallback('mc-carbombs/server/get-data-from-netid', function(metaData)
        if metaData == nil then return end
        local carBombMeta = metaData.carBombData or false
        if carBombMeta and carBombMeta.hasCarBomb and not carBombActive then
            listenForBombTick(pEntity, carBombMeta.minSpeed, carBombMeta.ticksBeforeExplode, carBombMeta.ticksForRemoval)
            carHasBomb = true
        end
    end, NetworkGetNetworkIdFromEntity(pEntity))
end)

AddEventHandler('baseevents:leftVehicle-bomb', function(pEntity, pSeat, pName, pClass, pModel)
    Mercy.Functions.TriggerCallback('mc-carbombs/server/get-data-from-netid', function(metaData)
        if metaData == nil then return end

        local carBombMeta = metaData.carBombData or false
        if carBombMeta and carBombMeta.hasCarBomb and carBombActive then
            resetCarBombState()
            explodeVehicle(pEntity)
        end

        resetCarBombState()
    end, NetworkGetNetworkIdFromEntity(pEntity))
end)

RegisterNetEvent("mc-carbombs/client/foundAll", function(pNetTable)
    local carBombMeta = pNetTable.carBombData or false
    if carBombMeta then
        FoundBombs[carBombMeta.netId] = {
            carBombData = {
                netId = carBombMeta.netId,
                minSpeed = carBombMeta.minSpeed,
                ticksBeforeExplode = carBombMeta.ticksBeforeExplode,
                ticksForRemoval = carBombMeta.ticksForRemoval,
                gridSize = carBombMeta.gridSize,
                coloredSquares = carBombMeta.coloredSquares,
                timeToComplete = carBombMeta.timeToComplete,
                hasCarBomb = carBombMeta.hasCarBomb,
            }
        }
    end
end)

AddEventHandler('mc-carbombs/client/try-remove', function(pEntity)
    Mercy.Functions.TriggerCallback('mc-carbombs/server/get-data-from-netid', function(metaData)
        local carBombMeta = metaData.carBombData or false
        if carBombMeta and carBombMeta.hasCarBomb then
            local myNetIdentifier = NetworkGetNetworkIdFromEntity(pEntity)
            TaskStartScenarioInPlace(PlayerPedId(), 'CODE_HUMAN_MEDIC_KNEEL', 0, false)
            TriggerServerEvent('mc-carbombs/server/remove', myNetIdentifier)
            FoundBombs[myNetIdentifier] = nil
            exports['rhodinium-thermite']:OpenThermiteGame(function(success)
                if success then
                    ClearPedTasks(PlayerPedId())
                    Mercy.Functions.Notify('Bomb has been removed from vehicle', 'success')
                    TriggerEvent("player:receiveItem", "car_bomb_defused", 1)
                    Mercy.Functions.TriggerCallback('mc-carbombs/server/give-bomb', function(result) end)
                else
                    ClearPedTasks(PlayerPedId())
                    explodeVehicle(pEntity)
                    resetCarBombState()
                end
            end, carBombMeta.gridSize or 5, 1, carBombMeta.timeToComplete or 14000 / 1000)
        end
    end, NetworkGetNetworkIdFromEntity(pEntity))
end)
