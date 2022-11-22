if use_framework == 'Standalone' then

-- This function will return the player's identifier
function getIdentifier(source)
    -- local xPlayer = ESX.GetPlayerFromId(source)
    -- if xPlayer then
    --     local identifier = xPlayer.getIdentifier()

    --     return ""..identifier
    -- end
end

-- This function will return the player's name
function getName(source)
    -- local xPlayer = ESX.GetPlayerFromId(source)
    -- local name = xPlayer.getName()
    -- return name
end

function getJob(source)
    -- local xPlayer = ESX.GetPlayerFromId(source)
    -- local job = xPlayer.getJob().name

    -- return job
end

function getGrade(source)
    -- local xPlayer = ESX.GetPlayerFromId(source)
    -- local grade = xPlayer.getJob().grade

    -- return grade
end

function showNotification(source, message)
    -- TriggerClientEvent('esx:showNotification', source, message)
    TriggerClientEvent('chat:addMessage', source, { args = { message }})
end

end