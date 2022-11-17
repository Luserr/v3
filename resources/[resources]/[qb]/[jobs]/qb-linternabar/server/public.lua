local QBCore = exports[Config.Events.QBCoreExport]:GetCoreObject()
local LANG = Locale.Languages[Config.Language]




RegisterServerEvent("qua-lalinterna:server:PublicPhoneBill",function(source, billed,biller,amount)
    -- If you custom phone change this. 
    local source = source
    exports.oxmysql:insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
        ['citizenid'] = billed.PlayerData.citizenid,
        ['amount'] = amount,
        ['society'] = biller.PlayerData.job.name,
        ['sender'] = biller.PlayerData.charinfo.firstname
    })
    TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
    TriggerClientEvent(Config.Events.ServerNotifyEvent, source, ""..LANG["CUSTOMER_BILL_INVOICE_SCSS"].."", 'success')
    TriggerClientEvent(Config.Events.ServerNotifyEvent, billed.PlayerData.source,""..LANG["CUSTOMER_BILL_INVOICE_SCSS_TAKE"].."")
end)