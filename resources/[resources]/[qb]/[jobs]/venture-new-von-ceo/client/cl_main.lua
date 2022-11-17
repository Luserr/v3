local QBCore = exports['qb-core']:GetCoreObject()

local working = false

local deliverystarted = false

RegisterNetEvent('venture:vonceo:client:Frappuccino', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('venture:vonceo:get:FrappuccinoIngredients', function(HasItems)
                if HasItems then
                    working = true
                    LocalPlayer.state:set('inv_busy', true, true)
                    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                    QBCore.Functions.Progressbar('frappuccino', 'Making a Frappuccino', 3500, false, true, {
                        disableMovement = true,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = false,
                    }, {
                        animDict = 'mp_common',
                        anim = 'givetake1_a',
                        flags = 8,
                    }, {}, {}, function() 
                        working = false
                        LocalPlayer.state:set('inv_busy', false, true)
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['coffeebeans'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['water_bottle'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['frappuccino'], 'add')
                        TriggerServerEvent("qb-smallresources:server:AddItem", 'frappuccino', 1)
                    end, function() -- Play When Cancel
                        LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						working = false
                    end)
                else
                    QBCore.Functions.Notify('You do not have the correct ingredients', 'error')
                end
            end)
        else
            QBCore.Functions.Notify('You must be clocked in to work', 'error')
        end
    end)
end)


RegisterNetEvent('venture:vonceo:client:BreakfastSandwich', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('venture:vonceo:get:BreakfastSandwichIngredients', function(HasItems)
                if HasItems then
                    working = true
                    LocalPlayer.state:set('inv_busy', true, true)
                    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                    QBCore.Functions.Progressbar('breakfastsandwich', 'Making a Breakfast Sandwich', 3500, false, true, {
                        disableMovement = true,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = false,
                    }, {
                        animDict = 'mp_common',
                        anim = 'givetake1_a',
                        flags = 8,
                    }, {}, {}, function() 
                        working = false
                        LocalPlayer.state:set('inv_busy', false, true)
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['bread'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['eggs'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['cheese'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['breakfastsandwich'], 'add')
                        TriggerServerEvent("qb-smallresources:server:AddItem", 'breakfastsandwich', 1)
                    end, function() -- Play When Cancel
                        LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						working = false
                    end)
                else
                    QBCore.Functions.Notify('You do not have the correct ingredients', 'error')
                end
            end)
        else
            QBCore.Functions.Notify('You must be clocked in to work', 'error')
        end
    end)
end)

RegisterNetEvent('venture:vonceo:client:BlackCoffee', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            QBCore.Functions.TriggerCallback('venture:vonceo:get:BlackCoffeIngredients', function(HasItems)
                if HasItems then
                    working = true
                    LocalPlayer.state:set('inv_busy', true, true)
                    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                    QBCore.Functions.Progressbar('blackcoffee', 'Making a Black Coffee', 3500, false, true, {
                        disableMovement = true,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = false,
                    }, {
                        animDict = 'mp_common',
                        anim = 'givetake1_a',
                        flags = 8,
                    }, {}, {}, function() 
                        working = false
                        LocalPlayer.state:set('inv_busy', false, true)
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['water_bottle'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['blackcoffeebeans'], 'remove')
                        TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['blackcoffee'], 'add')
                        TriggerServerEvent("qb-smallresources:server:AddItem", 'blackcoffee', 1) 
                    end, function() -- Play When Cancel
                        LocalPlayer.state:set("inv_busy", false, true)
						QBCore.Functions.Notify('Cancelled..', 'error')
						working = false
                    end)
                else
                    QBCore.Functions.Notify('You do not have the correct ingredients', 'error')
                end
            end)
        else
            QBCore.Functions.Notify('You must be clocked in to work', 'error')
        end
    end)
end)

RegisterNetEvent('venture:vonceo:client:Delivery', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty and not deliverystarted then
            deliverystarted = true
            QBCore.Functions.Notify('Pickup the pallet at the location marked', 'success')
            SetNewWaypoint(849.11358, -3203.422)
            vonCeoZones("create", 1)
        else
            QBCore.Functions.Notify('You are not on duty', 'error')
        end
    end)
end)

RegisterNetEvent('venture:vonceo:client:Pallet', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty and deliverystarted then
            QBCore.Functions.Notify('Bring the Pallet to the location marked', 'success')
            RPC.execute('venture:ceo:vonPalletGive')
            SetNewWaypoint(150.08723, -1468.9) --vector3(150.08723, -1468.9, 29.357023)
            vonCeoZones("delete", 1)
            vonCeoZones("create", 2)
        else
            QBCore.Functions.Notify('You are not on duty', 'error')
        end
    end)
end)

--[[RegisterNetEvent('venture:vonceo:client:UnpackPallet', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty and deliverystarted then
            LocalPlayer.state:set("inv_busy", true, true)
            QBCore.Functions.Progressbar('unpackvonpallet', 'Unpacking Starbucks Packet...', 3500, false, true, { 
                disableMovement = true,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
            }, {
                animDict = 'mp_common',
                anim = 'givetake1_a',
                flags = 8,
            }, {}, {}, function() -- Play When Done
                LocalPlayer.state:set("inv_busy", false, true)
                RPC.execute('venture:ceo:vonPalletUnpack', true)
                print('Pallet removed')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['coffeebeans'], 'add')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['water_bottle'], 'add')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['bread'], 'add')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['eggs'], 'add')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['cheese'], 'add')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['blackcoffeebeans'], 'add')
                TriggerServerEvent('QBCore:Server:AddItem', 'coffeebeans', 1) 
                TriggerServerEvent('QBCore:Server:AddItem', 'blackcoffeebeans', 1)
                TriggerServerEvent('QBCore:Server:AddItem', 'water_bottle', 1)
                TriggerServerEvent('QBCore:Server:AddItem', 'bread', 1)
                TriggerServerEvent('QBCore:Server:AddItem', 'eggs', 1)
                TriggerServerEvent('QBCore:Server:AddItem', 'cheese', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['burger-pallet'], 'remove')
                print('Pallet Unpacked')
                --TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['burger-moneyshot'], 'add')
                vonCeoZones("delete", 2)
                deliverystarted = false
            end, function() -- Play When Cancel
                LocalPlayer.state:set("inv_busy", false, true)
                QBCore.Functions.Notify('Cancelled....', 'error')
                print('Failed')
            end)
        end
    end)
end)]]--

RegisterNetEvent('venture:vonceo:client:Menu', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            exports['qb-menu']:openMenu({
                {
                    header = "• Starbucks Menu",
                    isMenuHeader = true,
                },
                {
                    header = "『Make BreakFast Sandwich』",
                    txt = "• Bread, Eggs, Cheese, Frying Pan",
                    params = {
                        event = "venture:vonceo:client:BreakfastSandwich",
                        args = {
                            number = 1,
                            id = 2
                        }
                    }
                },
                {
                    header = "『Make Black Coffee』",
                    txt = "• Black Coffee Beans, Water, Oats",
                    params = {
                        event = "venture:vonceo:client:BlackCoffee",
                        args = {
                            number = 2,
                            id = 3
                        }
                    }
                },
                {
                    header = "『Make A Frappuccino』",
                    txt = "• Coffee Beans, Water, Oats",
                    params = {
                        event = "venture:vonceo:client:Frappuccino",
                        args = {
                            number = 2,
                            id = 3
                        }
                    }
                },
            })
        else
            QBCore.Functions.Notify('You must be Clocked into work', 'error')
        end
    end)
end)

--Preparation Code

RegisterNetEvent('venture:vonceo:client:PrepareEggs', function()
    local hasItems = RPC.execute('venture:vonceo:server:PrepareEggs')
    print(hasItems)
    if hasItems then
        QBCore.Functions.GetPlayerData(function(PlayerData)
            PlayerJob = PlayerData.job
            if PlayerData.job.onduty then
                LocalPlayer.state:set('inv_busy', true, true)
                QBCore.Functions.Progressbar('prepareggs', 'Preparing Eggs', 3500, false, true, {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
                    --RPC.execute('venture:vonceo:server:PrepareEggs', 2)
                    TriggerServerEvent("qb-smallresources:server:RemoveItem", 'hardegg', 1)
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'eggs', 1)
                    QBCore.Functions.Notify('Prepared Eggs', 'success')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
                    QBCore.Functions.Notify('Cancelled....', 'error')
                end)
            end
        end)
    else
        if not hasItems then
            QBCore.Functions.Notify('You are missing ingredients', 'error')
        end
    end
end)


RegisterNetEvent('venture:vonceo:client:PrepareCoffeebeans', function()
    local hasItems = RPC.execute('venture:vonceo:server:PrepareCoffeebeans', 1)
    if hasItems then
        print('Has Items')
        QBCore.Functions.GetPlayerData(function(PlayerData)
            PlayerJob = PlayerData.job
            if PlayerData.job.onduty then
                LocalPlayer.state:set('inv_busy', true, true)
                QBCore.Functions.Progressbar('preparecoffeebeans', 'Preparing Coffee Beans', 3500, false, true, {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
                    --RPC.execute('venture:vonceo:server:PrepareCoffeebeans', 2)
                    TriggerServerEvent("qb-smallresources:server:RemoveItem", 'beans', 1)
                    TriggerServerEvent("qb-smallresources:server:RemoveItem", 'coffeedust', 1)
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'coffeebeans', 1)
                    QBCore.Functions.Notify('Prepared Coffee Beans', 'success')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
                    QBCore.Functions.Notify('Cancelled....', 'error')
                end)
            end
        end)
    else
        if not hasItems then
            QBCore.Functions.Notify('You are missing ingredients', 'error')
        end
    end
end)


RegisterNetEvent('venture:vonceo:client:Store', function()
    TriggerServerEvent('inventory:server:OpenInventory', "shop", "starbucksstore", Shared.Items)
end)

RegisterNetEvent('venture:vonceo:client:PrepareMilk', function()
    local hasItems = RPC.execute('venture:vonceo:server:PrepareMilk', 1)
    if hasItems then
        QBCore.Functions.GetPlayerData(function(PlayerData)
            PlayerJob = PlayerData.job
            if PlayerData.job.onduty then 
                LocalPlayer.state:set('inv_busy', true, true)
                QBCore.Functions.Progressbar('preparemilk', 'Preparing Milk', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
                    --RPC.execute('venture:vonceo:server:PrepareMilk', 2)
                    TriggerServerEvent("qb-smallresources:server:RemoveItem", 'oats', 1)
                    TriggerServerEvent("qb-smallresources:server:RemoveItem", 'water', 1)
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'milk', 1)
                    QBCore.Functions.Notify('Milk Prepared', 'success')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
                    QBCore.Functions.Notify('Cancelled...', 'error')
                end)
            end
        end)
    else
        if not hasItems then
            QBCore.Functions.Notify('You are missing ingredients', 'error')
        end
    end
end)

RegisterNetEvent('venture:vonceo:client:PrepMenu', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            exports['qb-menu']:openMenu({
                {
                    header = "• Starbucks Menu",
                    isMenuHeader = true,
                },
                {
                    header = "『Make Eggs』",
                    txt = "• Hard Egg and Frying Pan",
                    params = {
                        event = "venture:vonceo:client:PrepareEggs",
                        args = {
                            number = 1,
                            id = 2
                        }
                    }
                },
                {
                    header = "『Make Coffee Beans』",
                    txt = "• Beans and Coffee Dust",
                    params = {
                        event = "venture:vonceo:client:PrepareCoffeebeans",
                        args = {
                            number = 2,
                            id = 3
                        }
                    }
                },
                {
                    header = "『Make Milk』",
                    txt = "• Oats and Water",
                    params = {
                        event = "venture:vonceo:client:PrepareMilk",
                        args = {
                            number = 2,
                            id = 3
                        }
                    }
                },
            })
        else
            QBCore.Functions.Notify('You must be Clocked into work', 'error')
        end
    end)
end)

RegisterNetEvent('venture:vonceo:client:Bill', function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
        inputs = {
            {
                text = "City ID",
                name = "citizenid",
                type = "text",
                isRequired = true
            },
            {
                text = "Amount",
                name = "billprice",
                type = "number",
                isRequired = true
            },
            {
                text = "Bill Type",
                name = "billtype",
                type = "radio",
                options = {
                    { value = "cash", text = "Cash" },
                    { value = "bank", text = "Debit Card" }
                }
            }
        }
    })
    if bill == nil then 
        return
    end
    RPC.execute('venture:vonceo:server:Bill', bill)
end)

RegisterNetEvent('venture:vonceo:Tray1', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'starbuckstray1')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'starbuckstray10', {
        maxweight = 25000,
        slots = 8,
    })
end)

RegisterNetEvent('venture:vonceo:Tray2', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'starbuckstray2')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'starbuckstray2', {
        maxweight = 25000,
        slots = 8,
    })
end)

function vonCeoZones(type, value)
    if type == 'create' and value == 1 then
    exports['qb-target']:AddBoxZone('vonceopickup', vector3(849.11358, -3203.422, 5.9949989), 1, 1, {
        name='vonceopickup',
        heading=57.45,
        debugPoly=false,
        minZ = 4.04,
        maxZ = 7.64,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'venture:vonceo:client:Pallet',
                    icon = 'fas fa-delivery',
                    label = 'Pickup Package',
                    job = "starbucks"
                },
            },
        distance = 1.5
    })
else
    if type == 'create' and value == 2 then
        exports['qb-target']:AddBoxZone('vonceounpack', vector3(-635.3704, 233.64173, 81.881462), 1, 1, {
            name='vonceounpack',
            heading=57.45,
            debugPoly=false,
            minZ = 79.04,
            maxZ = 82.64,
            }, {
                options = {
                    {
                        type = 'client',
                        event = 'venture:vonceo:client:UnpackPallet',
                        icon = 'fas fa-user',
                        label = 'Unpack Box',
                        job = "starbucks"
                    },
                },
            distance = 1.5
        })
    else
         if type == 'delete' and value == 1 then
            exports['qb-target']:RemoveZone('vonceopickup')
         else
            if type == 'delete' and value == 2 then
                exports['qb-target']:RemoveZone('vonceounpack')
            end
         end
    end
    end
end