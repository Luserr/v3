local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-bankrobbery:client:UseGoldCard', function()
    if not Config.Banks['Pacific'].card then
            if exports['qb-inventory']:HasItem("security_card_02") then
                QBCore.Functions.TriggerCallback('qb-powerplant:server:getCops', function(cops)
                    if cops >= Config.MinCops.Pacific then
                        QBCore.Functions.TriggerCallback('qb-bankrobbery:server:RobberyBusy', function(isBusy)
                            if not isBusy then
                                CallCops()
                                local ped = PlayerPedId()
                                SetEntityCoords(ped, 261.89, 223.5, 105.30, 1, 0, 0, 1)
                                SetEntityHeading(ped, 255.92)
                                RequestModel("p_ld_id_card_01")
                                while not HasModelLoaded("p_ld_id_card_01") do Wait(10) end
                                Wait(100)
                                -- Remove Card
                                TriggerServerEvent("qb-smallresources:server:RemoveItem", "security_card_02", 1)
                                --QBCore.Functions.RemoveItem('security_card_02')
                                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["security_card_02"], "remove")
                                local pedco = GetEntityCoords(ped)
                                local IdProp = CreateObject(`p_ld_id_card_01`, pedco, true, true, false)
                                local boneIndex = GetPedBoneIndex(ped, 28422)
                                local panel = GetClosestObjectOfType(pedco, 4.0, `hei_prop_hei_securitypanel`, false, false, false)
                                AttachEntityToEntity(IdProp, ped, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
                                TaskStartScenarioInPlace(ped, "PROP_HUMAN_ATM", 0, true)
                                Wait(1500)
                                AttachEntityToEntity(IdProp, panel, boneIndex, -0.09, -0.02, -0.08, 270.0, 0.0, 270.0, true, true, false, true, 1, true)
                                FreezeEntityPosition(IdProp)
                                Wait(500)
                                ClearPedTasksImmediately(ped)
                                PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
                                -- ENTERING CODE
                                local dict = "mp_heists@keypad@"
                                local anim = "idle_a"
                                local flag = 0
                                RequestAnimDict(dict)
                                while not HasAnimDictLoaded(dict) do
                                    RequestAnimDict(dict)
                                    Wait(10)
                                end
                                SetEntityCoords(ped, vector3(261.83117, 223.08444, 105.28419))
                                SetEntityHeading(ped, 255.92)
                                TaskPlayAnim(ped, dict, anim, 8.0, 8.0, -1, flag, 0, false, false, false)
                                Wait(2500)
                                TaskPlayAnim(ped, dict, "exit", 2.0, 2.0, -1, flag, 0, false, false, false)
                                Wait(1000)
                                TriggerServerEvent('qb-bankrobbery:server:SetGoldCard', true)
                            else
                                QBCore.Functions.Notify("The security lock is active, opening the door is currently not possible..", "error", 5500)
                            end
                        end, 'pacific')
                    else
                        QBCore.Functions.Notify('Not enough cops.. ('..Config.MinCops.Pacific..') required', 'error', 2500)
                    end
                end)
            else
                QBCore.Functions.Notify('You are missing some item(s)..', 'error', 2500)
            end
    end
end)

RegisterNetEvent('qb-bankrobbery:client:SetGoldCard', function(state)
    Config.Banks['Pacific'].card = state
end)

RegisterNetEvent('qb-bankrobbery:client:UseRedLaptop', function()
    if #(GetEntityCoords(PlayerPedId()) - vector3(253.18, 228.39, 101.68)) < 1.0 then
            if exports['qb-inventory']:HasItem("laptop_red") then
                if not Config.Banks['Pacific'].hacked then
                    CallCops()
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
                        TriggerServerEvent('qb-bankrobbery:server:LaptopDamage', 'laptop_red')
                        CallCops()
                        LaptopAnimation('Pacific')
                    end, function() -- Cancel
                        StopAnimTask(PlayerPedId(), "anim@gangops@facility@servers@", "hotwire", 1.0)
                        QBCore.Functions.Notify("Canceled..", "error")
                    end)
                else
                    QBCore.Functions.Notify('Somebody already hacked the security of this bank..', 'normal', 2500)
                end
            else
                QBCore.Functions.Notify('You are missing some item(s)..', 'error', 2500)
            end
    end
end)