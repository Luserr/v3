local CarBombs = {}
local Mercy = exports[Config.Settings['CoreName']]:GetCoreObject()

-- [ Code ] --

-- [ Events ] --

RegisterNetEvent("mc-carbombs/server/sync-explosion", function(Entity)
    TriggerClientEvent("mc-carbombs/client/sync-explosion", -1, Entity)
end)

RegisterNetEvent("mc-carbombs/server/remove", function(pNetId)
    CarBombs[pNetId] = nil
end)

RegisterNetEvent("mc-carbombs/server/found", function(pNetId, pMetaData)
    TriggerClientEvent("mc-carbombs/client/foundAll", -1, CarBombs[pMetaData.netId])
end)

-- [ Callbacks ] --

Mercy.Functions.CreateCallback("mc-carbombs/server/add", function(source, cb, netId, minSpeed, ticksBeforeExplode, ticksForRemoval, gridSize, coloredSquares, timeToComplete)
    local Player = Mercy.Functions.GetPlayer(source)
    if Player ~= nil then
        if Player.Functions.RemoveItem('car_bomb', 1) then
            CarBombs[netId] = {
                carBombData = {
                    minSpeed = minSpeed, 
                    ticksBeforeExplode = ticksBeforeExplode, 
                    ticksForRemoval = ticksForRemoval, 
                    gridSize = gridSize, 
                    coloredSquares = coloredSquares, 
                    timeToComplete = timeToComplete,
                    netId = netId,
                    hasCarBomb = true,
                }
            }
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)

Mercy.Functions.CreateCallback("mc-carbombs/server/give-bomb", function(source, cb)
    local Player = Mercy.Functions.GetPlayer(source)
    if Player ~= nil then
        Player.Functions.AddItem('car_bomb_defused', 1)
    end
end)

Mercy.Functions.CreateCallback("mc-carbombs/server/get-data-from-netid", function(source, cb, netId)
    cb(CarBombs[netId])
end)

-- [ Items ] --

Mercy.Functions.CreateUseableItem("bombmirror", function(source, item)
	local Player = Mercy.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) ~= nil then
		TriggerClientEvent("mc-carbombs/client/use-bomb", source, true)
	end
end)

Mercy.Functions.CreateUseableItem("car_bomb", function(source, item)
	local Player = Mercy.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) ~= nil then
		TriggerClientEvent("mc-carbombs/client/use-bomb", source)
	end
end)