-- [ Code ] --

-- [ NUI Callbacks ] --

RegisterNUICallback('callback', function(data, cb)
    SetNuiFocus(false, false)
    Callbackk(data.success)
    cb('ok')
end)

-- [ Functions ] --

function OpenThermiteGame(callback, size, starttime, endtime)
    Callbackk = callback
    SetNuiFocus(true, true)
    SendNUIMessage({ type = "open", size = size, starttime = starttime, endtime = endtime })
end
exports('OpenThermiteGame', OpenThermiteGame)
