local QBCore = exports['qb-core']:GetCoreObject()

local working = false

RegisterNetEvent('venture_aoki_ceo:client:MakeGreenTea', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            local hasItems = RPC.execute('venture_aoki_ceo:server:GreenTeaCheck')
            if hasItems and not working then
                working = true
                LocalPlayer.state:set('inv_busy', true, true)
                TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                QBCore.Functions.Progressbar('aoki_sushi', 'Making Green Tea', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['water_bottle'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['healingleaf'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['greentea'], 'add')
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'greentea', 1)
                    RPC.execute('venture_aoki_ceo:server:GreenTeaMake')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    QBCore.Functions.Notify('Cancelled...', 'error')
                end)
            end
        end
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:MakeSushi', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            local hasItems = RPC.execute('venture_aoki_ceo:server:SushiCheck')
            if hasItems and not working then
                working = true
                LocalPlayer.state:set('inv_busy', true, true)
                TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                QBCore.Functions.Progressbar('aoki_sushi', 'Making Sushi', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['rice'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['seaweed'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['fish'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['veggies'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['sushi'], 'add')
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'sushi', 1)
                    RPC.execute('venture_aoki_ceo:server:SushiMake')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    QBCore.Functions.Notify('Cancelled...', 'error')
                end)
            end
        end
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:MakeRamen', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            local hasItems = RPC.execute('venture_aoki_ceo:server:RamenCheck')
            if hasItems and not working then
                working = true
                LocalPlayer.state:set('inv_busy', true, true)
                TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                QBCore.Functions.Progressbar('aoki_sushi', 'Making Ramen', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['noodles'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['broth'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['eggs'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['veggies'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['ramen'], 'add')
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'ramen', 1)
                    RPC.execute('venture_aoki_ceo:server:RamenMake')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    QBCore.Functions.Notify('Cancelled...', 'error')
                end)
            end
        end
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:MakeSake', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            local hasItems = RPC.execute('venture_aoki_ceo:server:SakeCheck')
            if hasItems and not working then
                working = true
                LocalPlayer.state:set('inv_busy', true, true)
                TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                QBCore.Functions.Progressbar('aoki_sushi', 'Making Sake', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['rice'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['alcohol'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['water_bottle'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['sake'], 'add')
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'sake', 1)
                    RPC.execute('venture_aoki_ceo:server:SakeMake')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    QBCore.Functions.Notify('Cancelled...', 'error')
                end)
            end
        end
    end)
end)

local fishAnimation = function()
    -- Remove Fishing Bait
    RPC.execute('venture_aoki_ceo:server:RemoveBait')

    -- Throw Bait Animation
    local ped = PlayerPedId()
    RequestAnimDict('mini@tennis')
    while not HasAnimDictLoaded('mini@tennis') do Wait(0) end
    TaskPlayAnim(ped, 'mini@tennis', 'forehand_ts_md_far', 1.0, -1.0, 1.0, 48, 0, 0, 0, 0)
    while IsEntityPlayingAnim(ped, 'mini@tennis', 'forehand_ts_md_far', 3) do Wait(0) end

    -- Fish Animation
    RequestAnimDict('amb@world_human_stand_fishing@idle_a')
    while not HasAnimDictLoaded('amb@world_human_stand_fishing@idle_a') do Wait(0) end
    TaskPlayAnim(ped, 'amb@world_human_stand_fishing@idle_a', 'idle_c', 1.0, -1.0, 1.0, 10, 0, 0, 0, 0)
    Wait(math.random(Shared.CastTimeMin, Shared.CastTimeMax) * 1000)
    
    -- Minigame
    --[[local success = exports['qb-lock']:StartLockPickCircle(8, 10, success)
        if success then
            TriggerServerEvent('hud:server:RelieveStress', 2)
            TriggerServerEvent('venture_aoki_ceo:server:ReceiveFish')
        else
            QBCore.Functions.Notify('The fish got away!', 'error', 2500)
            TriggerServerEvent('hud:server:RelieveStress', 1)
        end
    end, math.random(Shared.MinigameCirclesMin, Shared.MinigameCirclesMax, Shared.MinigameTime)]]--
    local success = exports['qb-lock']:StartLockPickCircle(8, 10, success)
    if success then
        TriggerServerEvent('hud:server:RelieveStress', 2)
        TriggerServerEvent('venture_aoki_ceo:server:ReceiveFish')
    else
        QBCore.Functions.Notify('The fish got away!', 'error', 2500)
        TriggerServerEvent('hud:server:RelieveStress', 1)
    end

    -- Finishing up
    ClearPedTasks(ped)
    DeleteObject(fishingRod)
    isFishing = false
end

--- Method to create a fishing rod prop and return the object
--- @return fishingRod number - Entity number
local startFishing = function()
    -- Spam Prevent
    if isFishing then return end
    isFishing = true

    -- Load Fishing Rod Model
    local fishingRodHash = `prop_fishing_rod_01`
    if not IsModelValid(fishingRodHash) then return end
    if not HasModelLoaded(fishingRodHash) then RequestModel(fishingRodHash) end
    while not HasModelLoaded do Wait(0) end

    -- Create Object and attach on player ped
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local object = CreateObject(fishingRodHash, pedCoords, true, false, false)
    AttachEntityToEntity(object, ped, GetPedBoneIndex(ped, 18905), 0.1, 0.05, 0, 80.0, 120.0, 160.0, true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(object)
    fishingRod = object
    fishAnimation()
end

Citizen.CreateThread(function()
    local ped = PlayerPedId()
    local pcoords = GetEntityCoords(ped)
    local dcoords = Shared.FishingSpot
    local distance = #(pcoords - dcoords)
    while distance > 10 do
        Wait(1000)
    end
    if distance <= 10 then
        TriggerEvent('venture_aoki_client:Fishing')
        return
    end
end)

RegisterNetEvent('venture_aoki_ceo:client:Fishing', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if exports['qb-inventory']:HasItem('fishingrod') then 
            QBCore.Functions.Notify('You are now in the Aoki Fishing Zone', 'primary')
            if IsControlJustPressed(0, 38) then
                startFishing()
            else
                return
            end
        end
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:MakeGyoza', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            local hasItems = RPC.execute('venture_aoki_ceo:server:GyozaCheck')
            if hasItems and not working then
                working = true
                LocalPlayer.state:set('inv_busy', true, true)
                TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'wrapping', 0.14)
                QBCore.Functions.Progressbar('aoki_sushi', 'Making Gyoza', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {
                    animDict = 'mp_common',
                    anim = 'givetake1_a',
                    flags = 8,
                }, {}, {}, function() -- Play When Done
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['beef'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['dough'], 'remove')
                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['gyoza'], 'add')
                    TriggerServerEvent("qb-smallresources:server:AddItem", 'gyoza', 1)
                    RPC.execute('venture_aoki_ceo:server:GyozaMake')
                end, function() -- Play When Cancel
                    LocalPlayer.state:set('inv_busy', false, true)
working = false
                    QBCore.Functions.Notify('Cancelled...', 'error')
                end)
            end
        end
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:washHands', function()
	TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'watermachine', 0.6)
    QBCore.Functions.Progressbar('washing_hands', 'Washing hands', 5000, false, false, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = false, },
	{ animDict = "mp_arresting", anim = "a_uncuff", flags = 8, }, {}, {}, function()
		TriggerEvent('QBCore:Notify', "You've washed your hands!", 'success')
	end, function()
        LocalPlayer.state:set("inv_busy", false, true)
		TriggerEvent('QBCore:Notify', "Cancelled", 'error')
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:client:Menu', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            exports['qb-menu']:openMenu({
                {
                    header = "• Aoki Menu",
                    isMenuHeader = true,
                },
                {
                    header = "『Make Sushi』",
                    txt = "• Rice, Seaweed, Fish, Veggies",
                    params = {
                        event = "venture_aoki_ceo:client:MakeSushi",
                        args = {
                            number = 1,
                            id = 2
                        }
                    }
                },
                {
                    header = "『Make Ramen』",
                    txt = "• Noodles, Broth, Veggies, Eggs",
                    params = {
                        event = "venture_aoki_ceo:client:MakeRamen",
                        args = {
                            number = 2,
                            id = 3
                        }
                    }
                },
                {
                    header = "『Make Green Tea』",
                    txt = "• Water, Healing Leaf",
                    params = {
                        event = "venture_aoki_ceo:client:MakeGreenTea",
                        args = {
                            number = 2,
                            id = 3
                        }
                    }
                },
                {
                    header = "『Make Sake』",
                    txt = "• Alcohol, Rice, Water",
                    params = {
                        event = "venture_aoki_ceo:client:MakeSake",
                        args = {
                            number = 2,
                            id = 4
                        }
                    }
                },
                {
                    header = "『Make Gyoza』",
                    txt = "• Beef, Dough",
                    params = {
                        event = "venture_aoki_ceo:client:MakeGyoza",
                        args = {
                            number = 2,
                            id = 5
                        }
                    }
                },
            })
        else
            QBCore.Functions.Notify('You must be Clocked into work', 'error')
        end
    end)
end)

RegisterNetEvent('venture_aoki_ceo:client:Bill', function()
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
    RPC.execute('venture_aoki_ceo:server:Bill', bill)
end)

RegisterNetEvent('venture_aoki_ceo:client:Tray1', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'aokitray1')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'aokitray1', {
        maxweight = 25000,
        slots = 8,
    })
end)

RegisterNetEvent('venture_aoki_ceo:client:Store', function()
    TriggerServerEvent('inventory:server:OpenInventory', "shop", "aokistore", Shared.Items)
end)