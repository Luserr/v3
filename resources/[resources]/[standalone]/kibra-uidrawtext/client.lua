exports('SendUI', function(button, text)
    SendNUIMessage({
        type = "SendInfo",
        ButtonKey = button,
        Text = text
    })
end)

exports('CloseUI', function()
    SendNUIMessage({
        type = "CloseUI",
    })
end)

local onScreen = false

RegisterCommand('show', function()
    if not onScreen then
        onScreen = true
        exports["kibra-uidrawtext"]:SendUI("[E]", "FiveM")
    else
        onScreen = false
        exports["kibra-uidrawtext"]:CloseUI()
    end
end)