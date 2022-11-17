local registered = {}

function RegisterUICallback(name, cb)
  local function interceptCb(data, innerCb)
    cb(data, function(result)
      if result.meta.ok then
        result.meta.message = "done"
      end
      innerCb(result)
    end)
  end
  AddEventHandler(('_dpx_uiReq:%s'):format(name), interceptCb)

  if (GetResourceState("qpixel-ui") == "started") then 
    exports["qpixel-ui"]:RegisterUIEvent(name) 
  end

  registered[#registered + 1] = name
end

function SendUIMessage(data)
  exports["qpixel-ui"]:SendUIMessage(data)
end

function SetUIFocus(hasFocus, hasCursor)
  exports["qpixel-ui"]:SetUIFocus(hasFocus, hasCursor)
end

function GetUIFocus()
  return exports["qpixel-ui"]:GetUIFocus()
end

AddEventHandler("_dpx_uiReady", function()
  for _, eventName in ipairs(registered) do
    exports["qpixel-ui"]:RegisterUIEvent(eventName)
  end
end)
