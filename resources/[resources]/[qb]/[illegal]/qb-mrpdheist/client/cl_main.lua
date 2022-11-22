local QBCore = exports['qb-core']:GetCoreObject()

local CurrentCops = 0

local firsthack = false

local attempts = 0

local secondhack = false

local cooldown = Shared.CoolDown*60000

local cooldowntimer = false

local already = false

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then 
        TriggerServerEvent('romoy:mrpd:server:Ready')
    else
        return
    end
end)

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)


RegisterNetEvent('romoy:mrpd:client:StartHeist', function()
    local hasItem = QBCore.Functions.HasItem(Shared.HackingItem)
    print(CurrentCops)
    if hasItem and not firsthack and attempts < Shared.AllowedAttempts and CurrentCops >= Shared.RequiredPolice and not cooldowntimer then
        if CurrentCops >= Shared.RequiredPolice then
            TriggerEvent('romoy:mrpd:client:StartHack')
        else
            QBCore.Functions.Notify('Not enough cops', 'error')
        end
    end
    if cooldowntimer then
        QBCore.Functions.Notify('On Cooldown', 'error')
    end
    if attempts >= Shared.AllowedAttempts then
        cooldowntimer = true
        QBCore.Functions.Notify('Too many attempts try again later', 'error')
        Wait(cooldown)
        attempts = 0
        cooldowntimer = false
    end
    if CurrentCops < Shared.RequiredPolice then
        QBCore.Functions.Notify('Not Enough Police', 'error')
    end
    if not hasItem then
        QBCore.Functions.Notify('You are missing something', 'error')
    end
end)

RegisterNetEvent('romoy:mrpd:client:StartHack', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local cid = PlayerData.citizenid
    local name = PlayerData.name
    exports['hacking']:OpenHackingGame(20, 5, 5, function(Success)
        --print(Success)
        if Success then
            QBCore.Functions.Notify('Door will be unlocked in 30 seconds, a explosion will occur', 'success')
            exports['qb-dispatch']:MRPDHeist()
            TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'MRPD Heist Started', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Started The MRPD Heist', true))
            Wait(30000)
            AddExplosion(435.81649, -976.7026, 30.719774, 5, 20.0, true, false, true)
            exports['qb-dispatch']:MRPDHeist()
            TriggerServerEvent('qb-doorlock:server:updateState', 'mrpd-sidedoor', false, false, false, true, false, false)
            TriggerServerEvent('romoy:mrpd:server:DataBaseLog', cid, name, 1, 'success')
            firsthack = true
            createTarget()
        else
            QBCore.Functions.Notify('You failed', 'error')
            attempts = attempts + 1
            print(attempts)
            exports['qb-dispatch']:MRPDHeist()
            TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'MRPD Heist Failed', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Failed the first step of the MRPD Heist', true))
            TriggerServerEvent('romoy:mrpd:server:DataBaseLog', cid, name, 1, 'failed')
        end
    end)
end)

RegisterNetEvent('romoy:mrpd:client:SecondHack', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local cid = PlayerData.citizenid
    local name = PlayerData.name
    local hasItem = QBCore.Functions.HasItem('thermite')
    if firsthack and hasItem then
        exports['hacking']:OpenHackingGame(20, 7, 7, function(Success)
        -- print(Success)
            if Success then
                QBCore.Functions.Notify('Second Door will be unlocked in 30 seconds', 'success')
                exports['qb-dispatch']:MRPDHeist()
                Wait(30000)
                exports['qb-dispatch']:MRPDHeist()
                AddExplosion(475.56683, -989.7491, 26.273435, 9, 20.0, true, false, true)
                TriggerServerEvent('qb-doorlock:server:updateState', 'mrpd-evidence', false, false, false, true, false, false)
                TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'MRPD Heist 2nd Step Started', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Passed The MRPD Heist Second Step', true))
                TriggerServerEvent('romoy:mrpd:server:DataBaseLog', cid, name, 2, 'success')
                exports['qb-target']:RemoveZone('mrpdheist2')
                QBCore.Functions.Notify('You have 1 Minute to find the evidence and steal it', 'success')
                Wait(60000)
                --TriggerServerEvent('qb-doorlock:server:updateState', 'mrpd-evidence', true, false, false, true, false, false)
                exports['qb-dispatch']:MRPDHeist()
                TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'MRPD Heist Completed', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Passed The MRPD Heist and Stole The Evidence', true))
                TriggerEvent('romoy:mrpd:client:ResetHack')
            else
                QBCore.Functions.Notify('You failed', 'error')
                exports['qb-dispatch']:MRPDHeist()
                TriggerServerEvent('romoy:mrpd:server:DataBaseLog', cid, name, 2, 'failed')
                TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'MRPD Heist 2nd Step Failed', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Failed The MRPD Heist Second Step', true))
            end
        end)
    else
        QBCore.Functions.Notify('How Did You Even Get Here?!', 'error')
    end
    if not hasItem then
        QBCore.Functions.Notify('You are missing something', 'error')
    end
end)

RegisterNetEvent('romoy:mrpd:client:ResetHack', function()
    TriggerServerEvent('qb-doorlock:server:updateState', 'mrpd-evidence', true, false, false, true, false, false)
    TriggerServerEvent('qb-doorlock:server:updateState', 'mrpd-sidedoor', true, false, false, true, false, false)
    firsthack = false
end)

exports['qb-target']:AddBoxZone('mrpdheist', vector3(435.81649, -976.7026, 30.719774), 1, 1, {
    name='mrpdheist',
    heading=57.45,
    debugPoly=false,
    minZ = 29.04,
    maxZ = 31.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'romoy:mrpd:client:StartHeist',
                icon = 'fas fa-wifi',
                label = 'Disable System',
            },
        },
    distance = 1.5
})

function createTarget()
    exports['qb-target']:AddBoxZone('mrpdheist2', vector3(475.56683, -989.7491, 26.273435), 1, 1, {
        name='mrpdheist2',
        heading=57.45,
        debugPoly=false,
        minZ = 24.04,
        maxZ = 28.64,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'romoy:mrpd:client:SecondHack',
                    icon = 'fas fa-explosive',
                    label = 'Open Evidence Door',
                },
            },
        distance = 1.5
    })
end