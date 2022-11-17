RegisterNUICallback("exit" , function(data, cb)
    SetNuiFocus(false, false)
    cb(200)
end)


RegisterNetEvent('venture_ReportSystem:openUI')
AddEventHandler('venture_ReportSystem:openUI', function(name, ava)
        SetNuiFocus(true, true)
        SendNUIMessage({
            trans = true;
            name = name;
            ava = ava;
        })
end)

RegisterNUICallback('submit', function(data, cb)
    SetNuiFocus(false, false)
    TriggerServerEvent('venture_ReportSystem:SendReportToDiscord', data)
    cb(200)
end)


RegisterNUICallback('takepic', function(data, cb)
    local url = nil
    exports['screenshot-basic']:requestScreenshotUpload(Config.WebhookForPhotos, "files[]", function(data)
        local image = json.decode(data)
        url = image.attachments[1].url
        SendNUIMessage({
            imagen = true;
            img = url;
        })
    end)
end)
