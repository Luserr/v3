function loadPtfx(dict)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do Wait(0) end
end

function topNotification(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function showNotification(message)
    SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0,1)
end

RegisterNetEvent("Client:grapplerNotification")
AddEventHandler("Client:grapplerNotification", function(message)
    showNotification(message)
end)

function loadModel(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
end

function requestAnim(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do 
        Wait(0) 
    end
end