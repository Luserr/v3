if use_framework == 'QBCore' then

QBCore = exports['qb-core']:GetCoreObject()

-- This function will return the player's identifier (identifier or id)
function getIdentifier(source)
    local Player = QBCore.Functions.GetPlayer(source)
    
    if Player then
        return ""..Player.PlayerData.citizenid
    end
end

-- This function will return the player's name
function getName(source)
    local Player = QBCore.Functions.GetPlayer(source)
    local name = GetPlayerName(source)

    if Player then
        name = Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
    end
    
    return name
end

function getJob(source)
	local Player = QBCore.Functions.GetPlayer(source)
	local job = Player.PlayerData.job.name

	return job
end

function getGrade(source)
    local Player = QBCore.Functions.GetPlayer(source)
	local grade = Player.PlayerData.job.grade.level

	return grade
end

function showNotification(source, message)
    TriggerClientEvent('QBCore:Notify', source, message)
    TriggerClientEvent('chat:addMessage', source, { args = { message }})
end

end