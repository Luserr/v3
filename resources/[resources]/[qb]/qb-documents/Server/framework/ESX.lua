if use_framework == 'ESX' then

ESX = nil

CreateThread(function()
    while not ESX do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Wait(500)
    end
end)

function getIdentifier(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        local identifier = xPlayer.getIdentifier()

        return ""..identifier
    end
end

-- This function will return the player's name
function getName(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = xPlayer.getName()
    return name
end

function getJob(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local job = xPlayer.getJob().name

	return job
end

function getGrade(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.getJob().grade

	return grade
end

function showNotification(source, message)
    TriggerClientEvent('esx:showNotification', source, message)
    TriggerClientEvent('chat:addMessage', source, { args = { message }})
end
        
        
end