--[[

    Variables

]]

CurrentJob = "unemployed"

isEscorting = false
hasOxygenTankOn = false

isInstructorMode = false

polyChecks = {
    vanillaUnicorn = { isInside = false, data = nil },
    gasStation = { isInside = false, data = nil },
    bennys = { isInside = false, data = nil },
    townhallCourtGavel = { isInside = false, data = nil },
    prison = { isInside = false, data = nil }
}

local ModelData = {}
local CachedEntity, CachedEngineDoor, CachedTrunkDoor = nil, nil, nil
local HasKeysCache = {}

--[[

    Functions

]]

function GetEntityContext(pEntity, pEntityType, pEntityModel)
    local context = {
        ["flags"] = {},
        ["model"] = nil,
        ["type"] = nil,
        ["zones"] = {}
    }

    if not pEntity then return context end

    local playerCoords = GetEntityCoords(PlayerPedId())
    local entityCoords = GetEntityCoords(pEntity)

    context.type = pEntityType or GetEntityType(pEntity)
    context.model = pEntityModel or GetEntityModel(pEntity)
    context.distance = #(playerCoords - entityCoords)

    if context.type == 1 then
        context.flags = exports["qpixel-flags"]:GetPedFlags(pEntity)
        context.flags["isPlayer"] = IsPedAPlayer(pEntity)
        if context.flags["isNPC"] then GetPedContext(pEntity, context) end
    elseif context.type == 2 then
        context.flags = exports["qpixel-flags"]:GetVehicleFlags(pEntity)
    elseif context.type == 3 then
        context.flags = exports["qpixel-flags"]:GetObjectFlags(pEntity)
    end

    if ModelFlags[context.model] then
        for _, flag in ipairs(ModelFlags[context.model]) do
            context.flags[flag] = true
        end
    end

    return context
end

function GetPedContext(pEntity, pContext)
    local npcId = DecorGetInt(pEntity, "NPC_ID")

    if pContext.flags["isJobEmployer"] then
        pContext.job = exports["qpixel-jobs"]:GetNPCJobData(npcId)
    end
end

--[[function isDisabled()
    return exports["qpixel-base"]:getVar("dead") or
        exports["qpixel-base"]:getVar("handcuffed")
end]]

function hasPhone()
    return exports["qpixel-inventory"]:hasEnoughOfItem("mobilephone", 1, false) or
        exports["qpixel-inventory"]:hasEnoughOfItem("stoleniphone", 1, false) or
        exports["qpixel-inventory"]:hasEnoughOfItem("stolens8", 1, false) or
        exports["qpixel-inventory"]:hasEnoughOfItem("stolennokia", 1, false) or
        exports["qpixel-inventory"]:hasEnoughOfItem("stolenpixel3", 1, false) or
        exports["qpixel-inventory"]:hasEnoughOfItem("boomerphone", 1, false)
end

function GetBoneDistance(pEntity, pType, pBone)
    local bone

    if pType == 1 then
        bone = GetPedBoneIndex(pEntity, pBone)
    else
        bone = GetEntityBoneIndexByName(pEntity, pBone)
    end

    local boneCoords = GetWorldPositionOfEntityBone(pEntity, bone)
    local playerCoords = GetEntityCoords(PlayerPedId())

    return #(boneCoords - playerCoords)
end

function HasWeaponEquipped(pWeaponHash)
    return GetSelectedPedWeapon(PlayerPedId()) == pWeaponHash
end

function isPersonBeingHeldUp(pEntity)
    return (IsEntityPlayingAnim(pEntity, "dead", "dead_a", 3) or IsEntityPlayingAnim(pEntity, "amb@code_human_cower_stand@male@base", "base", 3) or IsEntityPlayingAnim(pEntity, "amb@code_human_cower@male@base", "base", 3) or IsEntityPlayingAnim(pEntity, "random@arrests@busted", "idle_a", 3) or IsEntityPlayingAnim(pEntity, "mp_arresting", "idle", 3) or IsEntityPlayingAnim(pEntity, "random@mugging3", "handsup_standing_base", 3) or IsEntityPlayingAnim(pEntity, "missfbi5ig_22", "hands_up_anxious_scientist", 3) or IsEntityPlayingAnim(pEntity, "missfbi5ig_22", "hands_up_loop_scientist", 3) or IsEntityPlayingAnim(pEntity, "missminuteman_1ig_2", "handsup_base", 3))
end

function getTrunkOffset(pEntity)
  local minDim, maxDim = GetModelDimensions(GetEntityModel(pEntity))
  return GetOffsetFromEntityInWorldCoords(pEntity, 0.0, minDim.y - 0.5, 0.0)
end

function getFrontOffset(pEntity)
    local minDim, maxDim = GetModelDimensions(GetEntityModel(pEntity))
    return GetOffsetFromEntityInWorldCoords(pEntity, 0.0, maxDim.y + 0.5, 0.0)
end

function isCloseToTrunk(pEntity, pPlayerPed, pDistance, pMustBeOpen)
  return #(getTrunkOffset(pEntity) - GetEntityCoords(pPlayerPed)) <= (pDistance or 1.0) and GetVehicleDoorLockStatus(pEntity) == 1 and (not pMustBeOpen or GetVehicleDoorAngleRatio(pEntity, 5) >= 0.1)
end

function isCloseToHood(pEntity, pPlayerPed, pDistance, pMustBeOpen)
    return #(getFrontOffset(pEntity) - GetEntityCoords(pPlayerPed)) <= (pDistance or 1.0) and GetVehicleDoorLockStatus(pEntity) == 1 and (not pMustBeOpen or GetVehicleDoorAngleRatio(pEntity, 4) >= 0.1)
end

function GetModelData(pEntity, pModel)
    if ModelData[pModel] then return ModelData[pModel] end

    local modelInfo = {}

    local coords = getTrunkOffset(pEntity)
    local boneCoords, engineCoords = GetWorldPositionOfEntityBone(pEntity, GetEntityBoneIndexByName(pEntity, "engine"))

    if #(boneCoords - coords) <= 2.0 then
        engineCoords = coords
        modelInfo = { engine = { position = "trunk", door = 4 }, trunk = { position = "front", door = 5 } }
    else
        engineCoords = getFrontOffset(pEntity)
        modelInfo = { engine = { position = "front", door = 4 }, trunk = { position = "trunk", door = 5 } }
    end

    local hasBonnet = DoesVehicleHaveDoor(pEntity, 4)
    local hasTrunk = DoesVehicleHaveDoor(pEntity, 5)

    if hasBonnet then
        local bonnetCoords = GetWorldPositionOfEntityBone(pEntity, GetEntityBoneIndexByName(pEntity, "bonnet"))

        if #(engineCoords - bonnetCoords) <= 3.0 then
            modelInfo.engine.door = 4
            modelInfo.trunk.door = hasTrunk and 5 or 3
        elseif hasTrunk then
            modelInfo.engine.door = 5
            modelInfo.trunk.door = 4
        end
    elseif hasTrunk then
        local bootCoords = GetWorldPositionOfEntityBone(pEntity, GetEntityBoneIndexByName(pEntity, "boot"))

        if #(engineCoords - bootCoords) <= 2.0 then
            modelInfo.engine.door = 5
        end
    end

    ModelData[pModel] = modelInfo

    return modelInfo
end

function isCloseToEngine(pEntity, pPlayerPed, pDistance, pModel)
    local model = pModel or GetEntityModel(pEntity)
    local modelData = GetModelData(pEntity, model)

    local playerCoords = GetEntityCoords(pPlayerPed)

    local engineCoords = modelData.engine.position == "front" and getFrontOffset(pEntity) or getTrunkOffset(pEntity)

    return #(engineCoords - playerCoords) <= pDistance
end

function isCloseToBoot(pEntity, pPlayerPed, pDistance, pModel)
    local model = pModel or GetEntityModel(pEntity)
    local modelData = GetModelData(pEntity, model)

    local playerCoords = GetEntityCoords(pPlayerPed)

    local engineCoords = modelData.trunk.position == "front" and getFrontOffset(pEntity) or getTrunkOffset(pEntity)

    return #(engineCoords - playerCoords) <= pDistance
end

function getEngineDoor(pEntity, pModel)
    if CachedEntity == pEntity and CachedEngineDoor then return CachedEngineDoor end

    local model = pModel or GetEntityModel(pEntity)
    local modelData = GetModelData(pEntity, model)

    CachedEntity, CachedEngineDoor = pEntity, modelData.engine.door

    return modelData.engine.door
end

function getTrunkDoor(pEntity, pModel)
    if CachedEntity == pEntity and CachedTrunkDoor then return CachedTrunkDoor end

    local model = pModel or GetEntityModel(pEntity)
    local modelData = GetModelData(pEntity, model)

    CachedEntity, CachedTrunkDoor = pEntity, modelData.trunk.door

    return modelData.trunk.door
end

function isVehicleDoorOpen(pEntity, pDoor)
    return GetVehicleDoorAngleRatio(pEntity, pDoor) >= 0.1 or IsVehicleDoorDamaged(pEntity, pDoor) == 1
end

function canRefuelHere(pEntity, pPolyZoneData)
    local vehicleClass = GetVehicleClass(pEntity)
    if (pPolyZoneData and pPolyZoneData.vehicleClassRequirement == vehicleClass) then
        return true
    elseif pPolyZoneData and not pPolyZoneData.vehicleClassRequirement and vehicleClass ~= 15 and vehicleClass ~= 16 and GetBoneDistance(pEntity, 2, "wheel_lr") <= 1.2  then
        return true
    end
    return false
end

function hasKeys(pEntity)
    if HasKeysCache[pEntity] then return HasKeysCache[pEntity] end

    local hasKeys = exports["qpixel-vehicles"]:HasVehicleKey(pEntity)

    HasKeysCache[pEntity] = hasKeys

    return hasKeys
end

function hasRepairItems(type)
    local items = {}
    local tiers = { "s", "a", "b", "c", "d" }

    for i, v in ipairs(tiers) do
        table.insert(items, v .. "fix" .. type)
    end

    for i, v in pairs(items) do
        if exports["qpixel-inventory"]:hasEnoughOfItem(v, 1, false) then
            return true
        end
    end

    return false
end

--[[

    Events

]]

AddEventHandler("qpixel-polyzone:enter", function(zone, data)
    if zone == "qpixel-jobs:impound:dropOff" then IsImpoundDropOff = true end
    if zone == "vanilla_unicorn_stage" then polyChecks.vanillaUnicorn = { isInside = true, polyData = data } end
    if zone == "gas_station" then polyChecks.gasStation = { isInside = true, polyData = data } end
    if zone == "bennys" then
        local plyPed = PlayerPedId()

        if data and data.type == "boats" and not IsPedInAnyBoat(plyPed) then
            return
        end
        if data and data.type == "planes" and not (IsPedInAnyPlane(plyPed) or IsPedInAnyHeli(plyPed)) then
            return
        end

        polyChecks.bennys = { isInside = true, polyData = data }
    end
    if zone == "townhall_court_gavel" then polyChecks.townhallCourtGavel = { isInside = true, polyData = nil } end
    if zone == "prison" then polyChecks.prison = { isInside = true, polyData = nil } end
end)

AddEventHandler("qpixel-polyzone:exit", function(zone)
    if zone == "vanilla_unicorn_stage" then polyChecks.vanillaUnicorn = { isInside = false, polyData = nil } end
    if zone == "gas_station" then polyChecks.gasStation = { isInside = false, polyData = nil } end
    if zone == "bennys" then polyChecks.bennys = { isInside = false, polyData = nil } end
    if zone == "townhall_court_gavel" then polyChecks.townhallCourtGavel = { isInside = false, polyData = nil } end
    if zone == "prison" then polyChecks.prison = { isInside = false, polyData = nil } end
end)

RegisterNetEvent("qpixel-jobs:jobChanged")
AddEventHandler("qpixel-jobs:jobChanged", function(pJobId)
    CurrentJob = pJobId

    HasKeysCache = {}
end)

RegisterNetEvent("drivingInstructor:instructorToggle")
AddEventHandler("drivingInstructor:instructorToggle", function(mode)
    isInstructorMode = mode
end)

RegisterNetEvent("menu:hasOxygenTank")
AddEventHandler("menu:hasOxygenTank", function(pHasOxygenTank)
    hasOxygenTankOn = pHasOxygenTank
end)

RegisterNetEvent("dr:escortingEnabled")
AddEventHandler("dr:escortingEnabled", function()
    isEscorting = true
end)

RegisterNetEvent("dr:releaseEscort")
AddEventHandler("dr:releaseEscort", function()
    isEscorting = false
end)