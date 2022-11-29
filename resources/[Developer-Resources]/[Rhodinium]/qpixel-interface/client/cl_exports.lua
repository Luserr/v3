local Events = {}

function SendInterfaceMessage(data)
  SendReactMessage('uiMessage', data)
end

exports('SendInterfaceMessage', SendInterfaceMessage)

function RegisterIntefaceEvent(eventName)
    if not Events[eventName] then
        Events[eventName] = true

        RegisterNUICallback(eventName, function (...)
            TriggerEvent(('_apx_uiReq:%s'):format(eventName), ...)
        end)
    end
end

exports('RegisterIntefaceEvent', RegisterIntefaceEvent)

function SetInterfaceFocusCustom(hasKeyboard, hasMouse)
  HasNuiFocus = hasKeyboard or hasMouse

  SetNuiFocus(hasKeyboard, hasMouse)
  SetNuiFocusKeepInput(HasNuiFocus)
end

exports('SetInterfaceFocusCustom', SetInterfaceFocusCustom)


function GetInterfaceFocus()
  return HasFocus, HasCursor
end

exports('GetInterfaceFocus', GetInterfaceFocus)

Citizen.CreateThread(function()
    TriggerEvent('_apx_uiReady')
end)

function cashFlash(pCash, pChange)
  SendInterfaceMessage({
      app = "cash",
      data = {
        cash = pCash,
        amountAdjustment = pChange
        -- duration = 5 // optional duration for fade, default 4 seconds
      },
      source = "qpixel-nui",
  })
end

exports("cashFlash", cashFlash)

function openApplication(app, data, stealFocus)
  stealFocus = stealFocus == nil and true or false
  SendInterfaceMessage({
      source = "qpixel-nui",
      app = app,
      show = true,
      data = data or {},
  })
  if stealFocus then
    SetInterfaceFocus(true, true)
  end
end

exports("openApplication", openApplication)

RegisterNetEvent("qpixel-interface:open-application")
AddEventHandler("qpixel-interface:open-application", openApplication)

function closeApplication(app, data)
  SendInterfaceMessage({
      source = "qpixel-nui",
      app = app,
      show = false,
      close = true,
      data = data or {},
  })
  SetInterfaceFocus(false, false)
  TriggerEvent("qpixel-interface:application-closed", app, { fromEscape = false })
end

exports("closeApplication", closeApplication)

function sendAppEvent(app, data, withExtra)
    local sentData = {
        app = app,
        data = data or {},
        source = "qpixel-nui",
    }
    if withExtra then
      for k, v in pairs(withExtra) do
        sentData[k] = v
      end
    end
    SendInterfaceMessage(sentData)
end

exports("sendAppEvent", sendAppEvent)

local currSoundId = 0
local function getSoundId()
  currSoundId = currSoundId + 1
  return currSoundId
end
function soundPlay(name, volume, loop)
  local id = getSoundId()
  SendInterfaceMessage({
      source = "qpixel-nui",
      app = "sounds",
      data = {
        action = 'play',
        id = id,
        name = name,
        loop = loop or false,
        volume = volume or 1.0,
      },
  })
  return id
end

RegisterNetEvent("qpixel-interface:soundPlay")
AddEventHandler("qpixel-interface:soundPlay", function(name, volume, loop)
  soundPlay(name, volume, loop)
end)

exports("soundPlay", soundPlay)

function soundVolume(id, volume)
  SendInterfaceMessage({
      source = "qpixel-nui",
      app = "sounds",
      data = {
        action = "volume",
        id = id,
        volume = volume,
      },
  });
end

exports("soundVolume", soundVolume)

function soundStop(id)
  SendInterfaceMessage({
      source = "qpixel-nui",
      app = "sounds",
      data = {
        action = 'stop',
        id = id,
      },
  })
end

exports("soundStop", soundStop)