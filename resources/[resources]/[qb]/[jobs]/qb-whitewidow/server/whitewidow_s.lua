----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local PhoneEvent = Config.CoreSettings.PhoneEvent
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- PREPARE EDIBLES START --<!>--
RegisterServerEvent('boii-whitewidow:server:PrepareEdibles', function(args)
    local source = source
    local pData = Core.Functions.GetPlayer(source)
    args = tonumber(args)
    weedcrop = ''
    cropremove = ''
    item1name = ''
    item1amount = ''
    item2name = ''
    item2amount = ''
    item3name = ''
    item3amount = ''
    clientarg = ''
    if args == 1 then
        weedcrop = Config.JobSettings.Harvest.Strain1.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain1.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain1.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain1.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain1.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain1.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain1.RequiredItems['3'].amount
        clientarg = 1
    elseif args == 2 then
        weedcrop = Config.JobSettings.Harvest.Strain2.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain2.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain2.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain2.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain2.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain2.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain2.RequiredItems['3'].amount
        clientarg = 2
    elseif args == 3 then
        weedcrop = Config.JobSettings.Harvest.Strain3.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain3.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain3.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain3.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain3.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain3.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain3.RequiredItems['3'].amount
        clientarg = 3
    elseif args == 4 then
        weedcrop = Config.JobSettings.Harvest.Strain4.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain4.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain4.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain4.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain4.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain4.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain4.RequiredItems['3'].amount
        clientarg = 4
    elseif args == 5 then
        weedcrop = Config.JobSettings.Harvest.Strain5.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain5.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain5.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain5.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain5.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain5.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain5.RequiredItems['3'].amount
        clientarg = 5
    elseif args == 6 then
        weedcrop = Config.JobSettings.Harvest.Strain6.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain6.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain6.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain6.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain6.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain6.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain6.RequiredItems['3'].amount
        clientarg = 6
    elseif args == 7 then
        weedcrop = Config.JobSettings.Harvest.Strain7.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain7.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain7.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain7.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain7.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain7.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain7.RequiredItems['3'].amount
        clientarg = 7
    elseif args == 8 then
        weedcrop = Config.JobSettings.Harvest.Strain8.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain8.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain8.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain8.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain8.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain8.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain8.RequiredItems['3'].amount
        clientarg = 8
    end
    if pData.Functions.GetItemByName(weedcrop) ~= nil then
        if pData.Functions.GetItemByName(weedcrop).amount >= cropremove then
            if pData.Functions.GetItemByName(item1name) ~= nil then
                if pData.Functions.GetItemByName(item2name) ~= nil then
                    if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                        if pData.Functions.GetItemByName(item3name) ~= nil then
                            if pData.Functions.GetItemByName(item3name).amount >= item3amount then
                                TriggerClientEvent('boii-whitewidow:client:PrepareEdibles', source, clientarg)
                            else
                                TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['enoughitem3'], 'error')
                            end
                        else
                            TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['noitem3'], 'error')
                        end
                    else
                        TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['enoughitem2'], 'error')
                    end
                else
                    TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['noitem2'], 'error')
                end
            else
                TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['noitem1'], 'error')
            end
        else
            TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['enoughweed'], 'error')
        end
    else
        TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Edibles['noweed'], 'error')
    end
end)
--<!>-- PREPARE EDIBLES END --<!>--

--<!>-- BILLING EVENT CODE START --<!>--
-- White widow billing
RegisterServerEvent('boii-whitewidow:server:WhiteWidowPay')
AddEventHandler('boii-whitewidow:server:WhiteWidowPay', function(playerId, amount)
    local payee = Core.Functions.GetPlayer(source)
    local payer = Core.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if payee.PlayerData.job.name == Config.JobSettings.JobName then
        if payer ~= nil then
            if payee.PlayerData.citizenid ~= payer.PlayerData.citizenid then
                if amount and amount > 0 then
                    exports.oxmysql:insert('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                        ['@citizenid'] = payer.PlayerData.citizenid,
                        ['@amount'] = amount,
                        ['@society'] = payee.PlayerData.job.name,
                        ['@sender'] = payee.PlayerData.charinfo.firstname,
                        ['@sendercitizenid'] = payee.PlayerData.citizenid
                    })
                    TriggerClientEvent(PhoneEvent, payer.PlayerData.source)
                    TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Billing['invoicesent'], 'success')
                    TriggerClientEvent('boii-whitewidow:notifications', payer.PlayerData.source, Language['invoicereceived'])
                else
                    TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Billing['minamount'], 'error')
                end
            else
                TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Billing['billself'], 'error')
            end
        else
            TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Billing['billoffline'], 'error')
        end
    else
        TriggerClientEvent('boii-whitewidow:notifications', source, Language.Locations.Billing['noaccess'], 'error')
    end
end)
--<!>-- BILLING EVENT CODE START --<!>--

--<!>-- JOINTS START --<!>--
-- Strain 1 joint
Joint1 = Config.JobSettings.JointRolling.Strain1.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint1, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 1)
end)
-- Strain 2 joint
Joint2 = Config.JobSettings.JointRolling.Strain2.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint2, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 2)
end)
-- Strain 3 joint
Joint3 = Config.JobSettings.JointRolling.Strain3.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint3, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 3)
end)
-- Strain 4 joint
Joint4 = Config.JobSettings.JointRolling.Strain4.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint4, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 4)
end)
-- Strain 5 joint
Joint5 = Config.JobSettings.JointRolling.Strain5.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint5, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 5)
end)
-- Strain 6 joint
Joint6 = Config.JobSettings.JointRolling.Strain6.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint6, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 6)
end)
-- Strain 7 joint
Joint7 = Config.JobSettings.JointRolling.Strain7.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint7, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 7)
end)
-- Strain 8 joint
Joint8 = Config.JobSettings.JointRolling.Strain8.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Joint8, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:SmokeJoint', source, 8)
end)
--<!>-- JOINTS END --<!>--

--<!>-- EDIBLES START --<!>--
-- Strain 1
Gummy1 = Config.JobSettings.Edibles.Strain1.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy1, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 1)
end)
-- Strain 2
Gummy2 = Config.JobSettings.Edibles.Strain2.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy2, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 2)
end)
-- Strain 3
Gummy3 = Config.JobSettings.Edibles.Strain3.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy3, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 3)
end)
-- Strain 4
Gummy4 = Config.JobSettings.Edibles.Strain4.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy4, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 4)
end)
-- Strain 5
Gummy5 = Config.JobSettings.Edibles.Strain5.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy5, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 5)
end)
-- Strain 6
Gummy6 = Config.JobSettings.Edibles.Strain6.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy6, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 6)
end)
-- Strain 7
Gummy7 = Config.JobSettings.Edibles.Strain7.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy7, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 7)
end)
-- Strain 8
Gummy8 = Config.JobSettings.Edibles.Strain8.ReturnItem['1'].name
Core.Functions.CreateUseableItem(Gummy8, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:EatEdibles', source, 8)
end)
--<!>-- JOINTS END --<!>--

--<!>-- WW MENU START --<!>--
MenuItem = Config.JobSettings.MenuItem
Core.Functions.CreateUseableItem(MenuItem, function(source, item)
    TriggerClientEvent('boii-whitewidow:client:DisplayMenu', source)
end)
--<!>-- WW MENU END --<!>--