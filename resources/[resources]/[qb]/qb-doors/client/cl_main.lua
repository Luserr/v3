QBCore = exports['qb-core']:GetCoreObject()
local doors = {}
local currentDoorCoords, currentDoorId, currentDoorLockState, currentZone, CurrentTarget, IsInVehicle = vector3(0, 0, 0), nil, nil, nil, nil, false
local listening = false
local bollards = {
    mrpd_bollards_01 = {
        doorId = 234,
        inside = false
    },
    mrpd_bollards_02 = {
        doorId = 235,
        inside = false
    },
}

local PickableDoors = {
    [106] = {["isStandard"] = false, ["isAdvanced"] = true},
    [108] = {["isStandard"] = true, ["isAdvanced"] = false},
    [112] = {["isStandard"] = false, ["isAdvanced"] = true},
    [113] = {["isStandard"] = false, ["isAdvanced"] = true},
    [114] = {["isStandard"] = false, ["isAdvanced"] = true},
    [115] = {["isStandard"] = false, ["isAdvanced"] = true},
}

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

RegisterNetEvent('doors:initial-states')
AddEventHandler('doors:initial-states', function(pDoors)
    doors = pDoors
    setSecuredAccesses(doors, 'door')
    for doorId, door in ipairs(doors) do
        if doorId ~= door.id then
            print("we should not see this message - door id mismatch", doorId, " - id: ", door.id)
        end
        if door.active and not IsDoorRegisteredWithSystem(doorId) then
            AddDoorToSystem(doorId, door.model, door.coords, false, false, false)
            if door.automatic then
                if door.automatic.distance then
                    DoorSystemSetAutomaticDistance(doorId, door.automatic.distance, 0, 1)
                end
                if door.automatic.rate then
                    DoorSystemSetAutomaticRate(doorId, door.automatic.rate, 0, 1)
                end
            end
            DoorSystemSetDoorState(doorId, door.lock, 0, 1)
        end
    end
end)

RegisterNetEvent('doors:change-lock-state')
AddEventHandler('doors:change-lock-state', function(pDoorId, pDoorLockState, pDoorForceUnlock)
    if doors and doors[pDoorId] then
        doors[pDoorId].lock = pDoorLockState
        doors[pDoorId].forceUnlocked = pDoorForceUnlock
        DoorSystemSetAutomaticRate(pDoorId, 1.0, 0, 0)
        DoorSystemSetDoorState(pDoorId, pDoorLockState, 0, 1)
        if pDoorId == currentDoorId then
            currentDoorLockState = pDoorLockState
        end
    end
end)

local function ListenKeypress()
    listening = true
    Citizen.CreateThread(function()

        local newDoorId, newLockState = currentDoorId

        currentDoorLockState = (DoorSystemGetDoorState(currentDoorId) ~= 0 and true or false)

        local hasAccess = hasSecuredAccess(currentDoorId, 'door')
        print('Door ID: ', currentDoorId)
        while listening do
            
            idle = 0

            if currentDoorId ~= newDoorId then
                currentDoorLockState = (DoorSystemGetDoorState(currentDoorId) ~= 0 and true or false)
                newDoorId = currentDoorId
            end

            if currentDoorLockState ~= newLockState then
                if (#GetOffsetFromEntityGivenWorldCoords(PlayerPedId(), currentDoorCoords)) <= 1.2 then
                    newLockState = currentDoorLockState
                    if hasAccess then
                        exports["qb-ui"]:showInteraction(("[E] %s"):format(newLockState and 'Locked' or 'Unlocked'), newLockState and 'error' or 'success')
                    else
                        exports["qb-ui"]:showInteraction(("%s"):format(newLockState and 'Locked' or 'Unlocked'), newLockState and 'error' or 'success')
                    end
                else
                    idle = 100
                end
            end

            if currentDoorId ~= nil and hasAccess and IsControlJustReleased(0, 38) and #(GetOffsetFromEntityGivenWorldCoords(PlayerPedId(), currentDoorCoords)) <= 1.2 then
                loadAnimDict("anim@heists@keycard@")
                TaskPlayAnim(PlayerPedId(), "anim@heists@keycard@", "exit", 8.0, 1.0, -1, 48, 0, 0, 0, 0)
                TriggerServerEvent("InteractSound_SV:PlayOnSource", "keydoors", 0.2)
                TriggerServerEvent("doors:change-lock-state", currentDoorId, not currentDoorLockState)
            end

            Wait(idle)
        end

        exports["qb-ui"]:hideInteraction((not hasAccess or newLockState) and 'error' or 'success')
    end)
end

AddEventHandler("target:doors", function(pEntity, pEntityType, pEntityCoords)
    if pEntityType == nil or pEntityType ~= 3 then
        listening, currentDoorCoords, currentDoorId, currentDoorLockState = nil
        return
    end

    if printEntityDetails then
        print(pEntity, pEntityType, pEntityCoords, GetEntityModel(pEntity), GetEntityCoords(pEntity))
    end

    local doorId = GetTargetDoorId(pEntity)

    if printEntityDetails then
        print(doorId)
    end

    if (doorId) then
        currentDoorId = doorId
        currentDoorCoords = pEntityCoords

        if not listening then
            ListenKeypress()
        end
    end
end)

Citizen.CreateThread(function()
    local idle = 250
    while true do
        if isLoggedIn then
            PlayerPed = PlayerPedId()

            local entity, entityType, entityCoords = GetEntityPlayerIsLookingAt(1.5, 0.2, 286, PlayerPed)
            TriggerEvent('target:doors', entity, entityType, entityCoords)
        end

        Citizen.Wait(idle)
    end
end)

function GetTargetDoorId(pEntity)
    local activeDoors = DoorSystemGetActive()

    for _, activeDoor in pairs(activeDoors) do
        if activeDoor[2] == pEntity then
            return activeDoor[1]
        end
    end
end

function AllowsKeyFob(pDoorId)
    if not doors[pDoorId] then return false end
    return doors[pDoorId]['keyFob'] == true
end

exports('GetTargetDoorId', GetTargetDoorId)


RegisterNetEvent('lockpicks:UseLockpick')
AddEventHandler('lockpicks:UseLockpick', function(isAdvanced)
    if currentDoorId == nil then return end

    if not PickableDoors[currentDoorId] then
        QBCore.Functions.Notify('This lock is too complicated.', 'error')
    else
        if not isAdvanced and PickableDoors[currentDoorId]["isAdvanced"] then
            QBCore.Functions.Notify('This lock is too strong for this tool.', 'error')
            return
        elseif isAdvanced and PickableDoors[currentDoorId]["isAdvanced"] or PickableDoors[currentDoorId]["isStandard"] then
            TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
        end
    end
end)

function lockpickFinish(success)
    if success then
		QBCore.Functions.Notify('Sucess!', 'success', 2500)
		TriggerServerEvent("doors:change-lock-state", currentDoorId, false)
    else
        QBCore.Functions.Notify('It did not work..', 'error', 2500)
    end
end


--Interact UI
function GetForwardVector(rotation)
    local rot = (math.pi / 180.0) * rotation
    return vector3(-math.sin(rot.z) * math.abs(math.cos(rot.x)), math.cos(rot.z) * math.abs(math.cos(rot.x)), math.sin(rot.x))
end

function RayCast(origin, target, options, ignoreEntity, radius)
    local handle = StartShapeTestSweptSphere(origin.x, origin.y, origin.z, target.x, target.y, target.z, radius, options, ignoreEntity, 0)
    return GetShapeTestResult(handle)
end

function GetEntityPlayerIsLookingAt(pDistance, pRadius, pFlag, pIgnore)
    local distance = pDistance or 3.0
    local originCoords = GetPedBoneCoords(PlayerPedId(), 31086)
    local forwardVectors = GetForwardVector(GetGameplayCamRot(2))
    local forwardCoords = originCoords + (forwardVectors * (IsInVehicle and distance + 1.5 or distance))

    if not forwardVectors then return end

    local _, hit, targetCoords, _, targetEntity = RayCast(originCoords, forwardCoords, pFlag or 286, pIgnore, pRadius or 0.2)

    if not hit and targetEntity == 0 then return end

    local entityType = GetEntityType(targetEntity)

    return targetEntity, entityType, targetCoords
end



--Citizen.CreateThread(function()
--    TriggerServerEvent('doors:request-lock-state')
--end)

function DoKeyFob()
    local doorId, isBollard = -1, false

    if currentZone ~= nil and bollards[currentZone].inside then
        doorId = bollards[currentZone].doorId
        isBollard = true
    else
        local entity = GetEntityPlayerIsLookingAt(10.0, 2.0, 16)

        if not entity then
            QBCore.Functions.Notify('Door not found.', 'error')
            return 
        end
    
        if printEntityDetails then
            print(entity, GetEntityType(entity), GetEntityCoords(entity), GetEntityModel(entity), GetEntityCoords(entity))
        end
    
        doorId = GetTargetDoorId(entity)
    
        if printEntityDetails then
            print(doorId)
        end
    end


    if not doorId then
        QBCore.Functions.Notify('Door not found.', 'error')
        return
    end

    if (not hasSecuredAccess(doorId, 'door') or not AllowsKeyFob(doorId)) then
        PlaySoundFromEntity(-1, "Keycard_Fail", PlayerPedId(), "DLC_HEISTS_BIOLAB_FINALE_SOUNDS", 1, 5.0);
        QBCore.Functions.Notify('Key fob not working.', 'error')
        return TriggerEvent("DoLongHudText", "The key fob is not working for this door.",2)
    end

    local isLocked = (DoorSystemGetDoorState(doorId) ~= 0 and true or false)
    PlaySoundFromEntity(-1, "Keycard_Success", PlayerPedId(), "DLC_HEISTS_BIOLAB_FINALE_SOUNDS", 1, 5.0);

    TriggerServerEvent("doors:change-lock-state", doorId, isBollard and (not isLocked and 6 or 0) or (not isLocked))
end

Citizen.CreateThread(function()
    RegisterKeyMapping("+KeyFobGates", "[Doors] - Keyfob", "keyboard", "Y") -- Register Key bind in menu
    RegisterCommand('+KeyFobGates', DoKeyFob, false)
    RegisterCommand('-KeyFobGates', function() end, false)
    TriggerEvent('chat:removeSuggestion', "/+KeyFobGates")
    TriggerEvent('chat:removeSuggestion', "/-KeyFobGates")


	exports["qb-polyzone"]:AddBoxZone("mrpd_bollards_01", vector3(411.66, -1027.95, 29.24), 7.8, 23.4, {
        heading=0,
        debugPoly = false,
        minZ=28.14,
        maxZ=32.14
    })
    exports["qb-polyzone"]:AddBoxZone("mrpd_bollards_02", vector3(411.66, -1020.09, 29.34), 7.8, 23.4, {
        heading=0,
        debugPoly = false,
        minZ=28.14,
        maxZ=32.14
    })
end)

AddEventHandler("qb-polyzone:enter", function(zone, data)
    if zone == "mrpd_bollards_01" or zone == "mrpd_bollards_02" then
        bollards[zone].inside = true
        currentZone = zone
    end
end)

AddEventHandler("qb-polyzone:exit", function(zone)
    if zone == "mrpd_bollards_01" or zone == "mrpd_bollards_02" then
        bollards[zone].inside = false
        currentZone = nil
    end
end)

-- Det Cord --

RegisterNetEvent('qb-doors:client:ThermitePtfx', function(coords)
    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do Wait(50) end
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", coords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Wait(5000)
    StopParticleFxLooped(effect, 0)
end)

RegisterNetEvent("qpixel-doors:detCoord")
AddEventHandler("qpixel-doors:detCoord", function ()
    print("HELLO?")
    local playerPed = PlayerPedId()
  local position = GetEntityCoords(playerPed, false)
  local endPosition = position + GetEntityForwardVector(playerPed)
  local raycast = StartShapeTestSweptSphere(position.x, position.y, position.z, endPosition.x, endPosition.y, endPosition.z, 0.2, 16, playerPed, 4)
  local retval, hit, endCoords, surfaceNormal, entity = GetShapeTestResult(raycast)
  local targetDoor = GetTargetDoorId(entity)
  if not targetDoor then 
    print("no door")
    return 
  end
  local isLocked = (DoorSystemGetDoorState(currentDoorId) ~= 0 and true or false)
  if not isLocked then
    print("Lock status")
    return
  end

  Citizen.CreateThread(function()
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    RequestModel("hei_p_m_bag_var22_arm_s")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") and not HasModelLoaded("hei_p_m_bag_var22_arm_s") do
      Citizen.Wait(0)
    end
    local ped = PlayerPedId()
    Citizen.Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(ped)))
    local bagscene = NetworkCreateSynchronisedScene(endCoords.x, endCoords.y, endCoords.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), endCoords.x, endCoords.y, endCoords.z,  true,  true, false)
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(bag), false)
    SetEntityCollision(bag, false, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    local curVar = GetPedDrawableVariation(ped, 5)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Citizen.Wait(1500)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local bomba = CreateObject(GetHashKey("hei_prop_heist_thermite"), x, y, z + 0.2,  true,  true, true)
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(bomba), false)
    SetEntityCollision(bomba, false, true)
    AttachEntityToEntity(bomba, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    Citizen.Wait(4000)
    DeleteObject(bag)
    if curVar > 0 then
      SetPedComponentVariation(ped, 5, curVar, 0, 0)
    end
    DetachEntity(bomba, 1, 1)
    FreezeEntityPosition(bomba, true)
    NetworkStopSynchronisedScene(bagscene)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_intro", 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 8.0, 8.0, 6000, 49, 1, 0, 0, 0)
    TriggerEvent("qb-doors:client:ThermitePtfx", endCoords)
    Citizen.Wait(5000)
    AddExplosion(endCoords, 32, 100.0, true, false, 4.0)
    -- TriggerServerEvent("fx:DetCord", NetworkGetNetworkIdFromEntity(bomba), endCoords) PATLAMA EFEKTI SERVER SIDE
    Citizen.Wait(2000)
    ClearPedTasks(ped) 
    DeleteObject(bomba)
    TriggerServerEvent("doors:change-lock-state", targetDoor, 0) 

    --need to add item remove funtion.
    --TriggerEvent("inventory:removeItem", "detcord", 1)
    end)
end)