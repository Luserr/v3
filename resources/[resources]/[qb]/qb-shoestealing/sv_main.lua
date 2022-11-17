local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("shoeting", function(player)
    TriggerClientEvent("shoestealing:takeShoes", player)
end)

RegisterNetEvent('shoestealing:server:AddShoes', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem('weapon_shoe', 2)
end)