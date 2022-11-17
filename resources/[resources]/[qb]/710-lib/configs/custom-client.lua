Custom = {} 

if Config.Framework == 'qbcore' then
    QBCore = exports[Config.QB_prefix..'core']:GetCoreObject()
end 

--- Custom DrawTextUI -- okok as an example of how to use it.
function Custom.DrawTextUI(action, text) 
    if action == 'open' then 
        exports['okokTextUI']:Open(text, 'color', 'left') --- okok used as an example for this by default. 
    else 
        exports['okokTextUI']:Close()
    end
end 

--- For Custom notifications ---
function Custom.NotiC(message, type, time) --- type = 'info', 'success', 'error'
    if time == nil then time = 3000 end
    --- if type == 'info' then type = 'primary' end --- example if your notis dont use options above 
    exports['okokNotify']:Alert("", message, time, type)
end

