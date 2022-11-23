Transmissions, Targets, Channels, Settings = Context:new(), Context:new(), Context:new(), {}
CurrentTarget, CurrentInstance, CurrentProximity, CurrentVoiceChannel, Player, PlayerCoords, PreviousCoords, VoiceEnabled, NativeAudio = 1, 0, 1, 0

ProximityOverrides = { [1] = {}, [2] = {}, [3] = {}}

IsQuiet = false

Citizen.CreateThread(function()
    while true do
        local idle = 100

        Player = PlayerPedId()
        PlayerCoords = GetEntityCoords(Player)

        if PlayerCoords ~= PreviousCoords then
            idle = 50
        end

        PreviousCoords = PlayerCoords

        Citizen.Wait(idle)
    end
end)

AddEventHandler("mumbleConnected", function()
    print("Mumble: Connected")
    TriggerEvent("rhodinium:voice:state", true)
end)

AddEventHandler("mumbleDisconnected", function()
    print("Mumble: Disconnected")
    TriggerEvent("rhodinium:voice:state", false)
end)

AddEventHandler("rhodinium:voice:state", function (state)
    VoiceEnabled = state

    TriggerServerEvent("rhodinium:voice:connection:state", state)

    if VoiceEnabled then
        local serverId = GetPlayerServerId(PlayerId())
        local currentChannel = MumbleGetVoiceChannelFromServerId(serverId)

        while (currentChannel == -1 or currentChannel == 0) do
            currentChannel = MumbleGetVoiceChannelFromServerId(serverId)

            NetworkSetVoiceChannel(CurrentVoiceChannel)

            Citizen.Wait(100)
        end

        RefreshTargets()
    end
end)

function RegisterModuleContext(context, priority)
    Transmissions:registerContext(context)
    Targets:registerContext(context)
    Channels:registerContext(context)

    Transmissions:setContextData(context, "priority", priority)

    Debug("[Main] Context Added | ID: %s | Priority: %s", context, priority)
end

function ChangeVoiceTarget(targetID)
    CurrentTarget = targetID
    MumbleSetVoiceTarget(targetID)
end

function SetVoiceChannel(channelID)
    NetworkSetVoiceChannel(channelID)
    Debug("[Main] Current Channel: %s | Previous: %s | Target: %s ", channelID, CurrentVoiceChannel, CurrentTarget)
    CurrentVoiceChannel = channelID
end

function IsPlayerInTargetChannel(serverID)
    local found = false

    if Config.enableGrids then
        local gridChannel = MumbleGetVoiceChannelFromServerId(serverID)
        found = Channels:targetHasAnyActiveContext(gridChannel) == true
    end

    return found
end

function SetVoiceTargets(targetID)
    local players, channels = {}, {}

    Channels:contextIterator(function(channel)
        if not channels[channel] then
            channels[channel] = true
            MumbleAddVoiceTargetChannel(targetID, channel)
        end
    end)

    Targets:contextIterator(function(serverID)
        if not players[serverID] and not IsPlayerInTargetChannel(serverID) then
            players[serverID] = true
            MumbleAddVoiceTargetPlayerByServerId(targetID, serverID)
        end
    end)
end

function RefreshTargets()
    local voiceTarget = _C(CurrentTarget == 1, 2, 1)

    MumbleClearVoiceTarget(voiceTarget)

    SetVoiceTargets(voiceTarget)

    ChangeVoiceTarget(voiceTarget)
end


function AddPlayerToTargetList(serverID, context, transmit)
    if not Targets:targetContextExist(serverID, context) then

        if transmit then
            TriggerServerEvent("rhodinium:voice:transmission:state", serverID, context, true)
        end

        if not Targets:targetHasAnyActiveContext(serverID) and not IsPlayerInTargetChannel(serverID) then
            MumbleAddVoiceTargetPlayerByServerId(CurrentTarget, serverID)
        end

        Targets:add(serverID, context)

        Debug("[Main] Target Added | Player: %s | Context: %s ", serverID, context)
    end
end

function RemovePlayerFromTargetList(serverID, context, transmit, refresh)
    if Targets:targetContextExist(serverID, context) then
        Targets:remove(serverID, context)

        if transmit then
            TriggerServerEvent("rhodinium:voice:transmission:state", serverID, context, false)
        end

        if refresh then
            RefreshTargets()
        end

        Debug("[Main] Target Removed | Player: %s | Context: %s ", serverID, context)
    end
end

function IsPlayerInContextTargetList(serverID, context)
    return Targets:targetContextExist(serverID, context)
end

function AddGroupToTargetList(group, context, pIsInVehicle)
    if not Targets:contextExists(context) then return end

    for serverID, active in pairs(group) do
        if active then
            AddPlayerToTargetList(serverID, context, false)
        end
    end

    TriggerServerEvent("rhodinium:voice:transmission:state", group, context, true, nil, pIsInVehicle)
end

function RemoveGroupFromTargetList(group, context)
    if not Targets:contextExists(context) then return end

    for serverID, active in pairs(group) do
        if active then
            RemovePlayerFromTargetList(serverID, context, false, false)
        end
    end

    RefreshTargets()

    TriggerServerEvent("rhodinium:voice:transmission:state", group, context, false)
end

function AddChannelToTargetList(channel, context)
    if not Channels:targetContextExist(channel, context) then
        if not Channels:targetHasAnyActiveContext(channel) then
            MumbleAddVoiceTargetChannel(CurrentTarget, channel)
        end

        Channels:add(channel, context)

        Debug("[Main] Channel Added | ID: %s | Context: %s ", channel, context)
    end
end

function RemoveChannelFromTargetList(channel, context, refresh)
    if Channels:targetContextExist(channel, context) then
        Channels:remove(channel, context)

        if refresh then
            RefreshTargets()
        end

        Debug("[Main] Channel Removed | ID: %s | Context: %s ", channel, context)
    end
end

function AddChannelGroupToTargetList(group, context)
    if not Channels:contextExists(context) then return end

    for _, channel in pairs(group) do
        AddChannelToTargetList(channel, context)
    end
end

function RemoveChannelGroupFromTargetList(group, context)
    if not Channels:contextExists(context) then return end

    for _, channel in pairs(group) do
        RemoveChannelFromTargetList(channel, context, false)
    end

    RefreshTargets()
end

function CycleVoiceProximity()
    local newProximity = CurrentProximity + 1

    local proximity = _C(Config.voiceRanges[newProximity] ~= nil, newProximity, 1)

    SetVoiceProximity(proximity)
end

function SetVoiceProximity(proximity)
    local voiceProximity = Config.voiceRanges[proximity]

    TriggerEvent("rhodinium:voice:proximity", proximity)

    CurrentProximity = proximity

    local range, priority = -1, -1

    for _, override in pairs(ProximityOverrides[proximity]) do
        if override and (override.priority > priority) then
            range = override.range
            priority = override.priority
        end
    end

    range = range > -1 and range or voiceProximity.range

    if IsTransmissionDisabled("proximity") then return end

    NetworkSetTalkerProximity(range + 0.0)

    Debug("[Main] Proximity Range | Proximity: %s | Range: %s", voiceProximity.name, range)
end

function SetProximityOverride(pMode, pId, pRange, pPriority)
    if not ProximityOverrides[pMode] then return error("Invalid proximity mode") end
    ProximityOverrides[pMode][pId] = { range = pRange, priority = pPriority, mode = pMode }

    if CurrentProximity ~= pMode then return end
    Debug("[Main] Proximity Override | Range: %s | Priority: %s | Mode: %s", pRange, pPriority, pMode)
    SetVoiceProximity(CurrentProximity)
end

function GetTransmissionVolume(serverID)
    local _, contexts = Transmissions:getTargetContexts(serverID)

    local volume = -1.0

    for _, context in pairs(contexts) do
        if context.volume and context.volume > volume then
            volume = context.volume
        end
    end

    return volume
end

function GetPriorityContextData(serverID)
    local _, contexts = Transmissions:getTargetContexts(serverID)

    local context = { volume = -1.0, priority = 0 }

    for _, ctx in pairs(contexts) do
        if ctx.priority >= context.priority and (ctx.volume == -1 or ctx.volume >= context.volume) then
            context = ctx
        end
    end

    return context
end

function UpdateContextVolume(context, volume)
    Transmissions:setContextData(context, "volume", volume)
    Transmissions:contextIterator(function(targetID, tContext)
        if tContext == context then
            local context = GetPriorityContextData(targetID)

            MumbleSetVolumeOverrideByServerId(targetID, context.volume)
        end
    end)
end

function SetSettings(settings)
    Settings = settings["tokovoip"]
    if Settings then
        RadioVolume = Settings.radioVolume * 1.0
        UpdateHudSettings(Settings)
        UpdateContextVolume("phone", Settings.phoneVolume * 1.0)
    end
end

RegisterNetEvent("rhodinium:voice:transmission:state")
AddEventHandler("rhodinium:voice:transmission:state", function(serverID, context, transmitting, effect, isSourceInVehicle)
    if not Transmissions:contextExists(context) then
        return
    end

    if transmitting then
        Transmissions:add(serverID, context)
    else
        Transmissions:remove(serverID, context)
    end

    local isCivRadio = CurrentChannel and CurrentChannel.id > 10.0 or false

    local data = GetPriorityContextData(serverID)

    local overrideSubmix, overrideVolume, rangeMultiplier = nil, nil, isSourceInVehicle and Config.radioVehicleMultiplier or 1.0
    if context == "radio" and isCivRadio and transmitting then
        local getSendingRange = #(GetEntityCoords(PlayerPedId()) - GetPlayerCoords(serverID))
        if getSendingRange > Config.radioVoiceRanges.radio_medium_distance.ranges.min * rangeMultiplier and getSendingRange <= Config.radioVoiceRanges.radio_medium_distance.ranges.max * rangeMultiplier then
            overrideSubmix = { submix = "radio_medium_distance" }
        elseif getSendingRange > Config.radioVoiceRanges.radio_far_distance.ranges.min * rangeMultiplier and getSendingRange <= Config.radioVoiceRanges.radio_far_distance.ranges.max * rangeMultiplier then
            overrideSubmix = { submix = "radio_far_distance" }
        elseif getSendingRange > Config.radioVoiceRanges.radio_far_distance.ranges.max * rangeMultiplier then
            overrideSubmix = { submix = "default" }
            overrideVolume = 0.0
        end
    end

    if (Config.enableFilters.phone or Config.enableFilters.radio or Config.enableFilters.megaphone or Config.enableFilters.gag) and CanUseFilter(transmitting, context) then
        SetTransmissionFilters(serverID, overrideSubmix or data)
    end

    if not transmitting then
        MumbleSetVolumeOverrideByServerId(serverID, overrideVolume or data.volume)
        Citizen.Wait(0)
    end


    if transmitting then
        Citizen.Wait(0)
        MumbleSetVolumeOverrideByServerId(serverID, overrideVolume or data.volume)
    end

    if context == "radio" and IsRadioOn then
        PlayRemoteRadioClick(transmitting, overrideVolume ~= nil)
    end

    Debug("[Main] Transmission | Origin: %s | Vol: %s | Ctx: %s | Active: %s", serverID, overrideVolume or data.volume, context, transmitting)
end)

RegisterNetEvent("rhodinium:voice:targets:player:add")
AddEventHandler("rhodinium:voice:targets:player:add", AddPlayerToTargetList)

RegisterNetEvent("rhodinium:voice:targets:player:remove")
AddEventHandler("rhodinium:voice:targets:player:remove", RemovePlayerFromTargetList)

RegisterNetEvent("rhodinium:voice:refresh")
AddEventHandler("rhodinium:voice:refresh", RefreshConnection)

RegisterNetEvent("rhodinium:voice:proximity:override")
AddEventHandler("rhodinium:voice:proximity:override", function(pId, pMode, pRange, pPriority)
    if type(pMode) == "table" then
        for i = 1, #pMode do
            local proximityOverride = pMode[i]
            SetProximityOverride(proximityOverride.mode, pId, pRange or proximityOverride.range, pPriority or proximityOverride.priority)
        end
    else
        SetProximityOverride(pMode, pId, pRange, pPriority)
    end
end)

RegisterNetEvent("SpawnEventsClient");
AddEventHandler("SpawnEventsClient", RefreshConnection)

local TransmissionDisabled = {}

function IsTransmissionDisabled(pType)
    return TransmissionDisabled[pType] == true
end

RegisterNetEvent("rhodinium-voice:setTransmissionDisabled", function (pType, pDisabled)
    if type(pType) == "table" then
        for name, disabled in pairs(pType) do
            TransmissionDisabled[name] = disabled

            Debug("[%s] Transmission Disabled: %s", name, disabled or "NA")
        end
    else
        TransmissionDisabled[pType] = pDisabled

        Debug("[%s] Transmission Disabled: %s", pType, pDisabled or "NA")
    end

    local isProximityDisabled = IsTransmissionDisabled("proximity")

    if isProximityDisabled then
        NetworkSetTalkerProximity(0.1)
    else
        SetVoiceProximity(CurrentProximity)
    end
end)

Citizen.CreateThread(function()
    exports["rhodinium-callbacks"]:registerKeyMapping("", "Voice", "Proximity / Range Toggle", "+cycleProximity", "-cycleProximity", "Z")
    RegisterCommand("+cycleProximity", CycleVoiceProximity, false)
    RegisterCommand("-cycleProximity", function() end, false)

    exports["rhodinium-callbacks"]:registerKeyMapping("", "Voice", "Reset Mumble VOIP", "+mumble", "-mumble", "")

    while not NetworkIsSessionStarted() do Citizen.Wait(50) end

    for i = 1, 4 do
        MumbleClearVoiceTarget(i)
    end

    -- if Config.enableSubmixes then
    --     RegisterContextSubmix("default")
    -- end

    if Config.enableGrids then
        LoadGridModule()
    end

    if Config.enableRadio then
        LoadRadioModule()
    end

    if Config.enableToko then
        LoadTokoModule()
    end

    if Config.enablePhone then
        LoadPhoneModule()
    end

    if Config.enableMegaphone then
        LoadMegaphoneModule()
    end

    if Config.enablePodium then
        LoadPodiumModule()
    end

    if Config.enableGaze then
        LoadGazeModule()
    end

    if Config.enableGag then
        LoadGagModule()
    end

    if Config.enableRadio then
        LoadATCModule()
    end

    if Config.enableRadio then
        LoadDTModule()
    end

    if Config.environmentalEffects then
        local submix = 0
        SetAudioSubmixEffectRadioFx(submix, 0)
        SetAudioSubmixEffectParamInt(submix, 0, `default`, 1)
        SetAudioSubmixEffectParamInt(0, 0, `enabled`, 0)
    end

    SetVoiceProximity(2)

    TriggerEvent("rhodinium:voice:ready")

    local _settingsData = {
        ["tokovoip"] = {
            ["stereoAudio"] = true,
            ["localClickOn"] = true,
            ["localClickOff"] = true,
            ["remoteClickOn"] = true,
            ["remoteClickOff"] = true,
            ["clickVolume"] = 0.8,
            ["radioVolume"] = 0.8,
            ["phoneVolume"] = 0.8,
            ["releaseDelay"] = 200,
        },
    }

    SetSettings(_settingsData)
end)

RegisterNetEvent("event:settings:update")
AddEventHandler("event:settings:update", SetSettings)

RegisterNetEvent("rhodinium-voice:setVoiceProximity")
AddEventHandler("rhodinium-voice:setVoiceProximity", function(pProximity)
    if not Config.setProximityEvents then return end

    local proximity = _C(Config.voiceRanges[pProximity] ~= nil, pProximity, 1)

    SetVoiceProximity(proximity)
end)

Citizen.CreateThread(function ()
    local isTalkingToggle = false
    local isTalkingOnRadio = false

    DecorRegister("IsTalking", 2)

    while true do
        local isTalking = NetworkIsPlayerTalking(PlayerId())

        if (isTalking and not isTalkingToggle) or IsTalkingOnRadio and not isTalkingOnRadio then
            isTalkingToggle = true
            isTalkingOnRadio = IsTalkingOnRadio
            DecorSetBool(Player, "IsTalking", true)
            TriggerEvent("rhodinium:voice:transmissionStarted", { phone = true, radio = IsTalkingOnRadio })
        elseif (not isTalking and isTalkingToggle) or  isTalkingOnRadio and not IsTalkingOnRadio then
            isTalkingToggle = false
            isTalkingOnRadio = IsTalkingOnRadio
            DecorSetBool(Player, "IsTalking", false)
            TriggerEvent("rhodinium:voice:transmissionFinished", { phone = false, radio = IsTalkingOnRadio })
        end

        Citizen.Wait(100)
    end
end)
