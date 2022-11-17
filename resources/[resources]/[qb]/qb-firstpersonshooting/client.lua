local ped = PlayerPedId()
local inveh = IsPedInAnyVehicle(ped, false)

Citizen.CreateThread(function()
    if IsPedDoingDriveby(ped) then
        SetFollowVehicleCamViewMode(4)
    else 
        SetFollowVehicleCamViewMode(0)
    end
end)
