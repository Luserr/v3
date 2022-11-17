if use_framework == 'VRP' then

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

-- This function will return the player's identifier (identifier or id)
function getIdentifier(source)
    local user_id = vRP.getUserId({source})

    return ""..user_id
end

-- this function will return the player's name
function getName(source)
    local player_name = GetPlayerName(player_id)
    local user_id = vRP.getUserId({player_id})

    local p = promise.new()
    vRP.getUserIdentity({user_id, function(identity)
        if identity then
            player_name = identity.firstname .. " " .. identity.name
        end
        p.resolve(player_name)
    end})
    player_name = Citizen.Await(p)

    return player_name
end

function getJob(source)
	local user_id = vRP.getUserId({source})
	
	for i,k in pairs(config.jobs_create) do
		if vRP.hasPermission({user_id, k.job}) then
			return k.job
		end
	end

    for i,k in pairs(config.jobs_finish) do
		if vRP.hasPermission({user_id, k.job}) then
			return k.job
		end
	end
	
	return "none"
end

function getGrade(source)
	return -1
end

function showNotification(source, message)
    TriggerClientEvent('chat:addMessage', source, { args = { message }})
end

end