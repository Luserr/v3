-- Vehicles to enable/disable air control


local flyingCars = {
    [`oppressor`] = true,
    [`oppressor2`] = true,
    [`deluxo`] = true,
    [`rcbandito`] = true,
    [`ruiner2`] = true,
}
-- Main thread
Citizen.CreateThread(function()
    while true do
        -- Loop forever and update every frame
        Citizen.Wait(0)

        player = PlayerPedId()
        vehicle = GetVehiclePedIsIn(player, false)
        model = GetEntityModel(vehicle)

        if vehicle ~= 0 then
            local model = GetEntityModel(vehicle)
            local roll = GetEntityRoll(vehicle)
        
            if not IsThisModelABoat(model)
              and not IsThisModelAHeli(model)
              and not IsThisModelAPlane(model)
              and not IsThisModelABicycle(model)
              and not IsThisModelABike(model)
              and not IsThisModelAJetski(model)
              and not IsThisModelAQuadbike(model)
              and not flyingCars[model]
              and (IsEntityInAir(vehicle) or (roll < -50 or roll > 50)) then
                DisableControlAction(0, 59) -- leaning left/right
                DisableControlAction(0, 60) -- leaning up/down
            end
        
            if GetPedInVehicleSeat(GetVehiclePedIsIn(vehicle, false), 0) == player then
                if GetIsTaskActive(vehicle, 165) then
                    SetPedIntoVehicle(vehicle, GetVehiclePedIsIn(vehicle, false), 0)
                end
            end
        end
    end
end)