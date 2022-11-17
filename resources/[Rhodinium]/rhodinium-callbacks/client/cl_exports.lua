


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

function TargetVehicle()
    local playerped = PlayerPedId()
    local coordA = GetEntityCoords(playerped, 1)
    local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
    local targetVehicle = getVehicleInDirection(coordA, coordB)
    return targetVehicle
end
exports("TargetVehicle", TargetVehicle) 

function IsPedNearCoords(x,y,z)
    local handle, ped = FindFirstPed()
    local pedfound = false
    local success
    repeat
        local pos = GetEntityCoords(ped)
        local distance = #(vector3(x,y,z) - pos)

        if distance < 5.0 then
          pedfound = true
        end
        success, ped = FindNextPed(handle)
    until not success
    EndFindPed(handle)
    return pedfound
end
exports("IsPedNearCoords", IsPedNearCoords)