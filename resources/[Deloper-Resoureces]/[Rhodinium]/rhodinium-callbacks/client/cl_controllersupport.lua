inVehicleDriving = false

CreateThread(function ()
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    if not veh then return end
    local seat = GetPedInVehicleSeat(veh, -1)
    if seat == PlayerPedId() then
        inVehicleDriving = true
        startControllerTick()
    end
end)

AddEventHandler('baseevents:enteredVehicle', function (currentVehicle, currentSeat)
    if currentVehicle and currentSeat == -1 then
        inVehicleDriving = true
        startControllerTick()
    else
        inVehicleDriving = false
    end
end)

AddEventHandler('baseevents:leftVehicle', function ()
    inVehicleDriving = false
end)
AddEventHandler('baseevents:vehicleChangedSeat', function (currentVehicle, currentSeat)
    if currentVehicle and currentSeat == -1 then
        inVehicleDriving = true
        startControllerTick()
    else
        inVehicleDriving = false
    end
end)

function startControllerTick()
    CreateThread(function ()
        while inVehicleDriving do
            Wait(0)
            if IsControlPressed(0, 71) then
                local amount = GetControlNormal(0, 71)
                if amount < 0.9 then
                    DisableControlAction(0, 71, true)
                end
            end
            if IsControlPressed(0, 72) then
                local amount = GetControlNormal(0, 72)
                if amount < 0.9 then
                    DisableControlAction(0, 72, true)
                end
            end
            if IsControlPressed(0, 63) then
                local amount = GetControlNormal(0, 63)
                if amount < 0.9 then
                    DisableControlAction(0, 63, true)
                end
            end
            if IsControlPressed(0, 64) then
                local amount = GetControlNormal(0, 64)
                if amount < 0.9 then
                    DisableControlAction(0, 64, true)
                end
            end
        end
    end)
end
