--- A simple wrapper around SendNUIMessage that you can use to
--- dispatch actions to the React frame.
---
---@param action string The action you wish to target
---@param data any The data you wish to send along with this action
function SendReactMessage(action, data)
    SendNUIMessage({
      action = action,
      data = data
    })
end
  
  local currentResourceName = GetCurrentResourceName()
  
  local debugIsEnabled = GetConvarInt(('%s-debugMode'):format(currentResourceName), 0) == 1
  
  --- A simple debug print function that is dependent on a convar
  --- will output a nice prettfied message if debugMode is on
  function debugPrint(...)
    if not debugIsEnabled then return end
    local args <const> = { ... }
  
    local appendStr = ''
    for _, v in ipairs(args) do
      appendStr = appendStr .. ' ' .. tostring(v)
    end
    local msgTemplate = '^3[%s]^0%s'
    local finalMsg = msgTemplate:format(currentResourceName, appendStr)
    print(finalMsg)
  end
  
  function LoadAnimationDic(dict)
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
  
        while not HasAnimDictLoaded(dict) do
            Citizen.Wait(0)
        end
    end
  end
  
  function string:split( inSplitPattern, outResults )
    if not outResults then
      outResults = { }
    end
    local theStart = 1
    local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
    while theSplitStart do
      table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
      theStart = theSplitEnd + 1
      theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
    end
    table.insert( outResults, string.sub( self, theStart ) )
    return outResults
  end