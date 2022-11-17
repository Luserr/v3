local QBCore = exports['qb-core']:GetCoreObject()
local xSound = exports.xsound


local LANG = Locale.Languages[Locale.Language]


RegisterNetEvent('qb-irishpub:server:playMusic', function(song, zoneName,loopedStatus)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local boothCoords = Config.Locations[zoneName].coords
    local dist = #(coords - boothCoords)
    if dist > 20 then return end
    xSound:PlayUrlPos(-1, zoneName, song, Config.DefaultVolume, coords,loopedStatus)
    xSound:Distance(-1, zoneName, Config.Locations[zoneName].radius)
    Config.Locations[zoneName].playing = true
    TriggerClientEvent('qb-irishpub:client:playMusic', src)
end)

RegisterNetEvent('qb-irishpub:server:stopMusic', function(data)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local boothCoords = Config.Locations[data.zoneName].coords
    local dist = #(coords - boothCoords)
    if dist > 20 then return end
    if Config.Locations[data.zoneName].playing then
        Config.Locations[data.zoneName].playing = false
        xSound:Destroy(-1, data.zoneName)
    end
    TriggerClientEvent('qb-irishpub:client:playMusic', src)
end)

RegisterNetEvent('qb-irishpub:server:pauseMusic', function(data)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local boothCoords = Config.Locations[data.zoneName].coords
    local dist = #(coords - boothCoords)
    if dist > 20 then return end
    if Config.Locations[data.zoneName].playing then
        Config.Locations[data.zoneName].playing = false
        xSound:Pause(-1, data.zoneName)
    end
    TriggerClientEvent('qb-irishpub:client:playMusic', src)
end)

RegisterNetEvent('qb-irishpub:server:resumeMusic', function(data)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local boothCoords = Config.Locations[data.zoneName].coords
    local dist = #(coords - boothCoords)
    if dist > 20 then return end
    if not Config.Locations[data.zoneName].playing then
        Config.Locations[data.zoneName].playing = true
        xSound:Resume(-1, data.zoneName)
    end
    TriggerClientEvent('qb-irishpub:client:playMusic', src)
end)

RegisterNetEvent('qb-irishpub:server:changeVolume', function(volume, zoneName)
    local src = source
    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local boothCoords = Config.Locations[zoneName].coords
    local dist = #(coords - boothCoords)
    if dist > 20 then return end
    if not tonumber(volume) then return end
    if Config.Locations[zoneName].playing then
        xSound:setVolume(-1, zoneName, volume)
    end
end)


RegisterServerEvent("qb-irishpub:server:bill:player", function(info)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(info.citizenid))
    local type = info.billtype
    local amount = tonumber(info.billprice)
    if billed ~= nil then
        if true then
            if amount > 0 then 
                if type == "bill" then
                    exports.oxmysql:insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                        ['citizenid'] = billed.PlayerData.citizenid,
                        ['amount'] = amount,
                        ['society'] = biller.PlayerData.job.name,
                        ['sender'] = biller.PlayerData.charinfo.firstname
                    })
                    TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                    TriggerClientEvent('QBCore:Notify', source, ""..LANG["CUSTOMER_BILL_INVOICE_SCSS"].."", 'success')
                    TriggerClientEvent('QBCore:Notify', billed.PlayerData.source,""..LANG["CUSTOMER_BILL_INVOICE_SCSS_TAKE"].."")
                end
            else
                TriggerClientEvent('QBCore:Notify', source, ""..LANG["CUSTOMER_BILL_MUST_BE"].."", 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, ""..LANG["CUSTOMER_BILL_CONNOT_YOURSELF"].."", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, ""..LANG["CUSTOMER_BILL_NOT_ONLINE"].."", 'error')
    end
end)

RegisterNetEvent('qb-irishpub:server:GiveIce',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("waterice", 5)
end)

RegisterNetEvent("qb-irishpub:server:GeneralCraft",function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local first = data.Items.first
    local second = data.Items.second
    local third = data.Items.third
    local firstItem = Player.Functions.GetItemByName(data.Items.first)
    local secondItem = Player.Functions.GetItemByName(data.Items.second)
    local thirdItem = Player.Functions.GetItemByName(data.Items.third)
    local firstCost = data.Costs.first
    local secondCost = data.Costs.second
    local thirdCost = data.Costs.third
    local itemSpawnName = data.Spawn
    local itemNameLabel = data.Name
    local outputAmount = data.outputAmount

    if (first ~= nil and first ~= '') and (second ~= nil and second ~= '') and (third ~=nil and third ~='') then
        if firstItem ~= nil then 
            if firstItem.amount >= firstCost then
                if secondItem ~=nil then 
                    if secondItem.amount >= secondCost then
                        if thirdItem ~=nil then 
                            if thirdItem.amount >= thirdCost then 
                                Player.Functions.RemoveItem(first,firstCost)
                                Player.Functions.RemoveItem(second,secondCost)
                                Player.Functions.RemoveItem(third,thirdCost)
                                Player.Functions.AddItem(itemSpawnName, outputAmount)
                                TriggerClientEvent("QBCore:Notify", src, ""..LANG["CRAFT_SUCCESS"]..""..itemNameLabel.."")
                            else
                                TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_AMOUNT"]..""..thirdItem['label'].."")
                            end
                        else
                            TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_ANY"]..""..thirdItem['label'].."")
                        end
                    else
                        TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_AMOUNT"]..""..secondItem['label'].."")
                    end
                else
                    TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_ANY"]..""..secondItem['label'].."")
                end
            else
                TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_AMOUNT"]..""..firstItem['label'].."")
            end
        else
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_ANY"]..""..data.Items.first.."")
        end
    elseif (first ~= nil and first ~= '') and (second ~= nil and second ~= '') and (third == nil or third == '') then
        if firstItem ~= nil then 
            if firstItem.amount >= firstCost then
                if secondItem ~=nil then 
                    if secondItem.amount >= secondCost then
                        Player.Functions.RemoveItem(first,firstCost)
                        Player.Functions.RemoveItem(second,secondCost)
                        Player.Functions.AddItem(itemSpawnName, outputAmount)
                        TriggerClientEvent("QBCore:Notify", src, ""..LANG["CRAFT_SUCCESS"]..""..itemNameLabel.."")
                    else
                        TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_AMOUNT"]..""..secondItem['label'].."")
                    end
                else
                    TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_ANY"]..""..secondItem['label'].."")
                end
            else
                TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_AMOUNT"]..""..firstItem['label'].."")
            end
        else
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_ANY"]..""..data.Items.first.."")
        end
    elseif (first ~= nil and first ~= '') and (second == '' or second ==nil) and (third == '' or third == nil) then
        if firstItem ~= nil then 
            if firstItem.amount >= firstCost then
                Player.Functions.RemoveItem(first,firstCost)
                Player.Functions.AddItem(itemSpawnName, outputAmount)
                TriggerClientEvent("QBCore:Notify", src, ""..LANG["CRAFT_SUCCESS"]..""..itemNameLabel.."")
            else
                TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_AMOUNT"]..""..firstItem['label'].."")
            end
        else
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["SERVER_ITEM_ANY"]..""..data.Items.first.."")
        end
    elseif ((first == nil or first == '') and (second == '' or second ==nil) and (third == '' or third == nil)) then
        Player.Functions.AddItem(itemSpawnName, outputAmount)
        TriggerClientEvent("QBCore:Notify", src, ""..LANG["CRAFT_SUCCESS"]..""..itemNameLabel.."")
    end
end)

QBCore.Functions.CreateCallback('qb-irishpub:server:GeneralCheck', function(source, cb,data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local first = data.Items.first
    local second = data.Items.second
    local third = data.Items.third
    local firstItem = Player.Functions.GetItemByName(data.Items.first)
    local secondItem = Player.Functions.GetItemByName(data.Items.second)
    local thirdItem = Player.Functions.GetItemByName(data.Items.third)
    if (first ~= nil and first ~= '') and (second ~= nil and second ~= '') and (third ~=nil and third ~='') then
        if firstItem ~= nil then 
            firstCheck = true
            if secondItem ~=nil then
                secondCheck = true
                if thirdItem ~= nil then
                    thirdCheck = true
                else
                    thirdCheck = false
                end
            else
                secondCheck = false
            end
        else
            firstCheck = false 
        end
        cb((firstCheck and secondCheck and thirdCheck))
    elseif (first ~= nil and first ~= '') and (second ~= nil and second ~= '') and (third == '') then
        if firstItem ~= nil then 
            firstCheck = true
            if secondItem ~=nil then 
                secondCheck = true       
            else
                secondCheck = false
            end
        else
            firstCheck = false
        end
        cb((firstCheck and secondCheck))
    elseif (first ~= nil and first ~= '') and (second == '' or second == nil) and (third =='' or third == nil) then
        if firstItem ~= nil then 
            firstCheck = true
        else
            firstCheck = false
        end
        cb(firstCheck)
    elseif ((first == nil or first == '') and (second == '' or second ==nil) and (third == '' or third == nil)) then
        cb(true)
    end
end)


RegisterNetEvent("qb-irishpub:server:CustomerTakeItem",function(val,amount,paymentType)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalAmount = amount
    local totalPrice = (amount * val.avbSellPrice)
    local bank = Player.Functions.GetMoney('bank')
    local cash = Player.Functions.GetMoney('cash')
    if paymentType == "cash" then
        if cash >= totalPrice then
            Player.Functions.RemoveMoney('cash', totalPrice)
            Player.Functions.AddItem(val.avbItemName,totalAmount)
            TriggerEvent('qb-bossmenu:server:addAccountMoney', Config.Jobname, totalPrice) 
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["CUSTOMER_TAKE_ITEM"]..""..val.avbItemLabel.."")
        else
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["CUSTOMER_NOT_ENOUGH_CASH"].."","error")
        end
    elseif paymentType == "bank" then
        if bank >= totalPrice then
            Player.Functions.RemoveMoney('bank', totalPrice)
            Player.Functions.AddItem(val.avbItemName,totalAmount)
            TriggerEvent('qb-bossmenu:server:addAccountMoney',Config.Jobname, totalPrice) 
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["CUSTOMER_TAKE_ITEM"]..""..val.avbItemLabel.."")
        else
            TriggerClientEvent("QBCore:Notify", src, ""..LANG["CUSTOMER_NOT_ENOUGH_BANK"].."","error")
        end
    end
end)

QBCore.Functions.CreateCallback('qb-irishpub:server:WorkerCheck', function(source, cb)
	local amount = 0
    local job = Config.Jobname
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player ~= nil then 
            if (Player.PlayerData.job.name == job and Player.PlayerData.job.onduty) then
                amount = amount + 1
            end
        end
	end
	cb(amount)
end)

-- Get Employees
QBCore.Functions.CreateCallback('qb-irishpub:server:GetEmployees', function(source, cb)
    local src = source
    local jobname = Config.Jobname
    local employees = {}
    local players = MySQL.Sync.fetchAll("SELECT * FROM `players` WHERE `job` LIKE '%".. jobname .."%'")
    if players[1] ~= nil then
        for key, value in pairs(players) do
            local isOnline = QBCore.Functions.GetPlayerByCitizenId(value.citizenid)
            if isOnline then
                employees[#employees+1] = {
                    empSource = isOnline.PlayerData.citizenid,
                    grade = isOnline.PlayerData.job.grade,
                    level = isOnline.PlayerData.job.grade.level,
                    isboss = isOnline.PlayerData.job.isboss,
                    name = isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
                }
            end
        end
    end
    cb(employees)
end)

RegisterNetEvent('qb-irishpub:server:TipBoxPay',function(data)
    local citizenid  = data.citizenid
    local placename = data.place
    local playername = data.name
    local payType = data.payType
    local payAmount = data.payAmount
    local Payed = QBCore.Functions.GetPlayer(source)
    local Taked = QBCore.Functions.GetPlayerByCitizenId(citizenid)
    local cash = Payed.PlayerData.money['cash']
    local bank = Payed.PlayerData.money['bank']

    if payType == "cash" then
        if cash > payAmount then
            Payed.Functions.RemoveMoney('cash',payAmount)
            if Config.TipTax then
                if Config.TaxRate < 0.4 and Config.TaxRate > 0 then
                    local taxPrice = math.ceil(payAmount * Config.TaxRate)
                    local takedAmount = math.ceil(payAmount - taxPrice)
                    Taked.Functions.AddMoney('bank',takedAmount)
                    TriggerClientEvent("QBCore:Notify", Taked.PlayerData.source, ""..LANG['GOT_TIP_BOX']..""..takedAmount..""..LANG['TIP_BOX_CURRENCY'].."")
                    TriggerEvent('qb-bossmenu:server:addAccountMoney', placename, taxPrice)
                else
                    local taxPrice = math.ceil(payAmount * 0.4)
                    local takedAmount = math.ceil(payAmount - taxPrice)
                    Taked.Functions.AddMoney('bank',takedAmount)
                    TriggerClientEvent("QBCore:Notify", Taked.PlayerData.source, ""..LANG['GOT_TIP_BOX']..""..takedAmount..""..LANG['TIP_BOX_CURRENCY'].."")
                    TriggerEvent('qb-bossmenu:server:addAccountMoney', placename, taxPrice)
                end
            else 
                local takedAmount = math.ceil(payAmount)
                Taked.Functions.AddMoney('bank',takedAmount)
                TriggerClientEvent("QBCore:Notify", Taked.PlayerData.source, ""..LANG['GOT_TIP_BOX']..""..takedAmount..""..LANG['TIP_BOX_CURRENCY'].."")
            end
        else
            TriggerClientEvent("QBCore:Notify", Payed.PlayerData.source, ""..LANG['TIP_BOX_NOMONEY'].."")
        end
    elseif payType == "bank" then 
        if bank > payAmount then
            Payed.Functions.RemoveMoney('bank',payAmount)
            if Config.TipTax then
                if Config.TaxRate < 0.4 and Config.TaxRate > 0 then
                    local taxPrice = math.ceil(payAmount * Config.TaxRate)
                    local takedAmount = math.ceil(payAmount - taxPrice)
                    Taked.Functions.AddMoney('bank',takedAmount)
                    TriggerClientEvent("QBCore:Notify", Taked.PlayerData.source, ""..LANG['GOT_TIP_BOX']..""..takedAmount..""..LANG['TIP_BOX_CURRENCY'].."")
                    TriggerEvent('qb-bossmenu:server:addAccountMoney', placename, taxPrice)
                else
                    local taxPrice = math.ceil(payAmount * 0.4)
                    local takedAmount = math.ceil(payAmount - taxPrice)
                    Taked.Functions.AddMoney('bank',takedAmount)
                    TriggerClientEvent("QBCore:Notify", Taked.PlayerData.source, ""..LANG['GOT_TIP_BOX']..""..takedAmount..""..LANG['TIP_BOX_CURRENCY'].."")
                    TriggerEvent('qb-bossmenu:server:addAccountMoney', placename, taxPrice)
                end
            else 
                local takedAmount = math.ceil(payAmount)
                Taked.Functions.AddMoney('bank',takedAmount)
                TriggerClientEvent("QBCore:Notify", Taked.PlayerData.source, ""..LANG['GOT_TIP_BOX']..""..takedAmount..""..LANG['TIP_BOX_CURRENCY'].."")
            end
        else
            TriggerClientEvent("QBCore:Notify", Payed.PlayerData.source, ""..LANG['TIP_BOX_NOMONEY'].."")
        end
    end
end)





