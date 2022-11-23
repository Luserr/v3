local Throttles, InitialConnection = {}, true

function Debug(msg, ...)
    if not Config.enableDebug then return end

    local params = {}

    for _, param in ipairs({ ... }) do
        if type(param) == "table" then
            param = json.encode(param)
        end

        table.insert(params, param)
    end

    print((msg):format(table.unpack(params)))
end

function Throttled(name, time)
    if not Throttles[name] then
        if time then
            Throttles[name] = true
            Citizen.SetTimeout(time, function() Throttles[name] = false end)
        end

        return false
    end

    return true
end

function IsDifferent(current, old)
    if #current ~= #old then
        return true
    else
        for i = 1, #current, 1 do
            if current[i] ~= old[i] then
                return true
            end
        end
    end
end

function LoadAnimDict(dict)
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)

        while not HasAnimDictLoaded(dict) do
            Citizen.Wait(0)
        end
    end
end

function table.exist(table, val)
    for key, value in pairs(table) do
        local exist

        if type(val) == "function" then
            exists = val(value, key, table)
        else
            exist = val == value
        end

        if exist then
            return true, key
        end
    end

    return false
end

function _C(condition, trueExpr, falseExpr)
    if condition then
        return trueExpr
    else
        return falseExpr
    end
end

-- Required for floating point precision
function almostEqual(pFloat1, pFloat2, pThreshold)
  return math.abs(pFloat1 - pFloat2) <= pThreshold
end

function MakeObject(data)
	local d = msgpack.pack(data)
	return string.pack("<T", #d) .. d
end

function GetDefaultSettings()
    return {
        ["releaseDelay"] = Config.settings.releaseDelay,
        ["stereoAudio"] = Config.settings.stereoAudio,
        ["localClickOn"] = Config.settings.localClickOn,
        ["localClickOff"] = Config.settings.localClickOff,
        ["remoteClickOn"] = Config.settings.remoteClickOn,
        ["remoteClickOff"] = Config.settings.remoteClickOff,
        ["clickVolume"] = Config.settings.clickVolume,
        ["radioVolume"] = Config.settings.radioVolume,
        ["phoneVolume"] = Config.settings.phoneVolume
    }
end

function TimeOut(time)
    local p = promise:new()

    Citizen.SetTimeout(time, function ()
        p:resolve(true)
    end)

    return p
end

local function GetInfo()
    local info, endpoint = {}, GetCurrentServerEndpoint()

    local customEndpoint = GetConvar("sv_customEndpoint", "false")

    if customEndpoint ~= "false" then
        endpoint = customEndpoint
    end

    for match in string.gmatch(endpoint, "[^:]+") do
        info[#info+1] = match
    end

    return info[1], tonumber(info[2])
end

local function FilterInactive(table)
    local active = {}
    for key,value in pairs(table) do
        if value then
            active[key] = value
        end
    end
    return active
end

function RefreshConnection(pIsForced)
    if InitialConnection or pIsForced then
        local a, b = GetInfo()

        if GetConvar("sv_environment", "live") == "debug" then
            MumbleSetServerAddress(a, b)
        else
            MumbleSetServerAddress("176.97.196.40", b)
        end

        NativeAudio = GetConvar("voice_useNativeAudio", "false") == "true"
        InitialConnection = pIsForced and InitialConnection or false
    end
end

function CalculateAudioBalance(pBalance)
    local left, right = 1.0, 1.0

    if pBalance > 1.0 then
        left = 2.0 - pBalance
        right = 1.0
    else
        left = 1.0
        right = pBalance
    end
    return left + 0.0, right + 0.0
end

RegisterCommand("+mumble", function()
    local str = [[
        ----------------------------
        Version: %s
        Connected: %s
        Channel: %s
        Grid: %s
        Neighbor Grids: %s
        Active Grids: %s
        Radio Status: %s
        Radio Transmission: %s
        Radio Transmissions: %s
        Phone Transmissions: %s
        ----------------------------
    ]]
    local isConnected = MumbleIsConnected()
    local channel = MumbleGetVoiceChannelFromServerId(GetPlayerServerId(PlayerId()))
    local grid = GetGridChannel(PlayerCoords)
    local neighbors = json.encode(GetTargetChannels(PlayerCoords, Config.gridEdge))
    local channels = json.encode(FilterInactive(Channels["contexts"]["grid"]))
    local radio = json.encode(Transmissions["contexts"]["radio"])
    local phone = json.encode(Transmissions["contexts"]["phone"])
    print((str):format(Config.version, isConnected, channel, grid, neighbors, channels, IsRadioOn, IsTalkingOnRadio, radio, phone))
    RefreshConnection(true)
end)

RegisterCommand("-mumble", function() end)

Citizen.CreateThread(function()
    Citizen.Wait(10000)

    while true do
        Citizen.Wait(1000)

        local isConnected = MumbleIsConnected()

        if not isConnected then
            print("Trying to reconnect to Mumble")

            RefreshConnection(true)

            Citizen.Wait(2000)

            if MumbleIsConnected() then
                print("Mumble: Reconected")
            end
        end

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