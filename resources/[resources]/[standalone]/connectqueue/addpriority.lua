local QBCore = exports['qb-core']:GetCoreObject()
local PriorityTable = Config.Priority

function addPrio()
    MySQL.Sync.prepare('SELECT * FROM players where citizenid = ?', { citizenid })
end