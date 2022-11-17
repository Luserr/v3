local xhairActive = false
local disableXhair = false

RegisterCommand("togglexhair", function()
    disableXhair = not disableXhair
end)

Citizen.CreateThread(function()
    while true do
        Wait(500)
        local get_ped = PlayerPedId()
        local get_ped_veh = GetVehiclePedIsIn(get_ped, false)

        if xhairActive and IsPedArmed(get_ped, 7) and not IsControlPressed(0, 25) then
            xhairActive = false
            SendNUIMessage("xhairHide")
        end

        if not disableXhair and not xhairActive and IsPedArmed(get_ped, 7) and IsControlPressed(0, 25) then 
            print("F")
            xhairActive = true
            SendNUIMessage("xhairShow")
        elseif not IsPedArmed(PlayerPedId(), 7) and xhairActive then
            xhairActive = false
            SendNUIMessage("xhairHide")
        end
    end
end) 