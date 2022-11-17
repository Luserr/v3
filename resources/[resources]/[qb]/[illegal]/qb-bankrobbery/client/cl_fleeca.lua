local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-bankrobbery:client:UseGreenLaptop', function()
    if closestBank ~= nil then
        if Config.Banks[closestBank].type == 'fleeca' then
            local pos = GetEntityCoords(PlayerPedId())
            if #(pos - Config.Banks[closestBank].laptop.xyz) < 1.80 then
                    if exports['qb-inventory']:HasItem("laptop_green") then
                        if not Config.Banks[closestBank].hacked then
                            QBCore.Functions.TriggerCallback('qb-bankrobbery:server:RobberyBusy', function(isBusy)
                                if not isBusy then
                                    QBCore.Functions.TriggerCallback('qb-powerplant:server:getCops', function(cops)
                                        if cops >= Config.MinCops.Fleeca then
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
                                                TriggerServerEvent('qb-bankrobbery:server:LaptopDamage', 'laptop_green')
                                                CallCops()
                                                LaptopAnimation(closestBank)
                                            end, function() -- Cancel
                                                StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                                                QBCore.Functions.Notify("Canceled..", "error")
                                            end)
                                        else
                                            QBCore.Functions.Notify('Not enough cops.. ('..Config.MinCops.Fleeca..') required', 'error', 2500)
                                        end
                                    end)
                                else
                                    QBCore.Functions.Notify("The security lock is active, opening the door is currently not possible..", "error", 5500)
                                end
                            end, 'fleeca')
                        else
                            QBCore.Functions.Notify('Somebody already hacked the security of this bank..', 'normal', 2500)
                        end
                    else
                        QBCore.Functions.Notify('You are missing some item(s)..', 'error', 2500)
                    end
            end
        end
    end
end)