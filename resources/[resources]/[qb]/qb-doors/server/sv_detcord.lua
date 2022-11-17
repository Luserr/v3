
local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("detcord", function(source, item)
    TriggerClientEvent("qpixel-doors:detCoord", source) 
end) 