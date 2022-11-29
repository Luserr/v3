local InputRequests, InputCount = {}, 0

RegisterNUICallback('qpixel-interface:applicationClosed', function(data, cb)
    if (data.name ~= 'textbox' or data.callbackUrl ~= 'qpixel-interface:inputResponse') then return end

    local request = InputRequests[data.key]

    if (not request) then return end

    request.response:resolve(nil)

    InputRequests[data.key] = nil
end)

RegisterNUICallback('qpixel-interface:inputResponse', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = "done" } })

    local request = InputRequests[data.key]

    if (not request) then return end

    local success = request.validation == nil and true or request.validation(data.values)

    if (not success) then return end

    request.response:resolve(data.values)

    InputRequests[data.key] = nil

    exports['qpixel-interface']:closeApplication('textbox')
end)

function OpenInputMenu(pEntries, pValidation)
    local inputId = InputCount + 1

    InputCount = inputId

    local response = promise:new()

    InputRequests[inputId] = { response = response, validation = pValidation}

    exports['qpixel-interface']:openApplication('textbox', {
        callbackUrl = 'qpixel-interface:inputResponse',
        key = inputId,
        items = pEntries,
        show = true,
    })

    return Citizen.Await(response)
end

exports('OpenInputMenu', OpenInputMenu)