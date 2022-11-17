local QBCore = exports['qb-core']:GetCoreObject()
debug = true

local disable = false -- disable all bank heists
local robberyBusy = { -- You don't want to touch this unless you want to disable a particular type
    fleeca = false,
    paleto = false,
    pacific = false    
}

local bankCooldown = { -- These cooldowns start the second the bank is successfully hacked
    fleeca = 45,
    paleto = 50,
    pacific = 60,
    vault = 60
}

--- Resets all bool variables for a given bank so that it can be hit again
--- @param bank string - Name of the bank
local ResetBank = function(bank)
    robberyBusy[Config.Banks[bank].type] = false
    -- Scoreboard trigger
    --TriggerEvent('qb-scoreboard:server:SetActivityBusy', bank, false)
    -- Door
    Config.Banks[bank].hacked = false
    Config.Banks[bank].policeClose = false
    -- lockers
    for i=1, #Config.Banks[bank].lockers, 1 do
        Config.Banks[bank].lockers[i].busy = false
        Config.Banks[bank].lockers[i].taken = false
    end
    -- Trollys
    for j=1, #Config.Banks[bank].trolly, 1 do
        Config.Banks[bank].trolly[j].taken = false
    end
    -- Thermite spots
    if Config.Banks[bank].thermite then
        for k=1, #Config.Banks[bank].thermite, 1 do
            Config.Banks[bank].thermite[k].hit = false
        end
    end
    -- Stackpiles of cash or gold
    if Config.Banks[bank].stacks then
        for h=1, #Config.Banks[bank].stacks, 1 do
            Config.Banks[bank].stacks[h].taken = false
        end
    end
    -- Big Banks
    if bank == 'Paleto' then
        Config.Banks['Paleto'].outsideHack = false
    elseif bank == 'Pacific' then
        Config.Banks['Pacific'].card = false
    elseif bank == 'Vault' then
        TriggerEvent('qb-bankrobbery:server:SetLasers', false)
        Config.Banks['Vault'].goldhacked = false
        Config.Banks['Vault'].lockdown = false
        Config.Banks['Vault'].code = false
        Config.Banks['Vault'].powerplantHit = false
    end
    TriggerClientEvent('qb-bankrobbery:client:ResetBank', -1, bank)
    print('^3[qb-bankrobbery] ^5Bank Fully Reset: '..bank..'^7')
end

RegisterNetEvent('qb-bankrobbery:server:PDClose', function(bank)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Config.Banks[bank].policeClose = not Config.Banks[bank].policeClose
    TriggerClientEvent('qb-bankrobbery:client:PDClose', -1, bank)
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') Police Locked '..Config.Banks[bank].label..': '..tostring(Config.Banks[bank].policeClose)..'^7')
    end
    TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Police Lock "..Config.Banks[bank].label, "blue", "**".. Player.PlayerData.name .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) Locked Door: "..tostring(Config.Banks[bank].policeClose))
end)

RegisterNetEvent('qb-bankrobbery:server:SetBankHacked', function(bank)
    robberyBusy[Config.Banks[bank].type] = true
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') Succesfully hacked: '..Config.Banks[bank].label..'^7')
    end
    TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Hacked "..Config.Banks[bank].label, "default", "**"..Player.PlayerData.name.."** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) Hacked: "..Config.Banks[bank].label)
    TriggerEvent('qb-scoreboard:server:SetActivityBusy', bank, true)
    CreateThread(function() -- 6 seconds until door opens
        Wait(6000)
        Config.Banks[bank].hacked = true
        TriggerClientEvent('qb-bankrobbery:client:SetBankHacked', -1, bank)
        if debug then
            print('^3[qb-bankrobbery] ^5Door Opened: '..Config.Banks[bank].label..'^7')
        end
    end)
    CreateThread(function() -- Cooldown timer start
        print('^3[qb-bankrobbery] ^5'..Config.Banks[bank].label..' '..bankCooldown[Config.Banks[bank].type]..' minutes until full reset.^7')
        Wait(bankCooldown[Config.Banks[bank].type]*60*1000)
        ResetBank(bank)
    end)
end)

RegisterNetEvent('qb-bankrobbery:server:SetOutsideHacked', function(bank, state)
    local src = source
    Config.Banks[bank].outsideHack = state
    TriggerClientEvent('qb-bankrobbery:client:SetOutsideHacked', -1, bank, state)
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(id: '..src..') Hacked Outside Paleto^7') 
    end
end)

RegisterNetEvent('qb-bankrobbery:server:DeleteObject', function(netId)
    local object = NetworkGetEntityFromNetworkId(netId)
	DeleteEntity(object)
end)

RegisterNetEvent('qb-bankrobbery:server:SetTrollyBusy', function(bank, index, state)
    Config.Banks[bank].trolly[index].taken = state
    TriggerClientEvent('qb-bankrobbery:client:SetTrollyBusy', -1, bank, index, state)
end)

RegisterNetEvent('qb-bankrobbery:server:TrollyReward', function(type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {worth = math.random(22000, 26000)} -- money bag worth

    if type == 'gold' then
        local receiveAmount = 10
        Player.Functions.AddItem('goldbar', receiveAmount, false)
        TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Bankrobbery log: Pacific", "yellow", "**".. Player.PlayerData.name .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) received: **"..receiveAmount.."x goldbars**")
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["goldbar"], "add", receiveAmount)
        TriggerClientEvent('QBCore:Notify', src, 'You got ' .. receiveAmount .. ' goldbars...')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..receiveAmount..' goldbars^7')
        end
    elseif type == 'fleeca' then
        local receiveAmount = math.random(4, 6)
        Player.Functions.AddItem('markedbills', receiveAmount, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], 'add', receiveAmount)
        TriggerClientEvent('QBCore:Notify', src, 'You got ' .. receiveAmount .. ' bags of inked money...')
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'green', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..receiveAmount..'x inked money: $'..(receiveAmount*info.worth)..'**')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..receiveAmount..' moneybags: '..(receiveAmount*info.worth)..'^7')
        end
    elseif type == 'paleto' then
        local receiveAmount = math.random(7, 9)
        Player.Functions.AddItem('markedbills', receiveAmount, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], 'add', receiveAmount)
        TriggerClientEvent('QBCore:Notify', src, 'You got ' .. receiveAmount .. ' bags of inked money...')
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'blue', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..receiveAmount..'x inked money: $'..(receiveAmount*info.worth)..'**')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..receiveAmount..' moneybags: '..(receiveAmount*info.worth)..'^7')
        end
    elseif type == 'pacific' then
        local receiveAmount = math.random(10, 13)
        Player.Functions.AddItem('markedbills', receiveAmount, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], 'add', receiveAmount)
        TriggerClientEvent('QBCore:Notify', src, 'You got ' .. receiveAmount .. ' bags of inked money...')
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'yellow', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..receiveAmount..'x inked money: $'..(receiveAmount*info.worth)..'**')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..receiveAmount..' moneybags: '..(receiveAmount*info.worth)..'^7')
        end
    elseif type == 'vault' then
        local receiveAmount = math.random(15, 20)
        Player.Functions.AddItem('markedbills', receiveAmount, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], 'add', receiveAmount)
        TriggerClientEvent('QBCore:Notify', src, 'You got ' .. receiveAmount .. ' bags of inked money...')
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'black', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..receiveAmount..'x inked money: $'..(receiveAmount*info.worth)..'**')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..receiveAmount..' moneybags: '..(receiveAmount*info.worth)..'^7')
        end
    end
end)

RegisterNetEvent('qb-bankrobbery:server:SetLockerBusy', function(bank, index, state)
    Config.Banks[bank].lockers[index].busy = state
    TriggerClientEvent('qb-bankrobbery:client:SetLockerBusy', -1, bank, index, state)
end)

RegisterNetEvent('qb-bankrobbery:server:SetLockerTaken', function(bank, index, state)
    Config.Banks[bank].lockers[index].taken = state
    TriggerClientEvent('qb-bankrobbery:client:SetLockerTaken', -1, bank, index, state)
end)

RegisterNetEvent('qb-bankrobbery:server:LockerReward', function(type)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if type == 'fleeca' then
        -- Tier 1: 50% = 10 GOLD BARS
        -- Tier 2: 30% = 10-12 GOLD BARS
        -- Tier 3: 15% = 1 blue usb
        -- Tier 4: 5% = 1 blue usb + 3-5 GOLD BARS
        local tierChance = math.random(100)
        local tier = 1
        if tierChance <= 50 then tier = 1 elseif tierChance > 50 and tierChance <= 80 then tier = 2 elseif tierChance > 80 and tierChance <= 95 then tier = 3 else tier = 4 end
        if tier == 1 then
            local itemAmount = 10
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'green', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
               print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        elseif tier == 2 then
            local itemAmount = math.random(10, 12)
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'green', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        elseif tier == 3 then
            --blue usb
            Player.Functions.AddItem('usb_blue', 1)
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'green', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **usb_blue**')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['usb_blue'], 'add')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received usb_blue^7') 
            end
        elseif tier == 4 then
            --blue usb
            Player.Functions.AddItem('usb_blue', 1)
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'green', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **usb_blue**')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['usb_blue'], 'add')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received usb_blue^7') 
            end
            --gold bar
            local itemAmount = math.random(3, 5)
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'green', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print(Player.PlayerData.name..' (citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received: '..itemAmount.. 'x goldbar^7') 
            end
        end
    elseif type == 'paleto' then
        -- Tier 1: 50% = 10 GOLD BARS
        -- Tier 2: 30% = 10-14 GOLD BARS
        -- Tier 3: 15% = 1 red usb
        -- Tier 4: 5% = 1 red usb + 4-7 GOLD BARS
        local tierChance = math.random(100)
        local tier = 1
        if tierChance <= 50 then tier = 1 elseif tierChance > 50 and tierChance <= 80 then tier = 2 elseif tierChance > 80 and tierChance <= 95 then tier = 3 else tier = 4 end
        if tier == 1 then
            local itemAmount = 10
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'blue', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
             end
        elseif tier == 2 then
            local itemAmount = math.random(10, 14)
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'blue', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        elseif tier == 3 then
            --red usb
            Player.Functions.AddItem('usb_red', 1)
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'blue', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **usb_red**')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['usb_red'], 'add')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received usb_red^7') 
            end
        elseif tier == 4 then
            --red usb
            Player.Functions.AddItem('usb_red', 1)
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'blue', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **usb_red**')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['usb_red'], 'add')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received usb_red^7') 
            end
            --gold bar
            local itemAmount = math.random(4, 7)
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'blue', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        end
    elseif type == 'pacific' then
        -- Tier 1: 50% = 10 GOLD BARS
        -- Tier 2: 30% = 10-14 GOLD BARS
        -- Tier 3: 15% = 1 gold usb
        -- Tier 4: 5% = 1 gold usb + 6-8 GOLD BARS
        local tierChance = math.random(100)
        local tier = 1
        if tierChance <= 50 then tier = 1 elseif tierChance > 50 and tierChance <= 80 then tier = 2 elseif tierChance > 80 and tierChance <= 95 then tier = 3 else tier = 4 end
        if tier == 1 then
            local itemAmount = 10
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'yellow', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        elseif tier == 2 then
            local itemAmount = math.random(10, 14)
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'yellow', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        elseif tier == 3 then
            --usb_gold
            Player.Functions.AddItem('usb_gold', 1)
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'yellow', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **usb_gold**')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['usb_gold'], 'add')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received usb_gold^7') 
            end
        elseif tier == 4 then
            --usb_gold
            Player.Functions.AddItem('usb_gold', 1)
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'yellow', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **usb_gold**')
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['usb_gold'], 'add')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received usb_gold^7') 
            end
            --gold bar
            local itemAmount = math.random(6, 8)
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'yellow', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        end
    elseif type == 'vault' then
        local tierChance = math.random(100)
        if tierChance <= 50 then
            local itemAmount = 10
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'black', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        else
            local itemAmount = 12
            Player.Functions.AddItem('goldbar', itemAmount)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
            TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: '..type, 'black', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
            if debug then
                print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received '..itemAmount.. 'x goldbar^7') 
            end
        end
    end
end)

RegisterNetEvent('qb-bankrobbery:server:SetThermiteHit', function(bank, index)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Config.Banks[bank].thermite[index].hit = true
    TriggerClientEvent('qb-bankrobbery:client:SetThermiteHit', -1, bank, index)
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(id: '..src..') '..Config.Banks[bank].label..' Hit thermite: '..index..'^7') 
    end
    TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Hit Thermite "..Config.Banks[bank].label, "white", "**".. Player.PlayerData.name .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) Hit Thermite: "..index)
end)

RegisterNetEvent('qb-bankrobbery:server:ThermitePtfx', function(coords)
    TriggerClientEvent('qb-bankrobbery:client:ThermitePtfx', -1, coords)
end)

--[[RegisterNetEvent('qb-bankrobbery:server:SetGoldCard', function(state)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Config.Banks['Pacific'].card = state
    TriggerClientEvent('qb-bankrobbery:client:SetGoldCard', -1, state)
    if Config.DoorLock == 'qb' then
        TriggerEvent('qb-doorlock:server:updateState', Config.Banks['Pacific'].cardDoor, false, false, false, true, false, false, src)
    elseif Config.DoorLock == 'nui' then
        TriggerEvent('nui_doorlock:server:updateState', Config.Banks['Pacific'].cardDoor, false, false, false, true, false, src)
    elseif Config.DoorLock == 'np' then
        TriggerEvent('doors:change-lock-state', Config.Banks['Pacific'].cardDoor)
    end
    end
    end
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(id: '..src..') Used Gold Card^7') 
    end
    TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Use Gold Card", "white", "**".. Player.PlayerData.name .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) Used Gold Card")
end)]]--

RegisterNetEvent('qb-bankrobbery:server:SetGoldCard', function(state)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Config.Banks['Pacific'].card = state
    TriggerClientEvent('qb-bankrobbery:client:SetGoldCard', -1, state)
    if Config.DoorLock == 'qb' then
        TriggerEvent('qb-doorlock:server:updateState', Config.Banks['Pacific'].cardDoor, false, false, false, true, false, false, src)
    elseif Config.DoorLock == 'np' then
        TriggerEvent('doors:change-lock-state', Config.Banks['Pacific'].cardDoor)
        --TriggerEvent('nui_doorlock:server:updateState', Config.Banks['Pacific'].cardDoor, false, false, false, true, false, src)
    end
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..'(id: '..src..') Used Gold Card^7') 
    end
    TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Use Gold Card", "white", "**".. Player.PlayerData.name .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) Used Gold Card")
end)

QBCore.Functions.CreateCallback('qb-bankrobbery:server:GetConfig', function(source, cb)
    cb(Config)
end)

QBCore.Functions.CreateCallback('qb-bankrobbery:server:RobberyBusy', function(source, cb, bank)
    if disable then
        cb(true)
    else
        cb(robberyBusy[bank])
    end
end)

QBCore.Functions.CreateUseableItem("laptop_green", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        TriggerClientEvent('qb-bankrobbery:client:UseGreenLaptop', source)
    end
end)

QBCore.Functions.CreateUseableItem("laptop_blue", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        local pos = GetEntityCoords(GetPlayerPed(source))
        if #(pos - vector3(-109.58, 6483.52, 31.47)) < 1.8 then
            TriggerClientEvent("qb-bankrobbery:client:UseBlueLaptop", source)
        end
    end
end)

QBCore.Functions.CreateUseableItem("security_card_01", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        local pos = GetEntityCoords(GetPlayerPed(source))
        if #(pos - vector3(-105.54, 6472.0, 31.63)) < 1.8 then
            TriggerClientEvent("qb-bankrobbery:client:UseGreenCard", source)
        end
    end
end)

QBCore.Functions.CreateUseableItem("security_card_02", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        local pos = GetEntityCoords(GetPlayerPed(source))
        if #(pos - vector3(261.96, 223.12, 106.28)) < 1.8 then
            TriggerClientEvent("qb-bankrobbery:client:UseGoldCard", source)
        end
    end
end)

QBCore.Functions.CreateUseableItem("laptop_red", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        local pos = GetEntityCoords(GetPlayerPed(source))
        if #(pos - vector3(253.18, 228.39, 101.68)) < 1.8 then
            TriggerClientEvent("qb-bankrobbery:client:UseRedLaptop", source)
        end
    end
end)

QBCore.Functions.CreateUseableItem("laptop_gold", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        local pos = GetEntityCoords(GetPlayerPed(source))
        if #(pos - vector3(257.43, 227.81, 101.68)) < 1.8 then
            TriggerClientEvent("qb-bankrobbery:client:UseGoldLaptop", source)
        end
    end
end)

QBCore.Functions.CreateUseableItem("usb_grey", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item.name) then
        local pos = GetEntityCoords(GetPlayerPed(source))
        if #(pos - vector3(251.91, 235.92, 101.68)) < 1.8 then
            TriggerClientEvent("qb-bankrobbery:client:UseGreyUsb", source)
        end
    end
end)

CreateThread(function() -- Doorlock check
    if Config.DoorLock == 'qb' or Config.DoorLock == 'nui' or Config.DoorLock == 'np' then return end
    print('^3[qb-bankrobbery] ^5Check your Config.Doorlock setting!^7') 
end)

-- Debug and disable
RegisterCommand('bankrobbery_disable', function(source)
    disable = not disable
    if debug then
        print('^3[qb-bankrobbery] ^5Bankheists disabled: '..tostring(disable)..'^7')
    end
end, true)

RegisterCommand('bankrobbery_debug', function(source)
    debug = not debug
    print('^3[qb-bankrobbery] ^5Debug mode: '..tostring(debug)..'^7')
end, true)