local QBCore = exports['qb-core']:GetCoreObject()



RegisterCommand('pp', function(source, args, raw)
    calculateStats(GetVehiclePedIsIn(PlayerPedId()))
end)

function getField(veh, field)
    return GetVehicleHandlingFloat(veh, 'CHandlingData', field)
end

StatsCache = {}
function calculateStats(vehicle)
    local info = {} 
    local model = GetEntityModel(vehicle)
    if StatsCache[model] then 
        print(json.encode(StatsCache[model].vehClass))
        return StatsCache[model].info, StatsCache[model].vehClass 
        
    end

    local isMotorCycle = IsThisModelABike(model)

    local fInitialDriveMaxFlatVel = getField(vehicle, "fInitialDriveMaxFlatVel")
    local fInitialDriveForce = getField(vehicle, "fInitialDriveForce")
    local fDriveBiasFront = getField(vehicle, "fDriveBiasFront")
    local fInitialDragCoeff = getField(vehicle, "fInitialDragCoeff")
    local fTractionCurveMax = getField(vehicle, "fTractionCurveMax")
    local fTractionCurveMin = getField(vehicle, "fTractionCurveMin")
    local fSuspensionReboundDamp = getField(vehicle, "fSuspensionReboundDamp")
    local fBrakeForce = getField(vehicle, "fBrakeForce")

    -- Acceleration: (fInitialDriveMaxFlatVel x fInitialDriveForce)/10
    -- If the fDriveBiasFront is greater than 0 but less than 1, multiply fInitialDriveForce by 1.1.
    local force = fInitialDriveForce
    if fInitialDriveForce > 0 and fInitialDriveForce < 1 then
        force = force * 1.1
    end
    local accel = (fInitialDriveMaxFlatVel * force) / 10
    info[#info + 1] = { name = "Acceleration", value = accel }

    -- Speed:
    -- ((fInitialDriveMaxFlatVel / fInitialDragCoeff) x (fTractionCurveMax + fTractionCurveMin))/40
    local speed = ((fInitialDriveMaxFlatVel / fInitialDragCoeff) * (fTractionCurveMax + fTractionCurveMin)) / 40
    if isMotorCycle then
        speed = speed * 2
    end
    info[#info + 1] = { name = "Speed", value = speed }

    -- Handling:
    -- (fTractionCurveMax + fSuspensionReboundDamp) x fTractionCurveMin
    local handling = (fTractionCurveMax + fSuspensionReboundDamp) * fTractionCurveMin
    if isMotorCycle then
        handling = handling / 2
    end
    info[#info + 1] = { name = "Handling", value = handling }

    -- Braking:
    -- ((fTractionCurveMin / fInitialDragCoeff) x fBrakeForce) x 7
    local braking = ((fTractionCurveMin / fInitialDragCoeff) * fBrakeForce) * 7
    info[#info + 1] = { name = "Braking", value = braking }

    -- Overall Performance Bracket:
    -- ((Acceleration x 5) + Speed + Handling + Braking) * 15
    -- X Class: >1000
    -- S Class: >650
    -- A Class: >500
    -- B Class: >400
    -- C Class: >325
    -- D Class: =<325
    local perfRating = ((accel * 5) + speed + handling + braking) * 15
    local vehClass = "F"
    if isMotorCycle then
        vehClass = "M"
    elseif perfRating > 700 then
        vehClass = "X"
    elseif perfRating > 525 then
        vehClass = "S"
    elseif perfRating > 450 then
        vehClass = "A"
    elseif perfRating > 300 then
        vehClass = "B"
    elseif perfRating > 200 then
        vehClass = "C"
    else
        vehClass = "D" 
    end
    StatsCache[model] = { info = info, vehClass = vehClass }
    print(json.encode(perfRating))
    print(json.encode(vehClass))
    return vehClass
end

exports('calculateStats', calculateStats)
-- exports['rhodinium-callbcks']:calculateStats(vehicle)