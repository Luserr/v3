local function playRadioClick(transmitting, setting, type)
    if transmitting and Settings[setting] then
        SendNUIMessage({ type = type, state = transmitting })
    end
    if not transmitting and Settings[setting] then
        SendNUIMessage({ type = type, state = transmitting })
    end
end

function PlayRemoteRadioClick(transmitting)
    if transmitting then
        playRadioClick(transmitting, "remoteClickOn", "remoteClick")
    else
        playRadioClick(transmitting, "remoteClickOff", "remoteClick")
    end
end

function PlayLocalRadioClick(transmitting)
    if transmitting then
        playRadioClick(transmitting, "localClickOn", "localClick")
    else
        playRadioClick(transmitting, "localClickOff", "localClick")
    end
end

function UpdateRadioPowerState(state)
    SendNUIMessage({ type = "radioPowerState", state = state })
end

function UpdateHudSettings()
    SendNUIMessage({ type = "settings", settings = Settings })
end
