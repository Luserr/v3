local QBCore = exports['qb-core']:GetCoreObject()
local LANG = Locale.Languages[Locale.Language]


QBCore.Commands.Add(Config.BillCommand, Config.BillCommandText, {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        if Player.PlayerData.job.name == Config.Jobname then
               TriggerClientEvent('qb-irishpub:client:BillingCashier', src)
        end
    end
end)