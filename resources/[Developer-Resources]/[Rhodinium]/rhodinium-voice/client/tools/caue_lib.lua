myJob = "unemployed"

RegisterNetEvent("caue-jobs:jobChanged")
AddEventHandler("caue-jobs:jobChanged", function(pJob)
    myJob = pJob

    if not CanUseFrequency(CurrentChannel, nil, myJob) then
        return SetRadioFrequency()
    end
end)

function CanUseFrequency(pFrequency, pNotify, pJobOverWrite)
    if not pFrequency then return false end

    if pFrequency == 0 then return true end

    local hasPDRadio = exports["caue-inventory"]:hasEnoughOfItem("radio", 1, false)
    local hasCivRadio = exports["caue-inventory"]:hasEnoughOfItem("civradio", 1, false)

    local frequency = type(pFrequency) == "table" and pFrequency.id or pFrequency
    if frequency <= 10 and (not hasPDRadio or not exports["caue-jobs"]:getJob(false, "is_emergency")) then
        if pNotify then TriggerEvent("DoLongHudText", "This frequency is encrypted.", 2) end
        return false
    elseif frequency > 10 and not hasCivRadio then
        if pNotify then TriggerEvent("DoLongHudText", "PD Walkie cannot operate in civ frequencies.", 2) end
        return false
    end

    return true
end

AddEventHandler("SpawnEventsClient", function()
    myJob = exports["caue-base"]:getChar("job")
end)