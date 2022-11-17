local registered = {}

function RegisterInterfaceCallback(name, cb)
  local function interceptCb(data, innerCb)
    cb(data, function(result)
      if result.meta.ok then
        result.meta.message = "done"
      end
      innerCb(result)
    end)
  end
  AddEventHandler(('_apx_uiReq:%s'):format(name), interceptCb)

  if (GetResourceState("qpixel-interface") == "started") then 
    exports["qpixel-interface"]:RegisterIntefaceEvent(name) 
  end

  registered[#registered + 1] = name
end

function SendInterfaceMessage(data)
  exports["qpixel-interface"]:SendInterfaceMessage(data)
end

function SetInterfaceFocus(hasFocus, hasCursor)
  exports["qpixel-interface"]:SetInterfaceFocus(hasFocus, hasCursor)
end

function GetInterfaceFocus()
  return exports["qpixel-interface"]:GetInterfaceFocus()
end

AddEventHandler("_apx_uiReady", function()
  for _, eventName in ipairs(registered) do
    exports["qpixel-interface"]:RegisterIntefaceEvent(eventName)
  end
end)