if Config.Framework == 'qbcore' then
    QBCore = exports[Config.QB_prefix..'core']:GetCoreObject()
end 

Framework = {}

function Framework.PlayerDataC()
    if Config.Framework == 'qbcore' then 
        local data = QBCore.Functions.GetPlayerData()
        local pJob = data.job
        pJob.Grade = {}
        pJob.Grade.name = pJob.grade.name
        pJob.Grade.label = pJob.grade.name
        pJob.Grade.level = pJob.grade.level
        local Pdata = {
            Pid = data.citizenid,
            Name = data.charinfo.firstname..' '..data.charinfo.lastname,
            Identifier = data.identifier,
            Bank = data.bank,
            Cash = data.money,
            Source = data.source,
            Job = pJob,
            Notify = function(message, type, time) Framework.NotiC(message, type, time) end,
            Gang = data.gang,            
        }
        return Pdata
    elseif Config.Framework == 'esx' then 
        local data = ESX.GetPlayerData() 
        local pAccount = data.accounts
        local pBank = {}
        local pCash = {}
        local pDirty = {}
        for k,v in pairs(pAccount) do
            if v.name == 'bank' then
                pBank = v.money
            elseif v.name == 'money' then
                pCash = v.money
            elseif v.name == 'black_money' then
                pDirty = v.money
            end
        end
        local pJob = data.job
        pJob.Grade = {}
        pJob.Grade.name = data.job.grade_name
        pJob.Grade.label = data.job.grade_label
        pJob.Grade.level = data.job.grade
        local Pdata = {
            Pid = data.identifier,
            Name = Framework.TriggerServerCallback('710-lib:GetPlayerName'),
            Identifier = data.identifier,
            Bank = pBank,
            Cash = pCash,
            Dirty = pDirty,
            Source = data.playerId,
            Job = pJob, 
            Notify = function(message, type, time) Framework.NotiC(message, type, time) end,           
        
        }
        return Pdata 
    end
end 

function Framework.GetClosestPlayer(coords)
    if Config.Framework == 'qbcore' then 
        return QBCore.Functions.GetClosestPlayer(coords)
    elseif Config.Framework == 'esx' then 
        return ESX.Game.GetClosestPlayer(coords)
    end
end  

function Framework.GetClosestVehicle(coords)
    if Config.Framework == 'qbcore' then
        return QBCore.Functions.GetClosestVehicle(coords)
    elseif Config.Framework == 'esx' then
        return ESX.Game.GetClosestVehicle(coords)
    end
end   

function Framework.TriggerServerCallback(name, ...)
    if Config.Framework == 'qbcore' then  --- Credit to Irdris for the Promise chunk of code built into this for Security resasons! 
        local p = nil
        local searchProfilePromise = function(...)  -- https://github.com/IdrisDose 
            if p then return end
            p = promise.new()
    
            QBCore.Functions.TriggerCallback(name, function(result)
                p:resolve(result)
            end, ...)
            return Citizen.Await(p)
        end
        local result = searchProfilePromise(...) --- Credit to Irdris for the Promise chunk of code built into this for Security resasons! 
        p = nil
        return result
    elseif Config.Framework == 'esx' then
        local p = nil
        local searchProfilePromise = function(...)  -- https://github.com/IdrisDose 
            if p then return end
            p = promise.new() --- Credit to Irdris for the Promise chunk of code built into this for Security resasons! 
            ESX.TriggerServerCallback(name, function(result)  -- https://github.com/IdrisDose 
                p:resolve(result)
            end, ...)
            return Citizen.Await(p)
        end
        local result = searchProfilePromise(...)  -- https://github.com/IdrisDose 
        p = nil
        return result
    end
end 

function Framework.OpenStash(stashlabel, stashslotsweight)
    if Config.Framework == 'qbcore' then
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stashlabel, {
            maxweight = stashslotsweight.maxweight,
            slots = stashslotsweight.slots,
        })
        TriggerEvent("inventory:client:SetCurrentStash", stashlabel)
    elseif Config.Framework == 'esx' then
        TriggerServerEvent('ox:loadStashes') 
        exports.ox_inventory:openInventory('stash', {id=stashlabel})
    end
end 

function Framework.SpawnVehicle(vehicle, coords, networked, cb)
    if Config.Framework == 'qbcore' then
        QBCore.Functions.SpawnVehicle(vehicle, cb, coords, networked)
    elseif Config.Framework == 'esx' then
        ESX.Game.SpawnVehicle(vehicle, coords.xyz, coords.w, cb, networked)
    end
end

function Framework.GetSourceFromEntity(entity)
    local ped = entity
    local playerIndex = NetworkGetPlayerIndexFromPed(ped)
    local playerServerId = GetPlayerServerId(playerIndex)
    if playerServerId ~= nil then
        return playerServerId
    else
        return nil
    end
end

function Framework.DrawText(action, text)
    if Config.CustomDrawText_CL == false then 
        if action == 'open' then
            if Config.Framework == 'qbcore' then
                exports['qb-core']:DrawText(text, 'left')
            elseif Config.Framework == 'esx' then
                exports['esx_textui']:TextUI(text)
            end
        else
            if Config.Framework == 'qbcore' then
                exports['qb-core']:HideText()
            elseif Config.Framework == 'esx' then
                Custom.DrawTextUI('close') 
                exports['esx_textui']:HideUI()
            end 
        end 
    else 
        if action == 'open' then
            Custom.DrawTextUI('open', text) 
        else
            Custom.DrawTextUI('close') 
        end
    end 
end

function Framework.NotiC(message, type, time)
    if Config.CustomNotifications then
        Custom.NotiC(message, type, time)
    else
        if time == nil then time = 3000 end
        if Config.Framework == 'qbcore' then
            if type == 'info' then type = 'primary' end
            QBCore.Functions.Notify(message, type, time)
        elseif Config.Framework == 'esx' then
            ESX.ShowNotification(message, time, type)
        end
    end 
end 

if Config.Framework == 'qbcore' then
    AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
        TriggerEvent('710-lib:PlayerLoaded')
    end)
elseif Config.Framework == 'esx' then
    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function()
        TriggerEvent('710-lib:PlayerLoaded')
    end) 
end

RegisterNetEvent('710-lib:PlayerLoaded')
AddEventHandler('710-lib:PlayerLoaded', function()
    -- Do nothing this is just to trigger things within scripts with 
    -- AddEventHandler('710-lib:PlayerLoaded', function()
    --- Code you want to execute here when the player loads
    -- end)
end)

function Framework.GetJobLabel(job)
	local JobLabel = Framework.TriggerServerCallback('710-lib:GetJobLabel', job)
    if JobLabel then 
        return JobLabel
    else
        return false
    end
    
end 

function Framework.Config()
    return ShConfig
end 

exports('GetFrameworkObject', function()
    return Framework
end)

