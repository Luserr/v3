local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("megaphone", function(source, item)
    TriggerClientEvent("rhodinium-megaphone:megaphone", source)
end)
 