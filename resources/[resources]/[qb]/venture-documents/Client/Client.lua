local configurated = false

CreateThread(function()
    for i,k in pairs(config.commands) do
        RegisterCommand(k, function()
            Open()
        end)
    end

    while not configurated do
        SetConfig()
        Wait(1000)
    end

    RegisterKeyMapping("accept_document:"..config.key_accept, "See Document", "keyboard", config.key_accept)
end)

RegisterCommand("accept_document:"..config.key_accept, function()
    TriggerServerEvent("lg_documents:SeeDocument")
end)

function Open()
    SendNUIMessage({
        open = true,
    })
    SetNuiFocus(true, true)
end

function Close()
    SetNuiFocus(false, false)
end

function LoadedDocuments(documents)
    SendNUIMessage({
        load_documents = true,
        documents = documents
    })
end

function LoadedTemplates(templates)
    SendNUIMessage({
        load_templates = true,
        templates = templates
    })
end

function CancelAction(message)
    SendNUIMessage({
        cancel_action = true,
        cancel_msg = message
    })
end

function ConfirmAction()
    SendNUIMessage({
        confirm_action = true,
    })
end

function SeeDocument(document)
    SendNUIMessage({
        see_document = true,
        document = document,
    })

    Open()
end

function SetConfig()
    SendNUIMessage({
        name_resource = GetCurrentResourceName(),
        translate = translate,
        server_banner = config.server_banner,
        config = true,
    })
end

function ClosestPlayer()
	local my_ped = PlayerPedId()
	local dist = 99999.9
	local closest = -1

	local my_pos = GetEntityCoords(my_ped)
	for i, player in pairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)

		if DoesEntityExist(ped) and ped ~= my_ped then
			local pos = GetEntityCoords(ped)
			local distance = #(pos - my_pos)
			if dist > distance then
				dist = distance
				closest = player
			end
		end
	end

	return closest, dist
end

RegisterNetEvent("lg_documents:Open")
RegisterNetEvent("lg_documents:LoadedDocuments", LoadedDocuments)
RegisterNetEvent("lg_documents:LoadedTemplates", LoadedTemplates)
RegisterNetEvent("lg_documents:CancelAction", CancelAction)
RegisterNetEvent("lg_documents:ConfirmAction", ConfirmAction)
RegisterNetEvent("lg_documents:SeeDocument", SeeDocument)

AddEventHandler("lg_documents:Open", function()
    Open()
end)

RegisterNUICallback("Close", function(data, cb)
    Close()
    cb('ok')
end)

RegisterNUICallback("LoadDocuments", function(data, cb)
    TriggerServerEvent("lg_documents:LoadDocuments")
    cb('ok')
end)

RegisterNUICallback("LoadTemplates", function(data, cb)
    TriggerServerEvent("lg_documents:LoadTemplates")
    cb('ok')
end)

RegisterNUICallback("SaveDocument", function(data, cb)
    TriggerServerEvent("lg_documents:SaveDocument", data)
    cb('ok')
end)

RegisterNUICallback("DeleteDocument", function(data, cb)
    TriggerServerEvent("lg_documents:DeleteDocument", data)
    cb('ok')
end)

RegisterNUICallback("FinishDocument", function(data, cb)
    TriggerServerEvent("lg_documents:FinishDocument", data)
    cb('ok')
end)

RegisterNUICallback("CreateCopy", function(data, cb)
    TriggerServerEvent("lg_documents:CreateCopy", data)
    cb('ok')
end)

RegisterNUICallback("ShowDocument", function(data, cb)
    local player, dist = ClosestPlayer()
    if closest ~= -1 and dist < 2.0 then
        local target = GetPlayerServerId(player)
        TriggerServerEvent("lg_documents:ShowDocument", target, data)
    else
        TriggerServerEvent("lg_documents:ShowNotification", translate.TR_NO_NEAREST)
    end

    cb('ok')
end)

RegisterNUICallback("GiveDocument", function(data, cb)
    local player, dist = ClosestPlayer()
    if closest ~= -1 and dist < 2.0 then
        local target = GetPlayerServerId(player)
        TriggerServerEvent("lg_documents:GiveDocument", target, data)
    else
        TriggerServerEvent("lg_documents:ShowNotification", translate.TR_NO_NEAREST)
    end

    cb('ok')
end)

RegisterNUICallback("ConfirmConfig", function(data, cb)
    configurated = true
    cb('ok')
end)