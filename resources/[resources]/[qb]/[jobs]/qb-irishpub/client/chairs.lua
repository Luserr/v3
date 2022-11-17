
local ZoneCreated = false
local sit = false

local function CloseSit()
	if sit then 
		local ped = PlayerPedId()
		ClearPedTasksImmediately(ped)
		sit = false
	end
end

local function CreateZone()
	ZoneCreated = true
	local IrishPub = PolyZone:Create({
		vector2(848.27, -116.13),
		vector2(846.49, -109.83),
		vector2(822.99, -95.48),
		vector2(812.33, -113.86),
		vector2(839.94, -129.74)
	}, {
		name="IrishPub",
		minZ=79.0,
		maxZ=81.0,
		debugGrid=false,
		gridDivisions=25
	})
	IrishPub:onPlayerInOut(function(isPointInside)
		if isPointInside then
			RegisterCommand('+closeImportMenu', CloseSit, false)
			RegisterKeyMapping("+closeImportMenu", "CloseSit~", "keyboard", Config.CloseSitKey)
		end
	end)
end


CreateThread(function()
	for k, v in pairs(Chairs) do
		exports['qb-target']:AddBoxZone("IrishPubChair"..k, v.location, v.width, v.height, { 
			name="IrishPubChair"..k, 
			heading = v.heading, 
			debugPoly=false, 
			minZ = v.minZ, 
			maxZ = v.maxZ 
			}, 
			{ 
				options = {
				{ 
					event = "qb-irishpub:client:chair", 
					icon = "fas fa-chair", 
					label = "Sit Down", 
					loc = v.location, 
					head = v.heading,
 
				}, 
			},
			distance = v.distance
		})
	end
	if not ZoneCreated then
		CreateZone()
	end
end)


RegisterNetEvent('qb-irishpub:client:chair', function(data)
	local ped = PlayerPedId()
    if not sit then
	    TaskStartScenarioAtPosition(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", data.loc.x, data.loc.y, data.loc.z-0.5, data.head, 0, 1, true)
        sit = true
    else
        ClearPedTasksImmediately(ped)
        sit = false
    end
end)

Chairs = {
    --- Window 
	{ location = vector3(834.67, -105.89, 79.72), heading = 243.72, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
	{ location = vector3(835.23, -104.89, 79.72), heading = 243.72, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
	{ location = vector3(837.83, -106.32, 79.72), heading = 66.91, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
	{ location = vector3(837.29, -107.31, 79.72), heading = 55.53, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    -- Window mid
    { location = vector3(840.98, -108.17, 79.72), heading = 243.72, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    { location = vector3(840.29, -109.18,79.72), heading = 243.72, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    --- Window Enrty 
    { location = vector3(843.51, -109.61, 79.72), heading = 66.91, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    { location = vector3(842.95, -110.56, 79.72), heading = 55.53, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    --- Near WC Window
    { location = vector3(845.89, -117.18, 79.72), heading = 53.05, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    { location = vector3(844.25, -119.94, 79.72), heading = 55.45, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.60, distance = 3.7 },
    ---WC
    { location = vector3(838.89, -120.83, 79.72), heading = 235.05, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.20, distance = 3.7 },
    { location = vector3(837.9, -122.43, 79.72), heading = 246.47, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.20, distance = 3.7 },
    { location =vector3(837.05, -124.05, 79.72), heading = 246.47, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.20, distance = 3.7 },
    
    -- Kitchen
    { location =vector3(828.29, -109.94, 79.72), heading = 143.29, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.20, distance = 3.7 },
    -- Office
    { location =vector3(830.5, -118.66,  80.42), heading = 350.82, width = 0.6, height = 0.6, minZ = 79.10, maxZ = 80.20, distance = 3.7 },
}








