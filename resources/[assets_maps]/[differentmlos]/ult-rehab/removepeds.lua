Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    local myCoords = GetEntityCoords(PlayerPedId())
    if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1510.13, 843.84, 182.51, true ) < 80 then
      ClearAreaOfPeds(-1510.13, 843.84, 182.51, 58.0, 0)
    end
  end
end)