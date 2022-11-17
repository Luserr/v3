local QBCore = exports['qb-core']:GetCoreObject()

RPC.register('venture_aoki_ceo:server:SushiCheck', function()
    --sushi - rice, seaweed, fish, veggies
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rice = Player.Functions.GetItemByName('rice')
    local seaweed = Player.Functions.GetItemByName('seaweed')
    local fish = Player.Functions.GetItemByName('fish')
    local veggies = Player.Functions.GetItemByName('veggies')
    if rice and seaweed and fish and veggies then
        return true
    else
        return false
    end
end)

RPC.register('venture_aoki_ceo:server:SushiMake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('rice')
    Player.Functions.RemoveItem('seaweed')
    Player.Functions.RemoveItem('fish')
    Player.Functions.RemoveItem('veggies')
end)

RPC.register('venture_aoki_ceo:server:RamenCheck', function()
    --noodles, broth, veggies, egg
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local noodles = Player.Functions.GetItemByName('noodles')
    local broth = Player.Functions.GetItemByName('broth')
    local veggies = Player.Functions.GetItemByName('veggies')
    local eggs = Player.Functions.GetItemByName('eggs')
    if noodles and broth and veggies and eggs then
        return true
    else
        return false
    end
end)

RPC.register('venture_aoki_ceo:server:RamenMake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('noodles')
    Player.Functions.RemoveItem('broth')
    Player.Functions.RemoveItem('veggies')
    Player.Functions.RemoveItem('eggs')
end)

RPC.register('venture_aoki_ceo:server:GreenTeaCheck', function()
    --green tea - water, healing leaf
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local water = Player.Functions.GetItemByName('water_bottle')
    local healingleaf = Player.Functions.GetItemByName('healingleaf')
    if water and healingleaf then
        return true
    else
        return false
    end
end)

RPC.register('venture_aoki_ceo:server:GreenTeaMake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('water_bottle')
    Player.Functions.RemoveItem('healingleaf')
end)

RPC.register('venture_aoki_ceo:server:SakeCheck', function()
    --sake - Alcohol, rice, water
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local alcohol = Player.Functions.GetItemByName('alcohol')
    local rice = Player.Functions.GetItemByName('rice')
    local water = Player.Functions.GetItemByName('water_bottle')
    if alcohol and rice and water then
        return true
    else
        return false
    end 
end)

RPC.register('venture_aoki_ceo:server:SakeMake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('water_bottle')
    Player.Functions.RemoveItem('rice')
    Player.Functions.RemoveItem('alcohol')
end)

RPC.register('venture_aoki_ceo:server:GyozaCheck', function()
    --Gyoza - Beef, Dough
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local beef = Player.Functions.GetItemByName('beef')
    local dough = Player.Functions.GetItemByName('dough')
    if beef and dough then
        return true
    else
        return false
    end 
end)

RPC.register('venture_aoki_ceo:server:RemoveBait', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local bait = Player.Functions.GetItemByName('fishingbait')
    if bait then
        Player.Functions.RemoveItem('fishingbait')
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items['fishingbait'], 'remove', 1)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'You do not have fishing bait', 'error', 2500)
        return false
    end
end)

RPC.register('venture_aoki_ceo:server:ReceiveFish', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) -- Random number from 1 to 100
    local item

    if random >= 1 and random <= 30 then -- 30%
        item = 'fish'
    elseif random >= 30 and random <= 37 then -- 7%
        item = 'fish'
    elseif random >= 37 and random <= 44 then -- 7%
        item = 'fish'
    elseif random >= 44 and random <= 51 then -- 7%
        item = 'fish'
    elseif random >= 51 and random <= 58 then -- 7%
        item = 'fish'
    elseif random >= 58 and random <= 65 then -- 7%
        item = 'fish'
    elseif random >= 65 and random <= 72 then -- 7%
        item = 'fish'
    elseif random >= 72 and random <= 79 then -- 7%
        item = 'fish'
    elseif random >= 79 and random <= 86 then -- 7%
        item = 'fish'
    elseif random >= 86 and random <= 93 then -- 7%
        item = 'fish'
    elseif random >= 93 and random <= 100 then -- 7%
        item = 'fish'
    end

    if exports['qb-inventory']:AddItem(Player.PlayerData.source, item, 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', 1)
        TriggerEvent('qb-log:server:CreateLog', 'fishing', 'Received Fish', 'blue', "**"..Player.PlayerData.name .. " (citizenid: "..Player.PlayerData.citizenid.." | id: "..Player.PlayerData.source..")** received 1x "..QBCore.Shared.Items[item].label)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

RPC.register('venture_aoki_ceo:server:GyozaMake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('beef')
    Player.Functions.RemoveItem('dough')
end)

RPC.register('venture_aoki_ceo:server:Bill', function(info)
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
                    exports['Renewed-Banking']:addAccountMoney(Player.PlayerData.job.name, bossamount, Shared.Job)
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
                    Player2.Functions.RemoveMoney('cash', Amount, "Aoki Receipt")
                    Player.Functions.AddMoney('cash', playeramount, "Aoki Receipt")
                    exports['Renewed-Banking']:addAccountMoney(Player.PlayerData.job.name, bossamount, Shared.Job)
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