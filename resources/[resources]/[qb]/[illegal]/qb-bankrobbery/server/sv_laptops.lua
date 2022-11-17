local QBCore = exports['qb-core']:GetCoreObject()

local Laptops = {
    [1] = {
        name = 'Ph03nix',
        item = 'usb_green',
        laptop = 'laptop_green',
        price = 1.70,
        coords = vector3(-24.44755, -1239.655, 29.335018)
    },
    [2] = {
        name = 'Ramsay',
        item = 'usb_blue',
        laptop = 'laptop_blue',
        price = 2.80,
        coords = vector3(-457.1637, -2267.313, 8.5158176)
    },
    [3] = {
        name = 'Plague',
        item = 'usb_red',
        laptop = 'laptop_red',
        price = 3.30,
        coords = vector3(846.79309, 2863.3364, 58.485095)
    },
    [4] = {
        name = 'Trinity',
        item = 'usb_gold',
        laptop = 'laptop_gold',
        price = 4.50,
        coords = vector3(-589.5875, -1764.493, 23.180347)
    }
}

RegisterNetEvent('qb-bankrobbery:server:BuyLaptop', function(index)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Laptops[index].item
    local laptop = Laptops[index].laptop
    local info = {uses = 3}
    if Player.Functions.GetItemByName(item) then
        if (Player.PlayerData.money.crypto - Laptops[index].price) >= 0 then
            -- Remove USB
            Player.Functions.RemoveItem(item, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove")
            -- Remove Crypto
            --Player.Functions.RemoveMoney('crypto', Laptops[index].price)
            exports['qb-phone']:RemoveCrypto(src, 'gne', Laptops[index].price)
            -- Add Laptop
            Player.Functions.AddItem(laptop, 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[laptop], "add")
            -- Log, debug print and notify client
            if debug then
                print('^3[qb-bankrobbery] ^5'..GetPlayerName(src)..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') Purchased '..laptop..' for '..Laptops[index].price..' crypto^7')
            end
            TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Purchased "..laptop, "white", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) purchased one "..laptop.." from "..Laptops[index].name.." for "..Laptops[index].price.." crypto")
            TriggerClientEvent('QBCore:Notify', src, "You purchased a laptop from "..Laptops[index].name.." for "..Laptops[index].price.." crypto", "success", 2500)
        else
            TriggerClientEvent('QBCore:Notify', src, "You don't have enough crypto", "error", 2500)
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You don't have anything to offer", "error", 2500)
    end
end)

RegisterNetEvent('qb-bankrobbery:server:BuyGreyUsb', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local price = 2.30
    local info = {uses = 3}
    if (Player.PlayerData.money.crypto - price) >= 0 then
        --Player.Functions.RemoveMoney('crypto', price)
        exports['qb-phone']:RemoveCrypto(src, 'gne', 30)
        Player.Functions.AddItem("usb_grey", 1, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["usb_grey"], "add")
        if debug then
            print('^3[qb-bankrobbery] ^5'..GetPlayerName(src)..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') Purchased Grey USB for '..price..' crypto^7')
        end
        TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Purchased Grey USB", "white", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) purchased one usb_grey from Daut for "..price.." crypto")
        TriggerClientEvent('QBCore:Notify', src, "You purchased a laptop from Daut for "..price.." crypto", "success", 2500)
    else
        TriggerClientEvent('QBCore:Notify', src, "You don't have enough crypto", "error", 2500)
    end
end)

RegisterNetEvent('qb-bankrobbery:server:LaptopDamage', function(laptop)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local item = Player.Functions.GetItemByName(laptop)
    if (Player.PlayerData.items[item.slot].info.uses - 1) <= 0 then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item.name], "remove")
        Player.Functions.RemoveItem(item.name, 1)
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Removed '..laptop, 'default', '**'..GetPlayerName(src)..'** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) removed: **'..laptop..'**')
        if debug then
            print('^3[qb-bankrobbery] ^5Removed '..laptop..' from '..GetPlayerName(src)..' (citizenid: '..Player.PlayerData.citizenid..' | id: '..src..')^7')
        end
    else
        Player.PlayerData.items[item.slot].info.uses = Player.PlayerData.items[item.slot].info.uses - 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)