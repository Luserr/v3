--[[
___________                ___________                        
\__    ___/_ __  ____ _____\__    ___/________________  ______
  |    | |  |  \/    \\__  \ |    |_/ __ \_  __ \____ \/  ___/
  |    | |  |  /   |  \/ __ \|    |\  ___/|  | \/  |_> >___ \ 
  |____| |____/|___|  (____  /____| \___  >__|  |   __/____  >
                    \/     \/           \/      |__|       \/
-- TunasNewsJob V1 --If you enjoyed, go ahead and check out some of my other work ! 
https://github.com/Tuna-Terps
https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw ]]

Server = {}


function Server:Payment(amount, message1, message2)
    local _source = source
    local a = amount
    if CFG.ESX then 
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer ~= nil then
            xPlayer.addMoney(a)
            local cash = xPlayer.getMoney()
            TriggerClientEvent('banking:updateCash', _source, cash)
        
            --TriggerClientEvent('esx:showAdvancedNotification', source, 'Weazel News', 'Succesfully uploaded entry # '..num, 'Payment recieved, you were paid ~g~$'..reward..'~s~', 'CHAR_BANK_MAZE', 9)
            if message1 ~= nil then 
                TriggerClientEvent('TunasNewsJob:NotifyCL', _source, message1, message2, true)
            else
                return
            end

        else
            print('cant find the ESX player data . . .')
        end
    
    elseif CFG.QB then 
        --QBCORE
        QBCore = nil
        QBCore = exports['qb-core']:GetCoreObject()
        qb = QBCore.Functions.GetPlayer(_source)
        qb.Functions.AddMoney('cash', a)
        TriggerClientEvent('TunasNewsJob:NotifyCL', _source, message1, message2, true)
    else
        --STANDALONE
        TriggerClientEvent('TunasNewsJob:NotifyCL', _source, message1, message2, true)

    end
    return
end

function Server:RemoveFunds(amount)
    local _source = source
    local a = amount
    if CFG.ESX then 
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer ~= nil then
            xPlayer.removeMoney(a)
            if CFG.debug then print ('Rewarding '.. a) end
            local cash = xPlayer.getMoney()
            TriggerClientEvent('banking:updateCash', _source, cash) 
            --TriggerClientEvent('TunasNewsJob:NotifyCL', _source, message1, message2, true)           
          else
            print('cant find the ESX player data . . .')
          end
    
    elseif CFG.QB then 
        --QBCORE
        QBCore = nil
        QBCore = exports['qb-core']:GetCoreObject()
        qb = QBCore.Functions.GetPlayer(_source)
        --qb.Functions.RemoveMoney('cash', a)


        local cash = qb.PlayerData.money['cash']
        local bank = qb.PlayerData.money['bank']
        if (cash > a) then 
            if CFG.debug then print(' has enough cash') end
            qb.Functions.RemoveMoney('bank', a)
        elseif bank > a then 
            if CFG.debug then print(' has enough bank') end
            qb.Functions.RemoveMoney('bank', a)
        else
            qb.Functions.RemoveMoney('bank', a)
            if CFG.debug then print(' something else happens') end
        end

    else
        --STANDALONE

    end
    return
end

function Server:HasRequiredItem(i)
    local _source = source

    if CFG.ESX then

        local xPlayer = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            local item = xPlayer.getInventoryItem(i)["count"]
            if item >= 1 then return true else return false end
        else
            print('[HANDLER ERROR]: cannot find esx player data ...')
        end
    elseif CFG.QB then 
        local item = QBCore.Functions.HasItem(i)
        if item == true then return true else return false end
    else
        -- standalone
        print('standalone detected, please implement an item check . . .')
        return true
    end


end

RegisterNetEvent('TunasNewsJob:SendWebhookMsg')
AddEventHandler('TunasNewsJob:SendWebhookMsg', function(label, pos, level, duration)
    if CFG.WebhookDebug then
        str = '**Breaking News !**\n*[ '.. label .. ' ] pos: x '..pos['x'] ..' y '..pos['y'] .. ' z '..pos['z'] ..'\nlevel:  '..level..' duration: '..duration.. ' '
    else
        str = '**Breaking News !**\n__**[ '.. label .. ' ]**__ \n pos: x: '..pos['x'] ..' y: '..pos['y'] .. ' z: '..pos['z'] ..'\nlevel:  '..level..' duration: '..duration.. ' '
    end

    PerformHttpRequest(CFG.Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = 'Weazel News', content = str}), { ['Content-Type'] = 'application/json' })
    return source;
end)


-- Job Requirement
function Server:HasRequiredJob(source, reqJob)
    local source = source
    if CFG.ESX == true then 
        local xPlayer = ESX.GetPlayerFromId(source)
        local job = xPlayer.getJob().name
    elseif CFG.QB then 
        QBCore = nil
        local QBCore = exports['qb-core']:GetCoreObject()
        
        local Player = QBCore.Functions.GetPlayer(source)

        local job = Player.PlayerData.job.name

    else
        --STANDALONE
        print('else, recheck framework')
    end
    
    if job ~= reqJob then 
        return false
    elseif  job == reqJob then 
        return true
    else
        print('Handler:ERROR')
    end

    return
end
