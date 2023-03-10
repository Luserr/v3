local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-dongle:server:buyshit', function(ped)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not src or not Player or not ped then return end
    -- local cash = Player.PlayerData.money[Config.Shop[ped].type]
    local price = Config.Shop[ped].price
    local payType = Config.Shop[ped].type

    if exports['qb-phone']:hasEnough(src, 'gne', 30) ~= true then
        TriggerClientEvent('QBCore:Notify', src, 'Not enough ' .. payType, 'error')
        return
    end
    if exports['qb-phone']:hasEnough(src, 'gne', 30) == true then
        exports['qb-phone']:RemoveCrypto(src, 'gne', 30)
        TriggerClientEvent('QBCore:Notify', src, 'Successfully Bought', 'success')
    end

    if Player.Functions.AddItem(Config.Shop[ped].item, 1) ~= true then
        Player.Functions.AddMoney(payType, price)
        TriggerClientEvent('QBCore:Notify', src, 'Could not give item', 'error')
        return
    end

    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Shop[ped].item], "add")
    TriggerClientEvent('QBCore:Notify', src, "Here's the contraband, Good Luck!")
end)
