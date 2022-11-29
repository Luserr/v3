-- CLOSE APP
function SetInterfaceFocus(hasKeyboard, hasMouse)
  SetNuiFocus(hasKeyboard, hasMouse)
end

exports('SetInterfaceFocus', SetInterfaceFocus)

RegisterNUICallback("qpixel-interface:closeApp", function(data, cb)
    SetInterfaceFocus(false, false)
    cb({data = {}, meta = {ok = true, message = 'done'}})
    Wait(800)
    TriggerEvent("attachedItems:block",false)
end)

RegisterNUICallback("qpixel-interface:applicationClosed", function(data, cb)
    TriggerEvent("qpixel-interface:application-closed", data.name, data)
    cb({data = {}, meta = {ok = true, message = 'done'}})
end)

-- FORCE CLOSE
RegisterCommand("qpixel-interface:force-close", function()
    SendInterfaceMessage({source = "qpixel-nui", app = "", show = false});
    SetInterfaceFocus(false, false)
end, false)

-- SMALL MAP
RegisterCommand("qpixel-interface:small-map", function()
  SetRadarBigmapEnabled(false, false)
end, false)

local function restartUI(withMsg)
  SendInterfaceMessage({ source = "qpixel-nui", app = "main", action = "restart" });
  if withMsg then
    TriggerEvent("DoLongHudText", "You can also use 'ui-r' as a shorter version to restart!")
  end
  Wait(5000)
  TriggerEvent("qpixel-interface:restarted")
  SendInterfaceMessage({ app = "hud", data = { display = true }, source = "qpixel-nui" })
  local cj = exports["police"]:getCurrentJob()
end
RegisterCommand("qpixel-interface:restart", function() restartUI(true) end, false)
RegisterCommand("ui-r", function() restartUI() end, false)
RegisterNetEvent("qpixel-interface:server-restart")
AddEventHandler("qpixel-interface:server-restart", restartUI)

RegisterCommand("qpixel-interface:debug:show", function()
    SendInterfaceMessage({ source = "qpixel-nui", app = "debuglogs", data = { display = true } });
end, false)

RegisterCommand("qpixel-interface:debug:hide", function()
    SendInterfaceMessage({ source = "qpixel-nui", app = "debuglogs", data = { display = false } });
end, false)

RegisterNUICallback("qpixel-interface:resetApp", function(data, cb)
    SetInterfaceFocus(false, false)
    cb({data = {}, meta = {ok = true, message = 'done'}})
    --sendCharacterData()
end)

RegisterNetEvent("qpixel-interface:server-relay")
AddEventHandler("qpixel-interface:server-relay", function(data)
    SendInterfaceMessage(data)
end)