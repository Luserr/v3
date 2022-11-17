local NoNPC = {
	-- vector4(x, y, z, radius),
	vector4(-1944.8, -265.6, 26.9, 50),
	
}







Citizen.CreateThread(function()
	while true do
		Citizen.Wait(50)
		for k,v in pairs(NoNPC) do
			ClearAreaOfPeds(v, 1)
			ClearAreaOfVehicles(v)
		end
	end
end)