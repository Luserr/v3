local Promise, KeyboardActive = nil, false

RegisterNUICallback("dataPost", function(data, cb)
    Promise:resolve(data.data)
    Promise = nil
    CloseKeyboard()
    cb("ok")
end)

RegisterNUICallback("cancel", function(data, cb)
    Promise:resolve(nil)
    Promise = nil
    CloseKeyboard()
    cb("ok")
end)

Keyboard = function(data)
    if not data or Promise then return end
    while KeyboardActive do Wait(0) end
    local keyboard = nil
    
    Promise = promise.new()
    
    OpenKeyboard(data)
    
    local keyboard = Citizen.Await(Promise)

    return keyboard and true or false, UnpackInput(keyboard)
end

EditKeyboard = function(data)
    if not data or Promise then return end
    while KeyboardActive do Wait(0) end
    local keyboard = nil
    
    Promise = promise.new()
    
    OpenEditKeyboard(data)
    
    local keyboard = Citizen.Await(Promise)

    return keyboard and true or false, UnpackInput(keyboard)
end

UnpackInput = function(kb, i)
    if not kb then return end
    local index = i or 1
    
    if index <= #kb then
        return kb[index].input, UnpackInput(kb, index + 1)
    end
end

OpenKeyboard = function(data)
    KeyboardActive = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN",
        data = data
    })
end

OpenEditKeyboard = function(data)
    KeyboardActive = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_EDITABLE",
        data = data
    })
end

CloseKeyboard = function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "CLOSE",
    })
    KeyboardActive = false
end

CancelKeyboard = function()
    SendNUIMessage({
        action = "CANCEL"
    })
end

exports("Keyboard", Keyboard)
exports("EditKeyboard", EditKeyboard)
exports("CancelKeyboard", CancelKeyboard)

RegisterNetEvent("mercy-keyboard:cancel", CancelKeyboard)



-- local keyboard, length, wire, coloredSquares, timeToComplete = exports["ld-keyboard"]:Keyboard({
    -- header = "Set Bomb", 
    -- rows = {
        -- {label = "Length in seconds (120-7200)", type = "number", icon = "stopwatch"},
        -- {label = "Wire to cut", type = "select", options = wireOptions, icon = "solid fa-scissors"},
        -- {label = "Colored Squares (5-10)", type = "number", icon = "solid fa-square"},
        -- {label = "Time To Complete (10-30)", type = "number", icon = "stopwatch"},
    -- },
-- })
