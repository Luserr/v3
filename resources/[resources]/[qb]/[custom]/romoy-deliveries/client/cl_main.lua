local QBCore = exports['qb-core']:GetCoreObject()

--[[RegisterNetEvent('venture-deliveries:client:Start', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == Shared.Job then
        if PlayerData.job.onduty then
    QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetAccount', function(balance) 
        if balance >= Shared.Price then
            exports['Renewed-Banking']:removeAccountMoney(Shared.Job, Shared.Price)
            QBCore.Functions.Notify('Pickup the pallet at the location marked', 'success')
            rZones('create', 1)
            rZones('create', 2)
        else
            QBCore.Functions.Notify('Business Account does not have enough money', 'error')
        end
    end)
end)]]--

--[[RegisterNetEvent('venture-deliveries:client:Start', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == Shared.Job then
        if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetAccount', function(balance) 
                if balance >= Shared.Price then
                    exports['Renewed-Banking']:removeAccountMoney(Shared.Job, Shared.Price)
                    QBCore.Functions.Notify('Pickup the pallet at the location marked', 'success')
                    rZones('create', 1)
                    rZones('create', 2)
                else
                    QBCore.Functions.Notify('Business Account does not have enough money', 'error')
                end
            end)
        end 
    end
end)]]--

RegisterNetEvent('venture-deliveries:client:Start', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        local job = PlayerData.job.name
        if PlayerData.job.name == Shared.Job then
            if PlayerData.job.onduty then
                QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetAccount', function(balance) 
                    print(balance)
                    if balance >= 0 then
                        TriggerServerEvent('qb-bossmenu:server:removeAccountMoney', Shared.Job, Shared.Price)
                        QBCore.Functions.Notify('Pickup the pallet at the location marked', 'success')
                        SetNewWaypoint(854.50671, -3203.469)
                        rZones('create', 1)
                        rZones('create', 2)
                    else
                        QBCore.Functions.Notify('Business Account does not have enough money', 'error')
                        print(balance)
                    end
                end)
            end 
        end
    end)
end)

RegisterNetEvent('venture-deliveries:client:Pallet', function()
    TriggerServerEvent('venture-deliveries:server:Pallet')
    SetNewWaypoint(-1406.452, -446.1528)
    QBCore.Functions.Notify('Pallet of Parts Given', 'success')
    rZones('delete', 1)
    rZones('create', 2)
end)

RegisterNetEvent('venture-deliveries:client:PalletGive', function()
    local hasItem = QBCore.Functions.HasItem('burger-pallet')
    if hasItem then
        TriggerServerEvent('venture-deliveries:server:PalletGive')
        rZones('delete', 2)
        QBCore.Functions.Notify('Items unpacked', 'success')
    else
        QBCore.Functions.Notify('You are missing the item needed', 'error')
    end
end)

exports['qb-target']:AddBoxZone('hayesauto', vector3(-1418.482, -454.264, 35.909706), 1, 1, {
    name='hayesauto',
    heading=57.45,
    debugPoly=false,
    minZ = 34.04,
    maxZ = 36.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture-deliveries:client:Start',
                icon = 'fas fa-user',
                label = 'Pickup Parts',
                job = 'hayesauto'
            },
        },
    distance = 1.5
})

function rZones(type, value)
    if type == 'create' and value == 1 then
    exports['qb-target']:AddBoxZone('hayesautopickup', vector3(854.88024, -3203.422, 5.9949975), 1, 1, {
        name='hayesautopickup',
        heading=57.45,
        debugPoly=false,
        minZ = 4.04,
        maxZ = 7.64,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'venture-deliveries:client:Pallet',
                    icon = 'fas fa-delivery',
                    label = 'Pickup Package',
                    job = 'hayesauto'
                },
            },
        distance = 1.5
    })
else
    if type == 'create' and value == 2 then
        exports['qb-target']:AddBoxZone('hayesautounpack', vector3(-1406.452, -446.1528, 35.909656), 1, 1, {
            name='hayesautounpack',
            heading=57.45,
            debugPoly=false,
            minZ = 33.04,
            maxZ = 37.64,
            }, {
                options = {
                    {
                        type = 'client',
                        event = 'venture-deliveries:client:PalletGive',
                        icon = 'fas fa-user',
                        label = 'Unpack Box',
                    },
                },
            distance = 1.5
        })
    else
         if type == 'delete' and value == 1 then
            exports['qb-target']:RemoveZone('hayesautopickup')
         else
            if type == 'delete' and value == 2 then
                exports['qb-target']:RemoveZone('hayesautounpack')
            end
         end
    end
    end
end