Custom = {} 
if Config.Framework == 'qbcore' then
    QBCore = exports[Config.QB_prefix..'core']:GetCoreObject()
end 

function Custom.NotiS(source, message, type, time) --- type = 'info', 'success', 'error'
    if time == nil then time = 3000 end
    --- if type == 'info' then type = 'primary' end --- example if your notis dont use options above 
    TriggerClientEvent('okokNotify:Alert', source, "", message, time, type)
end

---- For /job command to work with 710-PoliceJob or even without it works on both frameworks.
if Config.UseJobCommand then 
    RegisterCommand('710job',function(source, args, rawCommand)
        local Player = Framework.PlayerDataS(source)
        local Pid = Player.Pid
        if GetResourceState('710-PoliceJob') == 'started' then  
            if Player.Job.name == 'police' then 
                local PoliceInfo = exports['710-PoliceJob']:GetPlayerPoliceDept(Pid)
                Player.Notify('You are a '..PoliceInfo.rank..' in '..PoliceInfo.dept, 'success', 5000)
            else 
                Player.Notify('You are a '..Player.Job.Grade.label ..' in '..Player.Job.label, 'success', 5000)
            end 
        else
            Player.Notify('You are a '..Player.Job.Grade.label ..' in '..Player.Job.label, 'success', 5000)
        end
    end, false)
end
