local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('venture:vonceo:get:BlackCoffeIngredients', function(source, cb) 
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bcoffeebeans = Ply.Functions.GetItemByName("blackcoffeebeans")
    local water = Ply.Functions.GetItemByName("water_bottle")
    local oats = Ply.Functions.GetItemByName('oats')
    if bcoffeebeans and water and oats then
        cb(true)
        Ply.Functions.RemoveItem("blackcoffeebeans", 1)
        Ply.Functions.RemoveItem("water_bottle", 1)
        Ply.Functions.RemoveItem('oats')
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('venture:vonceo:get:FrappuccinoIngredients', function(source, cb) 
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local coffeebeans = Ply.Functions.GetItemByName("coffeebeans")
    local water = Ply.Functions.GetItemByName("water_bottle")
    local oats = Ply.Functions.GetItemByName('oats')
    if coffeebeans and water and oats then
        cb(true)
        Ply.Functions.RemoveItem("coffeebeans", 1)
        Ply.Functions.RemoveItem("water_bottle", 1)
        Ply.Functions.RemoveItem('oats', 1)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('venture:vonceo:get:BreakfastSandwichIngredients', function(source, cb) 
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bread = Ply.Functions.GetItemByName("bread")
    local eggs = Ply.Functions.GetItemByName("eggs")
    local cheese = Ply.Functions.GetItemByName("cheese")
    local fryingpan = Ply.Functions.GetItemByName('fryingpan')
    if bread and eggs and cheese and fryingpan then
        cb(true)
        Ply.Functions.RemoveItem("bread", 1)
        Ply.Functions.RemoveItem("eggs", 1)
        Ply.Functions.RemoveItem("cheese", 1)
    else
        cb(false)
    end
end)

RPC.register('venture:ceo:vonPalletGive', function()
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    Ply.Functions.AddItem("burger-pallet", 1)
    print("Item Given")
end)

RPC.register('venture:ceo:vonPalletUnpack', function(type)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    if type then
    Ply.Functions.RemoveItem('burger-pallet', 1)
    print("Items Given, Pallet Removed")
    else
        if not type then
            print('Why is this false')
        end
    end
end)

RPC.register('venture:vonceo:server:PrepareEggs', function(stage)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local hardegg = Ply.Functions.GetItemByName('hardegg')
    local fryingpan = Ply.Functions.GetItemByName('fryingpan')
    if hardegg and fryingpan then 
        print('Has Items')
        return true
    else
        print('Does not have items')
        return false
    end
    if stage == 2 then
        Ply.Functions.RemoveItem('hardegg', 1)
        Ply.Functions.AddItem('eggs', 1)
        print('Eggs made')
    end
end)

RPC.register('venture:vonceo:server:PrepareCoffeebeans', function(stage)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local beans = Ply.Functions.GetItemByName('beans')
    local coffeedust = Ply.Functions.GetItemByName('coffeedust')
    if beans and coffeedust then
        print('Has Items')
        return true
    else   
        return false 
    end
    Ply.Functions.RemoveItem('beans', 1)
    Ply.Functions.RemoveItem('coffeedust', 1)
    Ply.Functions.AddItem('coffeebeans', 1)
    print('Items Added')
end)

RPC.register('starbucks:server:addItems', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem(item, amount)
end)

RPC.register('venture:vonceo:server:PrepareMilk', function(stage)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local oats = Ply.Functions.GetItemByName('oats')
    local water = Ply.Functions.GetItemByName('water_bottle')
    if oats and water  then
        print('Has Items')
        return true
    else
        return false
    end
end)

RPC.register('venture:vonceo:server:Bill', function(info)
    local Player = QBCore.Functions.GetPlayer(source)
    local Player2 = QBCore.Functions.GetPlayers(tonumber(info.citizenid))
    local type = info.billtype
    local pos = GetEntityCoords(GetPlayerPed(source))
    local pos2 = GetEntityCoords(GetPlayerPed(tonumber(info.citizenid)))
    local dist = #(pos - pos2)
    if Player.PlayerData.job.name == Shared.Job then
        if Player.PlayerData.job.onduty then
            if type == "bank" then
                if dist < 10 then
                    local Amount = tonumber(info.billprice)
                    local playeramount = Amount * 0.2
                    local bossamount = Amount - playeramount
                    Player2.Functions.RemoveMoney('bank', Amount, 'Starbucks debit card charged')
                    -- Send money to sender job--
                    Player.Functions.AddMoney('bank', playeramount, 'Starbucks debit card charged')
                    exports['Renewed-Banking']:addAccountMoney(Player.PlayerData.job.name, bossamount, "Starbucks")
                    MySQL.Async.insert('INSERT INTO phone_invoices (id, citizenid, amount, society, sender, sendercitizenid) VALUES (:id, :citizenid, :amount, :society, :sender, :sendercitizenid)', {
                        ['id'] = Player2,
                        ['citizenid'] = Player2.PlayerData.citizenid,
                        ['amount'] = Amount,
                        ['society'] = Player.PlayerData.job.name,
                        ['sender'] = Player.PlayerData.charinfo.firstname,
                        ['sendercitizenid'] = Player.PlayerData.citizenid
                    })
                    TriggerClientEvent('qb-phone:RefreshPhone', Player2.PlayerData.source)
                    TriggerClientEvent('QBCore:Notify', source, "Bill Sent", 'success')
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, "New Invoice Received", "success")
                else
                   if dist < 10 then
                    local Amount = tonumber(info.billprice)
                    local playeramount = Amount * 0.4
                    local bossamount = Amount - playeramount
                    Player2.Functions.RemoveMoney('cash', Amount, "Starbucks Receipt")
                    Player.Functions.AddMoney('cash', playeramount, "Starbucks Receipt")
                    exports['Renewed-Banking']:addAccountMoney(Player.PlayerData.job.name, bossamount, "Starbucks")
                    -----
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You have been charged $ ' ..Amount, 'error')
                    TriggerClientEvent('QBCore:Notify', source, 'You charged the person $ ' ..Amount, 'success')
                   else
                    TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are too far away! ', 'error')
                   end
                end
            else
                TriggerClientEvent('QBCore:Notify', Player2.PlayerData.source, 'You are not on Duty! ', 'error')
            end
        end
    end
end)