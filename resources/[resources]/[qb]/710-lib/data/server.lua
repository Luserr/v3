if Config.Framework == 'qbcore' then
    QBCore = exports[Config.QB_prefix..'core']:GetCoreObject()
end 

Framework = {}

function Framework.PlayerDataS(source)
    local source = tonumber(source) 
    if Config.Framework == 'qbcore' then
        local data = QBCore.Functions.GetPlayer(source)
        local pJob = data.PlayerData.job
        pJob.Grade = {}
        pJob.Grade.name = pJob.grade.name
        pJob.Grade.label = pJob.grade.name
        pJob.Grade.level = pJob.grade.level
        local Pdata = {
            Pid = data.PlayerData.citizenid,
            Name = data.PlayerData.charinfo.firstname..' '..data.PlayerData.charinfo.lastname,
            Identifier = data.PlayerData.identifier,
            Bank = data.Functions.GetMoney('bank'),
            Cash = data.Functions.GetMoney('cash'),
            Source = data.PlayerData.cid,
            RemoveItem = data.Functions.RemoveItem,
            AddItem = data.Functions.AddItem,  
            AddMoney = data.Functions.AddMoney, 
            RemoveMoney = data.Functions.RemoveMoney,
            AddBankMoney = function(amount) data.Functions.AddMoney('bank', amount) end,
            RemoveBankMoney = function(amount) data.Functions.RemoveMoney('bank', amount) end,
            AddCash = function(amount) data.Functions.AddMoney('cash', amount) end,
            RemoveCash = function(amount) data.Functions.RemoveMoney('cash', amount) end,
            AddDirtyMoney = function(amount) data.Functions.AddItem('markedbills', amount) end,
            RemoveDirtyMoney = function(amount) data.Functions.RemoveItem('markedbills', amount) end,
            Job = pJob,
            SetJob = data.Functions.SetJob,
            HasItem = function(item) return QBCore.Functions.HasItem(source, item) end,
            Notify = function(message, type, time) Framework.NotiS(source, message, type, time) end,
            Gang = data.PlayerData.gang,
            SetGang = data.Functions.SetGang, 
            QBDuty = data.PlayerData.job.onduty,
            SetDuty = data.Functions.SetJobDuty,
        }
        if Config.Using710Crypto then 
            Pdata.AddCrypto = function(crypto, amount) return exports['710-crypto']:addCrypto(data.PlayerData.citizenid, crypto, amount) end
            Pdata.RemoveCrypto = function(crypto, amount) return exports['710-crypto']:removeCrypto(data.PlayerData.citizenid, crypto, amount) end
            Pdata.CryptoBalance = function(crypto) return exports['710-crypto']:getCryptoBalance(data.PlayerData.citizenid, crypto) end
        end
        if Config.Using710Management then 
            Pdata.AddCompanyMoney = function(amount) return exports['710-Management']:AddAccountMoney(data.PlayerData.job.name, amount) end
            Pdata.RemoveCompanyMoney = function(amount) return exports['710-Management']:RemoveAccountMoney(data.PlayerData.job.name, amount) end
            Pdata.CompanyBalance = function() return exports['710-Management']:GetManagementAccount(data.PlayerData.job.name).balance end
            Pdata.Duty = function() return exports['710-Management']:CheckIfPlayerOnDuty(source) end
        end  
        return Pdata
    elseif Config.Framework == 'esx' then
        local data = ESX.GetPlayerFromId(source)
        local pJob = data.job
        pJob.Grade = {}
        pJob.Grade.name = data.job.grade_name
        pJob.Grade.label = data.job.grade_label
        pJob.Grade.level = data.job.grade
        
        local Pdata = {
            Pid = data.identifier,
            Name = data.name,
            Identifier = data.identifier,
            Bank = data.getAccount('bank').money,
            Cash = data.getMoney(),
            Dirty = data.getAccount('black_money').money, 
            Source = source,
            RemoveItem = data.removeInventoryItem,
            AddItem = data.addInventoryItem,
            AddCash = data.addMoney,
            RemoveCash = data.removeMoney,
            AddBankMoney = function(amount) data.addAccountMoney('bank', amount) end,
            RemoveBankMoney = function(amount) data.removeAccountMoney('bank', amount) end,
            AddDirtyMoney = function(amount) data.removeAccountMoney('black_money', amount) end,
            RemoveDirtyMoney = function(amount) data.removeAccountMoney('black_money', amount) end,
            Job = pJob,
            SetJob = data.setJob,
            Notify = function(message, type, time) Framework.NotiS(source, message, type, time) end,
            HasItem = data.hasItem,
        }
        if Config.Using710Crypto then 
            Pdata.AddCrypto = function(crypto, amount) return exports['710-crypto']:addCrypto(data.identifier, crypto, amount) end
            Pdata.RemoveCrypto = function(crypto, amount) return exports['710-crypto']:removeCrypto(data.identifier, crypto, amount) end
            Pdata.CryptoBalance = function(crypto) return exports['710-crypto']:getCryptoBalance(data.identifier, crypto) end
        end
        if Config.Using710Management then 
            Pdata.AddCompanyMoney = function(amount) return exports['710-Management']:AddAccountMoney(data.job.name, amount) end
            Pdata.RemoveCompanyMoney = function(amount) return exports['710-Management']:RemoveAccountMoney(data.job.name, amount) end
            Pdata.CompanyBalance = function() return exports['710-Management']:GetManagementAccount(data.job.name).balance end
            Pdata.Duty = function() return exports['710-Management']:CheckIfPlayerOnDuty(source) end
        end
        return Pdata
    end
end

function Framework.GetPlayerFromPidS(pid)
    if Config.Framework == 'esx' then
        local data = ESX.GetPlayerFromIdentifier(pid)
        if data ~= nil then
            local Pdata = {
                Pid = data.identifier,
                Name = data.name,
                Identifier = data.identifier,
                Bank = data.getAccount('bank').money,
                Cash = data.getMoney(),
                Dirty = data.getAccount('black_money').money, -- ESX only since QBCore uses Items. 
                Source = data.source,
                AddMoney = data.addAccountMoney,
                RemoveMoney = data.removeAccountMoney,
                Job = data.job,
                SetJob = data.setJob,
                            
            }
            return Pdata
        else 
            return false
        end 

    elseif Config.Framework == 'qbcore' then
        local data = QBCore.Functions.GetPlayerByCitizenId(pid)
        if data ~= nil then
            local Pdata = {
                Pid = pid,
                Name = data.PlayerData.charinfo.firstname..' '..data.PlayerData.charinfo.lastname,
                Identifier = data.PlayerData.identifier,
                Bank = data.Functions.GetMoney('bank'),
                Cash = data.Functions.GetMoney('cash'),
                Source = data.PlayerData.cid, 
                AddMoney = data.Functions.AddMoney, 
                RemoveMoney = data.Functions.RemoveMoney,
                Job = data.PlayerData.job,
                SetJob = data.Functions.SetJob,
                Gang = data.PlayerData.gang,
                SetGang = data.Functions.SetGang,   
                
            }
            return Pdata
        else 
            return false
        end 
    end
end



function Framework.NotiS(source, message, type, time) --- type = 'info', 'success', 'error'
    if type == nil then type = 'info' end
    if Config.CustomNotifications then
        Custom.NotiS(source, message, type, time)
    else 
        if Config.Framework == 'qbcore' then
            if type == 'info' then type = 'primary' end
            TriggerClientEvent('QBCore:Notify', source, message, type, time)
        elseif Config.Framework == 'esx' then
            local Player = ESX.GetPlayerFromId(source)
            Player.showNotification(message)
        end
    end
end
            
function Framework.AdminCheck(source)
    if Config.Framework == 'esx' then 
        local Player = ESX.GetPlayerFromId(source)
        local perms = Player.getGroup()
        if perms == 'admin' then
            return true
        else
            return false
        end
    elseif Config.Framework == 'qbcore' then 
       local perms = QBCore.Functions.GetPermission(source)
       if perms.god == true or perms.admin == true then
            return true
        else
            return false
        end
    end 
end

function Framework.RegisterServerCallback(name, callback)
    if Config.Framework == 'qbcore' then
        QBCore.Functions.CreateCallback(name, callback)
    elseif Config.Framework == 'esx' then
        ESX.RegisterServerCallback(name, callback)
    end
end

Framework.RegisterServerCallback('710-lib:GetPlayerName', function(source, cb)
    local Pdata = Framework.PlayerDataS(source)
    if Pdata then
        cb(Pdata.Name)
    else
        cb(false)
    end
end)

function Framework.RegisterStash(stashid, stashlabel, stashslots, stashweightlimit, stashowner)
    if Config.Framework == 'esx' then
        exports.ox_inventory:RegisterStash(stashid, stashlabel, stashslots, stashweightlimit, stashowner)
    elseif Config.Framework == 'qbcore' then 
        ---- Qbcore doesnt register stashes technically they are just opened and if dont exist they are created so will all be in open side
    end 
end

function Framework.AddItemToStash(stashid, item, amount)
    if Config.Inventory ~= 'ox-inventory' then

    end
end

function Framework.CreateUseableItem(item, cb)
    if Config.Framework == 'qbcore' then 
        QBCore.Functions.CreateUseableItem(item, cb) 
    elseif Config.Framework == 'esx' then
        ESX.RegisterUsableItem(item, cb)
    end 
end 

function Framework.GetJobLabel(job)
    if tonumber(job) ~= nil then return false end 
	if Config.Framework == 'qbcore' then 
        if QBCore.Shared.Jobs[job].label ~= nil then
            return QBCore.Shared.Jobs[job].label
        else
            return false
        end
	elseif Config.Framework == 'esx' then
        if ESX.GetJobs()[job].label ~= nil then
            return ESX.GetJobs()[job].label
        else
            return false
        end
	end
end

function Framework.GetOnlinePlayers()
    if Config.Framework == 'qbcore' then 
        return QBCore.Functions.GetPlayers()
    elseif Config.Framework == 'esx' then
        return ESX.GetPlayers()
    end 
end

Framework.RegisterServerCallback('710-lib:GetJobLabel', function(source, cb, job)
    local jobLabel = Framework.GetJobLabel(job)
    if jobLabel then
        cb(jobLabel)
    else
        cb(false)
    end
end)

function Framework.Config()
    return ShConfig
end

exports('GetFrameworkObject', function()
    return Framework
end)


AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then 
        CreateThread(function()
            Wait(10055)
            updatePath = "/Kmack710/710-lib" -- your git user/repo path
            resourceName = GetCurrentResourceName() -- the resource name
            function checkVersion(err,responseText, headers)
                local curVersion = tonumber(1.3) -- make sure the "version" file actually exists in your resource root!
                local rresponseText = tonumber(responseText)
                if curVersion ~= rresponseText and curVersion < rresponseText then
                    print("^1################# RESOURCE OUT OF DATE ###############################")
                    print("^1"..resourceName.." is outdated, New Version: "..responseText.."Your Version: "..curVersion.." please update from https://github.com/Kmack710/710-lib")
                    print("############### Please Download the newest version ######################")
                elseif curVersion > rresponseText then
                    print("^2"..resourceName.." is up to date, have fun!")
                else
                    print("^2"..resourceName.." is up to date, have fun!")
                end
            end
            
            PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/master/version", checkVersion, "GET")
        end)
    end
end)