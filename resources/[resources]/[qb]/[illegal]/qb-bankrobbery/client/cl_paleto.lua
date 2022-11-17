local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-bankrobbery:client:UseBlueLaptop', function()
    if closestBank == 'Paleto' then
            if exports['qb-inventory']:HasItem("laptop_blue") then
                if not Config.Banks[closestBank].outsideHack then
                    QBCore.Functions.TriggerCallback('qb-bankrobbery:server:RobberyBusy', function(isBusy)
                        if not isBusy then
                            QBCore.Functions.TriggerCallback('qb-powerplant:server:getCops', function(cops)
                                if cops >= Config.MinCops.Paleto then
                                    QBCore.Functions.Progressbar("hack_gate", "Connecting the laptop..", math.random(5000, 10000), false, true, {
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {
                                        animDict = "anim@gangops@facility@servers@",
                                        anim = "hotwire",
                                        flags = 16,
                                    }, {}, {}, function() -- Done
                                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                                        -- Remove Use
                                        TriggerServerEvent('qb-bankrobbery:server:LaptopDamage', 'laptop_blue')
                                        CallCops()
                                        LaptopAnimation('Paleto')
                                    end, function() -- Cancel
                                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                                        QBCore.Functions.Notify("Canceled..", "error")
                                    end)
                                else
                                    QBCore.Functions.Notify('Not enough cops.. ('..Config.MinCops.Paleto..') required', 'error', 2500)
                                end
                            end)
                        else
                            QBCore.Functions.Notify("The security lock is active, opening the door is currently not possible..", "error", 5500)
                        end
                    end, 'paleto')
                else
                    QBCore.Functions.Notify('Somebody already hacked the security of this bank..', 'normal', 2500)
                end
            else
                QBCore.Functions.Notify('You are missing some item(s)..', 'error', 2500)
            end
    end
end)

RegisterNetEvent('qb-bankrobbery:client:UseGreenCard', function()
    if Config.Banks['Paleto'].outsideHack then
        if not Config.Banks['Paleto'].hacked then
                if exports['qb-inventory']:HasItem("security_card_01") then
                    CallCops()
                    QBCore.Functions.Progressbar("security_pass", "Swiping security card..", math.random(5000, 10000), false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "anim@gangops@facility@servers@",
                        anim = "hotwire",
                        flags = 16,
                    }, {}, {}, function() -- Done
                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                        -- Trollys
                        CreateTrollys('Paleto')
                        -- Set Hacked
                        TriggerServerEvent('qb-bankrobbery:server:SetBankHacked', 'Paleto', true)
                        -- Remove Card
                        TriggerServerEvent("qb-smallresources:server:RemoveItem", "security_card_01", 1)
                        --QBCore.Functions.RemoveItem('security_card_01')
                        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["security_card_01"], "remove")
                    end, function() -- Cancel
                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                        QBCore.Functions.Notify("Canceled..", "error")
                    end)
                else
                    QBCore.Functions.Notify('You are missing some item(s)..', 'error', 2500)
                end
        end
    else
        QBCore.Functions.Notify("Doing this will trigger the lockdown system...", "error", 4500)
            Wait(5000)
        QBCore.Functions.Notify("Maybe you should disable it first?", "error", 4500)
    end
end)