local activeChannels = {}
local channelSubscribers = {}

function addPlayerToRadio(pServerId, pFrequency)
    if channelSubscribers[pServerId] then
        removePlayerFromRadio(pServerId, channelSubscribers[pServerId])
    end

    if activeChannels[pFrequency] == nil then
        activeChannels[pFrequency] = {}
        activeChannels[pFrequency]["subscribers"] = {}
    end

    for _, subscriber in ipairs(activeChannels[pFrequency]["subscribers"]) do
        TriggerClientEvent("rhodinium:voice:radio:added", subscriber, pFrequency, pServerId)
    end

    table.insert(activeChannels[pFrequency]["subscribers"], pServerId)

    channelSubscribers[pServerId] = pFrequency

    TriggerClientEvent("rhodinium:voice:radio:connect", pServerId, pFrequency, activeChannels[pFrequency]["subscribers"])
end

function removePlayerFromRadio(pServerId, pFrequency)
    if not activeChannels[pFrequency] then return end

    for index, subscriber in ipairs(activeChannels[pFrequency]["subscribers"]) do
        if pServerId == subscriber then
            table.remove(activeChannels[pFrequency]["subscribers"], index)
        end
    end

    if #activeChannels[pFrequency]["subscribers"] == 0 then
        activeChannels[pFrequency] = nil
    else
        for _, subscriber in ipairs(activeChannels[pFrequency]["subscribers"]) do
            TriggerClientEvent("rhodinium:voice:radio:removed", subscriber, pFrequency, pServerId)
        end
    end

    channelSubscribers[pServerId] = nil
end

RegisterNetEvent("AddPlayerToRadio")
AddEventHandler("AddPlayerToRadio", function(pFrequency, pServerId)
    if pFrequency > 0 then
        addPlayerToRadio(pServerId, pFrequency)
    else
        if channelSubscribers[pServerId] then
            removePlayerFromRadio(pServerId, channelSubscribers[pServerId])
        end
    end
end)

RegisterNetEvent("RemovePlayerFromRadio")
AddEventHandler("RemovePlayerFromRadio", function(pServerId)
    removePlayerFromRadio(pServerId, channelSubscribers[pServerId])
end)

AddEventHandler("playerDropped", function(source, reason)
    if channelSubscribers[source] then
        removePlayerFromRadio(source, channelSubscribers[source])
    end
end)

RegisterCommand("activeChannels", function(src, args, raw)
    print(DumpTable(activeChannels))
end, true)

RegisterCommand("channelSubscribers", function(src, args, raw)
    print(DumpTable(channelSubscribers))
end, true)