local currentCameraIndex = 0
local createdCamera = 0

local SecurityCameras = {
    hideradar = false,
    cameras = {
        [0] = {label = "Underground-Prison", coords = vector3(375.8087, -317.37, 44.48), r = {x = -22.399, y = 0.0, z = -155.39}, canRotate = true, isOnline = true},
        [1] = {label = "Underground-MoneyWash", coords = vector3(384.22, -319.8, 44.39), r = {x = -20.299, y = 0.0, z = -60.08}, canRotate = true, isOnline = true},
    }
}



local function GetCurrentTime()
    local hours = GetClockHours()
    local minutes = GetClockMinutes()
    if hours < 10 then
        hours = tostring(0 .. GetClockHours())
    end
    if minutes < 10 then
        minutes = tostring(0 .. GetClockMinutes())
    end
    return tostring(hours .. ":" .. minutes)
end

local function ChangeSecurityCamera(x, y, z, r)
    if createdCamera ~= 0 then
        DestroyCam(createdCamera, 0)
        createdCamera = 0
    end

    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)
    SetCamCoord(cam, x, y, z)
    SetCamRot(cam, r.x, r.y, r.z, 2)
    RenderScriptCams(1, 0, 0, 1, 1)
    Wait(250)
    createdCamera = cam
end

local function CloseSecurityCamera()
    DestroyCam(createdCamera, 0)
    RenderScriptCams(0, 0, 1, 1, 1)
    createdCamera = 0
    ClearTimecycleModifier("scanline_cam_cheap")
    SetFocusEntity(GetPlayerPed(PlayerId()))
    if SecurityCameras.hideradar then
        DisplayRadar(true)
    end
    FreezeEntityPosition(GetPlayerPed(PlayerId()), false)
end

local function InstructionButton(ControlButton)
    N_0xe83a3e3557a56640(ControlButton)
end

local function InstructionButtonMessage(text)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentScaleform(text)
    EndTextCommandScaleformString()
end

local function CreateInstuctionScaleform(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(1)
    InstructionButton(GetControlInstructionalButton(1, 194, true))
    InstructionButtonMessage("CLOSE")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_BACKGROUND_COLOUR")
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(80)
    PopScaleformMovieFunctionVoid()

    return scaleform
end

-- Events
RegisterNetEvent('qua-lalinterna:client:ActiveCamera', function(data)
    cameraId = data.cameraId
    if SecurityCameras.cameras[cameraId] then
        DoScreenFadeOut(250)
        while not IsScreenFadedOut() do
            Wait(0)
        end
        SendNUIMessage({
            type = "enablecam",
            label = SecurityCameras.cameras[cameraId].label,
            id = cameraId,
            connected =SecurityCameras.cameras[cameraId].isOnline,
            time = GetCurrentTime(),
        })
        local firstCamx = SecurityCameras.cameras[cameraId].coords.x
        local firstCamy = SecurityCameras.cameras[cameraId].coords.y
        local firstCamz = SecurityCameras.cameras[cameraId].coords.z
        local firstCamr = SecurityCameras.cameras[cameraId].r
        SetFocusArea(firstCamx, firstCamy, firstCamz, firstCamx, firstCamy, firstCamz)
        ChangeSecurityCamera(firstCamx, firstCamy, firstCamz, firstCamr)
        currentCameraIndex = cameraId
        DoScreenFadeIn(250)
    else
        DoScreenFadeOut(250)
        while not IsScreenFadedOut() do
            Wait(0)
        end
        CloseSecurityCamera()
        SendNUIMessage({
            type = "disablecam",
        })
        DoScreenFadeIn(250)
    end
end)

RegisterNetEvent('qua-lalinterna:client:DisableAllCameras', function()
    for k, v in pairs(SecurityCameras.cameras) do 
        SecurityCameras.cameras[k].isOnline = false
    end
end)

RegisterNetEvent('qua-lalinterna:client:EnableAllCameras', function()
    for k, v in pairs(SecurityCameras.cameras) do 
        SecurityCameras.cameras[k].isOnline = true
    end
end)

RegisterNetEvent('qua-lalinterna:client:SetCamera', function(key, isOnline)
    SecurityCameras.cameras[key].isOnline = isOnline
end)

-- Threads
CreateThread(function()
    while true do
        sleep = 2000
        if createdCamera ~= 0 then
            sleep = 5
            local instructions = CreateInstuctionScaleform("instructional_buttons")
            DrawScaleformMovieFullscreen(instructions, 255, 255, 255, 255, 0)
            SetTimecycleModifier("scanline_cam_cheap")
            SetTimecycleModifierStrength(1.0)

            if SecurityCameras.hideradar then
                DisplayRadar(false)
            end

            -- CLOSE CAMERAS
            if IsControlJustPressed(1, 177) then
                DoScreenFadeOut(250)
                while not IsScreenFadedOut() do
                    Wait(0)
                end
                CloseSecurityCamera()
                SendNUIMessage({
                    type = "disablecam",
                })
                DoScreenFadeIn(250)
            end

            ---------------------------------------------------------------------------
            -- CAMERA ROTATION CONTROLS
            ---------------------------------------------------------------------------
            if SecurityCameras.cameras[currentCameraIndex].canRotate then
                local getCameraRot = GetCamRot(createdCamera, 2)

                -- ROTATE UP
                if IsControlPressed(0, 32) then
                    if getCameraRot.x <= 0.0 then
                        SetCamRot(createdCamera, getCameraRot.x + 0.7, 0.0, getCameraRot.z, 2)
                    
                    end
                end

                -- ROTATE DOWN
                if IsControlPressed(0, 8) then
                    if getCameraRot.x >= -50.0 then
                        SetCamRot(createdCamera, getCameraRot.x - 0.7, 0.0, getCameraRot.z, 2)
                    end
                end

                -- ROTATE LEFT
                if IsControlPressed(0, 34) then
                    SetCamRot(createdCamera, getCameraRot.x, 0.0, getCameraRot.z + 0.7, 2)
                end

                -- ROTATE RIGHT
                if IsControlPressed(0, 9) then
                    SetCamRot(createdCamera, getCameraRot.x, 0.0, getCameraRot.z - 0.7, 2)
                end
            end
        end
        Wait(sleep)
    end
end)


local function ChairSit(loc, head)
	local ped = PlayerPedId()
	TaskStartScenarioAtPosition(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", loc.x, loc.y, loc.z-0.5, head, 0, 1, true)
end

CreateThread(function()
	for k, v in pairs(Chairs) do
		exports[Config.Events.QBTargetExport]:AddBoxZone("LinternaChairs"..k, v.location, v.width, v.height, { 
			name="LinternaChairs"..k, 
			heading = v.heading, 
			debugPoly=false, 
			minZ = v.minZ, 
			maxZ = v.maxZ 
			}, 
			{ 
				options = {
				{ 
					icon = "fas fa-chair", 
					label = "Sit Down", 
                    action = function ()
                        ChairSit(v.location,v.heading)
                    end
				}, 
			},
			distance = v.distance
		})
	end
end)

Chairs = {
	{ location = vector3(380.18, -316.32, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
	{ location = vector3(380.56, -315.64, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(381.81, -316.88, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(382.12, -316.19, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },

	{ location = vector3(383.42, -317.26, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
	{ location = vector3(383.84, -316.48, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(384.95, -317.78, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(385.32, -317.07, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },

	{ location = vector3(386.84, -317.86, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
	{ location = vector3(386.46, -318.72, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(388.22, -318.31, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(387.96, -319.04, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },

    { location = vector3(383.97, -322.17, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
	{ location = vector3(384.26, -321.39, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(385.45, -322.59, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(385.76, -321.84, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },

    { location = vector3(380.28, -320.24, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
	{ location = vector3(379.9, -321.11, 46.87), heading = 250.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(381.64, -320.7, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },
    { location = vector3(381.32, -321.59, 46.87), heading = 70.0, width = 0.6, height = 0.6, minZ = 46.13, maxZ = 47.50, distance = 2.5 },


    { location = vector3(387.15, -317.35, 50.97), heading = 160.0, width = 0.6, height = 0.6, minZ = 50.13, maxZ = 51.50, distance = 2.5 },

    { location = vector3(385.83, -319.17, 50.97), heading = 343.0, width = 0.6, height = 0.6, minZ = 50.13, maxZ = 51.50, distance = 2.5 },
    { location = vector3(387.31, -319.83, 50.97), heading = 343.0, width = 0.6, height = 0.6, minZ = 50.13, maxZ = 51.50, distance = 2.5 },
}

