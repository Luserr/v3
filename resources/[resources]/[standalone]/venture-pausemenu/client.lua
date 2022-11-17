local opened = false
--ESX = exports["es_extended"]:getSharedObject()


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(3)
		SetPauseMenuActive(false)
	end
end)

--functions
function SetDisplay(bool)
	SetNuiFocus(bool, bool)
	SetNuiFocusKeepInput(false)
	DisableIdleCamera(bool)
	SetCursorLocation(0.5, 0.5)

	SendNUIMessage({
        type = "ui",
        status = bool,
    });
end

function close()
	SetDisplay(false)
    opened = false
end

--callback
RegisterNUICallback("close", function(data)
    close()
end)

RegisterNUICallback("quit", function(data)
    close()
	RestartGame()
end)

RegisterNUICallback("map", function(data)
    close()
	ActivateFrontendMenu("FE_MENU_VERSION_MP_PAUSE", true, 0)
end)

RegisterNUICallback("settings", function(data)
    close()
	ActivateFrontendMenu('FE_MENU_VERSION_LANDING_MENU',0, 1)
end)

--commands
RegisterCommand('closepause', function ()
	SetDisplay(false)
end)

RegisterKeyMapping("openesc", "ImLew", "keyboard", "ESCAPE")

RegisterCommand('openesc', function () --950
	--local menus = ESX.UI.Menu.GetOpenedMenus()
	if not IsPauseMenuActive() and not IsNuiFocused() then
	--	if next(menus) == nil then
			SetDisplay(true)
		end
	--end
end)