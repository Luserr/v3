local QBCore = exports['qb-core']:GetCoreObject()
local HackSettings = {
    ['fleeca'] = {
        time = 9, -- time = time in seconds per puzzle
        blocks = 4, -- blocks = amount of blocks per puzzle
        amount = 4 -- amount = amount of puzzles the player has to solve consecutively
    },
    ['paleto'] = {
        time = 9,
        blocks = 5,
        amount = 4
    },
    ['pacific'] = {
        time = 7,
        blocks = 5,
        amount = 5
    },
    ['vault'] = {
        time = 7,
        blocks = 6,
        amount = 5
    }
}
local ThermiteSettings = {
    ['fleeca'] = {
        correctBlocks = 1, -- correctBlocks = Number of correct blocks the player needs to click
        incorrectBlocks = 4, -- incorrectBlocks = number of incorrect blocks after which the game will fail
        timetoShow = 4.5, -- timetoShow = time in secs for which the right blocks will be shown
        timetoLose = 12 -- timetoLose = maximum time after timetoshow expires for player to select the right blocks
    },
    ['paleto'] = {
        correctBlocks = 1, -- You want to set this way higher!
        incorrectBlocks = 4,
        timetoShow = 4.5,
        timetoLose = 12
    },
    ['pacific'] = {
        correctBlocks = 1, -- You want to set this way higher!
        incorrectBlocks = 4,
        timetoShow = 4.5,
        timetoLose = 12
    },
    ['vault'] = {
        correctBlocks = 1, -- You want to set this way higher!
        incorrectBlocks = 4,
        timetoShow = 4.5,
        timetoLose = 12
    }
}
local copsCalled = false

closestBank = nil

--- This function uses qb-dispatch functions by default to alert the police when doing a bank heist
CallCops = function() -- Globally used
    if copsCalled then return end
    copsCalled = true
    if Config.Banks[closestBank].type == 'fleeca' then
        exports['qb-dispatch']:FleecaBankRobbery()
    elseif Config.Banks[closestBank].type == 'paleto' then
        exports['qb-dispatch']:PaletoBankRobbery()
    elseif Config.Banks[closestBank].type == 'pacific' then
        exports['qb-dispatch']:PacificBankRobbery()
    elseif Config.Banks[closestBank].type == 'vault' then
        exports['qb-dispatch']:PacificBankRobbery()
    end
    CreateThread(function()
        Wait(5*60*1000)
        copsCalled = false
    end)
end

--- Spawns new trollys for a given bank and removes existing ones
--- @param bank string - Name of the bank
CreateTrollys = function(bank) -- Globally used
    RequestModel("hei_prop_hei_cash_trolly_01")
    RequestModel("ch_prop_gold_trolly_01a")
    while not HasModelLoaded("hei_prop_hei_cash_trolly_01") or not HasModelLoaded("ch_prop_gold_trolly_01a") do Wait(10) end
    for k, v in pairs(Config.Banks[bank].trolly) do
        if v.type == 'money' then
            -- DELETE OLD
            local oldcashtrolley = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 1.0, 269934519, false, false, false)
            if oldcashtrolley ~= 0 then
                local netId = NetworkGetNetworkIdFromEntity(oldcashtrolley)
                TriggerServerEvent('qb-bankrobbery:server:DeleteObject', netId)
                Wait(500)
            end
            local emptytrolly = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 1.0, 769923921, false, false, false)
            if emptytrolly ~= 0 then
                local netId = NetworkGetNetworkIdFromEntity(emptytrolly)
                TriggerServerEvent('qb-bankrobbery:server:DeleteObject', netId)
                Wait(500)
            end
            -- CREATE NEW
            local trolly = CreateObject(269934519, v.coords.x, v.coords.y, v.coords.z, 1, 0, 0)
            SetEntityHeading(trolly, v.coords.w)
            FreezeEntityPosition(trolly, true)
            SetEntityInvincible(trolly, true)
            PlaceObjectOnGroundProperly(trolly)
        elseif v.type == 'gold' then
            -- DELETE OLD
            local oldgoldtrolly = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 2.0, 2007413986, false, false, false)
            if oldgoldtrolly ~= 0 then
                local netId = NetworkGetNetworkIdFromEntity(oldgoldtrolly)
                TriggerServerEvent('qb-bankrobbery:server:DeleteObject', netId)
                Wait(500)
            end
            local emptytrolly = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 1.0, -1580618867, false, false, false)
            if emptytrolly ~= 0 then
                local netId = NetworkGetNetworkIdFromEntity(emptytrolly)
                TriggerServerEvent('qb-bankrobbery:server:DeleteObject', netId)
                Wait(500)
            end
            -- CREATE NEW
            local trolly = CreateObject(2007413986, v.coords.x, v.coords.y, v.coords.z, 1, 0, 0)
            SetEntityHeading(trolly, v.coords.w)
            FreezeEntityPosition(trolly, true)
            SetEntityInvincible(trolly, true)
            PlaceObjectOnGroundProperly(trolly)
        end
    end
end

--- Handles what happens after completing a laptop hack
--- @param success bool - Whether the minigame was successfull
--- @param bank string - Name of the bank
local OnLaptopHackDone = function(success, bank)
    if success then
        QBCore.Functions.Notify("You cracked the security system..", "error")
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = "Lionh34rt",
            subject = bank,
            message = "I've received your input codes and will now start disabling the security system..<br />This might take a minute..",
            button = {}
        })
        if bank == 'Paleto' then
            TriggerServerEvent('qb-bankrobbery:server:SetOutsideHacked', 'Paleto', true)
        elseif bank == 'Vault' then
            TriggerServerEvent('qb-bankrobbery:server:SetGoldHacked')
        else
            CreateTrollys(bank)
            TriggerServerEvent('qb-bankrobbery:server:SetBankHacked', bank)
        end
    end
end

--- Loads and waits until a given animation dictionary is loaded
--- @param dict string - Animation Dictionary name
loadAnimDict = function(dict) -- Globally used
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end 

--- Performs laptop animation for a given bank
--- @param bank string - Name of the bank
LaptopAnimation = function(bank) -- Globally used
    local loc = Config.Banks[bank].laptop
    LocalPlayer.state:set("inv_busy", true, true)
    local animDict = "anim@heists@ornate_bank@hack"
    RequestAnimDict(animDict)
    RequestModel("hei_prop_hst_laptop")
    RequestModel("hei_p_m_bag_var22_arm_s")
    while not HasAnimDictLoaded(animDict) or not HasModelLoaded("hei_prop_hst_laptop") or not HasModelLoaded("hei_p_m_bag_var22_arm_s") do Wait(10) end
    local ped = PlayerPedId()
    local targetPosition, targetRotation = (vec3(GetEntityCoords(ped))), vec3(GetEntityRotation(ped))
    if math.random(1, 100) <= 65 and not QBCore.Functions.IsWearingGloves() then
        TriggerServerEvent("evidence:server:CreateFingerDrop", targetPosition)
    end

    local animPos = GetAnimInitialOffsetPosition(animDict, "hack_enter", loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    local animPos2 = GetAnimInitialOffsetPosition(animDict, "hack_loop", loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    local animPos3 = GetAnimInitialOffsetPosition(animDict, "hack_exit", loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    FreezeEntityPosition(ped, true)

    local netScene = NetworkCreateSynchronisedScene(animPos, targetRotation, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, targetPosition, 1, 1, 0)
    local laptop = CreateObject(`hei_prop_hst_laptop`, targetPosition, 1, 1, 0)
    NetworkAddPedToSynchronisedScene(ped, netScene, animDict, "hack_enter", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene, animDict, "hack_enter_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene, animDict, "hack_enter_laptop", 4.0, -8.0, 1)

    local netScene2 = NetworkCreateSynchronisedScene(animPos2, targetRotation, 2, false, true, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, "hack_loop", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene2, animDict, "hack_loop_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene2, animDict, "hack_loop_laptop", 4.0, -8.0, 1)

    local netScene3 = NetworkCreateSynchronisedScene(animPos3, targetRotation, 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, netScene3, animDict, "hack_exit", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene3, animDict, "hack_exit_bag", 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene3, animDict, "hack_exit_laptop", 4.0, -8.0, 1)

    Wait(200)
    NetworkStartSynchronisedScene(netScene)
    Wait(6300)
    NetworkStartSynchronisedScene(netScene2)
    Wait(2000)
    exports['hacking']:OpenHackingGame(HackSettings[Config.Banks[bank].type].time, HackSettings[Config.Banks[bank].type].blocks, HackSettings[Config.Banks[bank].type].amount, function(Success)
        OnLaptopHackDone(Success, bank)
        LocalPlayer.state:set("inv_busy", false, true)
        NetworkStartSynchronisedScene(netScene3)
        Wait(4600)
        NetworkStopSynchronisedScene(netScene3)
        DeleteObject(bag)
        DeleteObject(laptop)
        FreezeEntityPosition(ped, false)
    end)
end

--- Performs the animation of looting a trolly for a given bank and given trolly number, deletes current one and places an empty one
--- @param bank string - Name of the bank
--- @param index number - Index number of trolly in a bank
LootTrolly = function(bank, index) -- Globally used
    -- set taken
    TriggerServerEvent('qb-bankrobbery:server:SetTrollyBusy', bank, index, true)
    -- animation
    LocalPlayer.state:set("inv_busy", true, true)
    if Config.Banks[bank].trolly[index].type == 'money' then
        local ped = PlayerPedId()
        local CurrentTrolly = GetClosestObjectOfType(Config.Banks[bank].trolly[index].coords.x, Config.Banks[bank].trolly[index].coords.y, Config.Banks[bank].trolly[index].coords.z, 1.0, 269934519, false, false, false)
        local MoneyObject = CreateObject(`hei_prop_heist_cash_pile`, GetEntityCoords(ped), true)
        SetEntityVisible(MoneyObject, false, false)
        AttachEntityToEntity(MoneyObject, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
        local GrabBag = CreateObject(`hei_p_m_bag_var22_arm_s`, GetEntityCoords(ped), true, false, false)
        
        local GrabOne = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, GrabOne, "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, GrabOne, "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        NetworkStartSynchronisedScene(GrabOne)
        Wait(1500)
        SetEntityVisible(MoneyObject, true, true)
        
        local GrabTwo = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, GrabTwo, "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, GrabTwo, "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
        NetworkAddEntityToSynchronisedScene(CurrentTrolly, GrabTwo, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)
        NetworkStartSynchronisedScene(GrabTwo)
        Wait(37000)
        SetEntityVisible(MoneyObject, false, false)
        
        local GrabThree = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, GrabThree, "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, GrabThree, "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)
        NetworkStartSynchronisedScene(GrabThree)
        
        local NewTrolley = CreateObject(769923921, GetEntityCoords(CurrentTrolly) + vector3(0.0, 0.0, - 0.985), true, false, false)
        SetEntityRotation(NewTrolley, GetEntityRotation(CurrentTrolly))
        while not NetworkHasControlOfEntity(CurrentTrolly) do
            Wait(10)
            NetworkRequestControlOfEntity(CurrentTrolly)
        end
        DeleteObject(CurrentTrolly)
        while DoesEntityExist(CurrentTrolly) do
            Wait(10)
            DeleteObject(CurrentTrolly)
        end
        PlaceObjectOnGroundProperly(NewTrolley)
        Wait(1800)
        DeleteEntity(GrabBag)
        DeleteObject(MoneyObject)

        -- Reward
        TriggerServerEvent('qb-bankrobbery:server:TrollyReward', Config.Banks[bank].type)
    elseif Config.Banks[bank].trolly[index].type == 'gold' then
        local ped = PlayerPedId()
        RequestModel("ch_prop_gold_bar_01a")
        RequestModel("ch_prop_gold_trolly_empty")
        local CurrentTrolly = GetClosestObjectOfType(Config.Banks[bank].trolly[index].coords.x, Config.Banks[bank].trolly[index].coords.y, Config.Banks[bank].trolly[index].coords.z, 1.0, 2007413986, false, false, false)
        local MoneyObject = CreateObject(`ch_prop_gold_bar_01a`, GetEntityCoords(ped), true)
        SetEntityVisible(MoneyObject, false, false)
        AttachEntityToEntity(MoneyObject, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
        local GrabBag = CreateObject(`hei_p_m_bag_var22_arm_s`, GetEntityCoords(ped), true, false, false)
        
        local GrabOne = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, GrabOne, "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, GrabOne, "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        NetworkStartSynchronisedScene(GrabOne)
        Wait(1500)
        SetEntityVisible(MoneyObject, true, true)
        
        local GrabTwo = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, GrabTwo, "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, GrabTwo, "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
        NetworkAddEntityToSynchronisedScene(CurrentTrolly, GrabTwo, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)
        NetworkStartSynchronisedScene(GrabTwo)
        Wait(37000)
        SetEntityVisible(MoneyObject, false, false)
        
        local GrabThree = NetworkCreateSynchronisedScene(GetEntityCoords(CurrentTrolly), GetEntityRotation(CurrentTrolly), 2, false, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(ped, GrabThree, "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(GrabBag, GrabThree, "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)
        NetworkStartSynchronisedScene(GrabThree)
        
        local NewTrolley = CreateObject(-1580618867, GetEntityCoords(CurrentTrolly) + vector3(0.0, 0.0, - 0.985), true, false, false)
        SetEntityRotation(NewTrolley, GetEntityRotation(CurrentTrolly))
        while not NetworkHasControlOfEntity(CurrentTrolly) do
            Wait(10)
            NetworkRequestControlOfEntity(CurrentTrolly)
        end
        DeleteObject(CurrentTrolly)
        while DoesEntityExist(CurrentTrolly) do
            Wait(10)
            DeleteObject(CurrentTrolly)
        end
        PlaceObjectOnGroundProperly(NewTrolley)
        Wait(1800)
        DeleteEntity(GrabBag)
        DeleteObject(MoneyObject)

        -- Reward
        TriggerServerEvent('qb-bankrobbery:server:TrollyReward', 'gold')
    end
    -- evidence
    if math.random(1, 100) <= 65 and not QBCore.Functions.IsWearingGloves() then
        local pos = GetEntityCoords(PlayerPedId())
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    end
    LocalPlayer.state:set("inv_busy", false, true)
end

--- Performs the animation of looting a locker for a given bank and given trolly number
--- @param bank string - Name of the bank
--- @param index number - Index number of trolly in a bank
LootLocker = function(bank, index) -- Globally used
    -- SET BUSY
    TriggerServerEvent('qb-bankrobbery:server:SetLockerBusy', bank, index, true)
    LocalPlayer.state:set("inv_busy", true, true)
        if exports['qb-inventory']:HasItem("drill") then
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            if math.random(1, 100) <= 65 and not QBCore.Functions.IsWearingGloves() then
                TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
            end
            loadAnimDict("anim@heists@fleeca_bank@drilling")
            TaskPlayAnim(ped, 'anim@heists@fleeca_bank@drilling', 'drill_straight_idle' , 3.0, 3.0, -1, 1, 0, false, false, false)
            local DrillObject = CreateObject(`hei_prop_heist_drill`, pos.x, pos.y, pos.z, true, true, true)
            AttachEntityToEntity(DrillObject, ped, GetPedBoneIndex(ped, 57005), 0.14, 0, -0.01, 90.0, -90.0, 180.0, true, true, false, true, 1, true)
            -- STRESS
            local isDrilling = true
            CreateThread(function()
                while isDrilling do
                    Wait(10000)
                    TriggerServerEvent('hud:server:GainStress', math.random(4, 8))
                end
            end)
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "bankdrill", 0.3)
            QBCore.Functions.Progressbar("open_locker_drill", "Unlocking safe..", 41000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                StopAnimTask(ped, "anim@heists@fleeca_bank@drilling", "drill_straight_idle", 1.0)
                DetachEntity(DrillObject, true, true)
                DeleteObject(DrillObject)
                -- SET TAKEN
                TriggerServerEvent('qb-bankrobbery:server:SetLockerTaken', bank, index, true)
                -- UNSET BUSY
                LocalPlayer.state:set("inv_busy", false, true)
                TriggerServerEvent('qb-bankrobbery:server:SetLockerBusy', bank, index, false)
                -- RECEIVE ITEM
                TriggerServerEvent('qb-bankrobbery:server:LockerReward', Config.Banks[bank].type)
                QBCore.Functions.Notify("Successful!", "success")
                isDrilling = false
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), "anim@heists@fleeca_bank@drilling", "drill_straight_idle", 1.0)
                -- UNSET BUSY
                LocalPlayer.state:set("inv_busy", false, true)
                TriggerServerEvent('qb-bankrobbery:server:SetLockerBusy', bank, index, false)
                DetachEntity(DrillObject, true, true)
                DeleteObject(DrillObject)
                QBCore.Functions.Notify("Canceled..", "error")
                isDrilling = false
            end)
        else
            QBCore.Functions.Notify("Looks like the safe lock is too strong ..", "error")
            -- UNSET BUSY
            LocalPlayer.state:set("inv_busy", false, true)
            TriggerServerEvent('qb-bankrobbery:server:SetLockerBusy', bank, index, false)
        end
end

--- Performs the animation of planting thermite charge for a given bank and given index number
--- @param bank string - Name of the bank
--- @param index number - Index number of thermite spot
local PlantThermite = function(bank, index)
    TriggerServerEvent("qb-smallresources:server:RemoveItem", "thermite", 1)
    --QBCore.Functions.RemoveItem('thermite')
    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["thermite"], "remove")
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    RequestModel("hei_p_m_bag_var22_arm_s")
    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") or not HasModelLoaded("hei_p_m_bag_var22_arm_s") or not HasNamedPtfxAssetLoaded("scr_ornate_heist") do Wait(50) end
    local ped = PlayerPedId()
    if math.random(1, 100) <= 65 and not QBCore.Functions.IsWearingGloves() then
        TriggerServerEvent("evidence:server:CreateFingerDrop", GetEntityCoords(ped))
    end
    SetEntityHeading(ped, Config.Banks[bank].thermite[index].coords.w)
    local pos = Config.Banks[bank].thermite[index].coords.xyz
    Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local bagscene = NetworkCreateSynchronisedScene(pos.x, pos.y, pos.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, pos.x, pos.y, pos.z,  true,  true, false)
    SetEntityCollision(bag, false, true)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local charge = CreateObject(`hei_prop_heist_thermite`, x, y, z + 0.2,  true,  true, true)
    SetEntityCollision(charge, false, true)
    AttachEntityToEntity(charge, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Wait(5000)
    DetachEntity(charge, 1, 1)
    FreezeEntityPosition(charge, true)
    DeleteObject(bag)
    NetworkStopSynchronisedScene(bagscene)
    CreateThread(function()
        Wait(15000)
        DeleteEntity(charge)
    end)
end

--- Performs the animation of covering eyes and starts a server synced ptfx for given bank and thermite index, sets door unlocked
--- @param bank string - Name of the bank
--- @param index number - Index number of thermite spot
local ThermiteEffect = function(bank, index)
    local ped = PlayerPedId()
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") do Wait(50) end
    Wait(1500)
    TriggerServerEvent("qb-bankrobbery:server:ThermitePtfx", Config.Banks[bank].thermite[index].ptfx)
    Wait(500)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_intro", 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    Wait(25000)
    ClearPedTasks(ped)
    Wait(2000)
    QBCore.Functions.Notify("The door is burned open", "success")
    if Config.DoorLock == 'qb' then
        TriggerServerEvent('qb-doorlock:server:updateState', Config.Banks[bank].thermite[index].doorId, false, false, false, true, false, false)
    elseif Config.DoorLock == 'nui' then
        TriggerServerEvent('nui_doorlock:server:updateState', Config.Banks[bank].thermite[index].doorId, false, false, false, true)
    elseif Config.DoorLock == 'np' then
        TriggerServerEvent('doors:change-lock-state', Config.Banks[bank].thermite[index].doorId)
    end
end

--- Performs the PlantThermite function and starts the minigame for thermite
--- @param bank string - Name of the bank
--- @param index number - Index number of trolly in a bank
StartThermite = function(bank, index) -- Globally used
    if not Config.Banks[bank].thermite[index].hit then
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - Config.Banks[bank].thermite[index].coords.xyz) < 2 then
            PlantThermite(bank, index)
            local bankType = Config.Banks[bank].type
            exports["memorygame"]:thermiteminigame(ThermiteSettings[bankType].correctBlocks, ThermiteSettings[bankType].incorrectBlocks, ThermiteSettings[bankType].timetoShow, ThermiteSettings[bankType].timetoLose,
            function()
                TriggerServerEvent('qb-bankrobbery:server:SetThermiteHit', bank, index)
                ThermiteEffect(bank, index)
            end,
            function()
                QBCore.Functions.Notify("You failed...", "success")
            end)
        end
    end
end

RegisterNetEvent('thermite:UseThermite', function()
    local pos = GetEntityCoords(PlayerPedId())
    if closestBank then
        if not Config.Banks[closestBank].thermite then return end
        for i=1, #Config.Banks[closestBank].thermite, 1 do
            if #(pos-Config.Banks[closestBank].thermite[i].coords.xyz) < 2 then
                StartThermite(closestBank, i)
            end
        end
    end
end)

-- Sync events
RegisterNetEvent('qb-bankrobbery:client:SetBankHacked', function(bank)
    Config.Banks[bank].hacked = true
end)

RegisterNetEvent('qb-bankrobbery:client:SetOutsideHacked', function(bank, state)
    Config.Banks[bank].outsideHack = state
end)

RegisterNetEvent('qb-bankrobbery:client:SetTrollyBusy', function(bank, index, state)
    Config.Banks[bank].trolly[index].taken = state
end)

RegisterNetEvent('qb-bankrobbery:client:SetLockerBusy', function(bank, index, state)
    Config.Banks[bank].lockers[index].busy = state
end)

RegisterNetEvent('qb-bankrobbery:client:SetLockerTaken', function(bank, index, state)
    Config.Banks[bank].lockers[index].taken = state
end)

RegisterNetEvent('qb-bankrobbery:client:ThermitePtfx', function(coords)
    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do Wait(50) end
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", coords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Wait(27500)
    StopParticleFxLooped(effect, 0)
end)

RegisterNetEvent('qb-bankrobbery:client:SetThermiteHit', function(bank, index)
    Config.Banks[bank].thermite[index].hit = true
end)

RegisterNetEvent('qb-bankrobbery:client:ResetBank', function(bank)
    -- Door
    Config.Banks[bank].hacked = false
    Config.Banks[bank].policeClose = false
    -- lockers
    for i=1, #Config.Banks[bank].lockers, 1 do
        Config.Banks[bank].lockers[i].busy = false
        Config.Banks[bank].lockers[i].taken = false
    end
    -- Trollys
    for j=1, #Config.Banks[bank].trolly, 1 do
        Config.Banks[bank].trolly[j].taken = false
    end
    -- Thermite spots
    if Config.Banks[bank].thermite then
        for k=1, #Config.Banks[bank].thermite, 1 do
            Config.Banks[bank].thermite[k].hit = false
        end
    end
    -- Stackpiles of cash or gold
    if Config.Banks[bank].stacks then
        for h=1, #Config.Banks[bank].stacks, 1 do
            Config.Banks[bank].stacks[h].taken = false
        end
    end
    -- Big Banks
    if bank == 'Paleto' then
        Config.Banks['Paleto'].outsideHack = false
    elseif bank == 'Pacific' then
        Config.Banks['Pacific'].card = false
    elseif bank == 'Vault' then
        Config.Banks['Vault'].goldhacked = false
        Config.Banks['Vault'].lockdown = false
        Config.Banks['Vault'].code = false
        Config.Banks['Vault'].powerplantHit = false
    end
end)

-- Set closestBank loop
CreateThread(function()
    while true do
        Wait(200)
        local pos = GetEntityCoords(PlayerPedId())
        local inRange = false
        for k, v in pairs(Config.Banks) do
            if #(pos - v.coords) < 15 then
                closestBank = k
                inRange = true
                break
            end
        end
        if not inRange then
            Wait(2000)
            closestBank = nil
        end
    end
end)

-- Qb-target exports
CreateThread(function()
    -- Bank panels fleeca
    -- Bank panels fleeca
    if Config.Gabz.fleeca == false then 
        exports['qb-target']:AddBoxZone("BankPanelPinkCage", vector3(311.6, -284.60, 53.78), 0.2, 0.46, {
            name = "BankPanelPinkCage",
            heading = 249,
            debugPoly = false,
            minZ = 54.02,
            maxZ = 54.76
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['PinkCage'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'PinkCage')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['PinkCage'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelLegion", vector3(147.19, -1046.2, 28.91), 0.3, 0.44, {
            name = "BankPanelLegion",
            heading = 249,
            debugPoly = false,
            minZ = 29.26,
            maxZ = 29.96
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['Legion'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Legion')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['Legion'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelHawick", vector3(-353.47, -55.48, 48.71), 0.2, 0.46, {
            name = "BankPanelHawick",
            heading = 249,
            debugPoly = false,
            minZ = 48.92,
            maxZ = 49.56
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['Hawick'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Hawick')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['Hawick'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelDelPerro", vector3(-1210.38, -336.40, 37.68), 0.24, 0.46, {
            name = "BankPanelDelPerro",
            heading = 297,
            debugPoly = false,
            minZ = 37.67,
            maxZ = 38.33
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['DelPerro'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'DelPerro')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['DelPerro'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelGreatOcean", vector3(-2956.48, 482.1, 15.65), 0.24, 0.46, {
            name = "BankPanelGreatOcean",
            heading = 358,
            debugPoly = false,
            minZ = 15.50,
            maxZ = 16.20
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['GreatOcean'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'GreatOcean')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['GreatOcean'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelSandy", vector3(1175.66, 2712.90, 37.99), 0.24, 0.46, {
            name = "BankPanelSandy",
            heading = 89,
            debugPoly = false,
            minZ = 38.00,
            maxZ = 38.60
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['Sandy'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Sandy')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['Sandy'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })
    elseif Config.Gabz.fleeca == true then
        exports['qb-target']:AddBoxZone("BankPanelPinkCage", vector3(311.06, -284.67, 54.16), 0.4, 0.6, {
            name = "BankPanelPinkCage",
            heading = 340,
            debugPoly = false,
            minZ = 53.96,
            maxZ = 54.76
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['PinkCage'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'PinkCage')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['PinkCage'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelLegion", vector3(146.69, -1046.44, 29.37), 0.4, 0.6, {
            name = "BankPanelLegion",
            heading = 340,
            debugPoly = false,
            minZ = 29.27,
            maxZ = 29.97
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['Legion'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Legion')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['Legion'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelHawick", vector3(-354.02, -55.61, 49.04), 0.4, 0.6, {
            name = "BankPanelHawick",
            heading = 338,
            debugPoly = false,
            minZ = 48.84,
            maxZ = 49.64
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['Hawick'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Hawick')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['Hawick'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelDelPerro", vector3(-1210.75, -336.77, 37.78), 0.4, 0.6, {
            name = "BankPanelDelPerro",
            heading = 26,
            debugPoly = false,
            minZ = 37.58,
            maxZ = 38.38
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['DelPerro'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'DelPerro')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['DelPerro'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelGreatOcean", vector3(-2956.33, 481.61, 15.7), 0.6, 0.4, {
            name = "BankPanelGreatOcean",
            heading = 358,
            debugPoly = false,
            minZ = 15.50,
            maxZ = 16.30
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['GreatOcean'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'GreatOcean')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['GreatOcean'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })

        exports['qb-target']:AddBoxZone("BankPanelSandy", vector3(1176.04, 2713.15, 38.09), 0.4, 0.6, {
            name = "BankPanelSandy",
            heading = 359,
            debugPoly = false,
            minZ = 37.89,
            maxZ = 38.69
         }, {
            options = { 
                {
                    type = "client",
                    event = "qb-bankrobbery:client:UseGreenLaptop",
                    icon = 'fas fa-user-secret',
                    label = 'Hack Security',
                    canInteract = function()
                        if Config.Banks['Sandy'].hacked then return false end
                        return true
                    end,
                },
                {
                    action = function()
                        TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Sandy')
                    end,
                    icon = 'fas fa-door-closed',
                    label = 'Close Door',
                    canInteract = function()
                        if not Config.Banks['Sandy'].hacked then return false end
                        return true
                    end,
                    job = 'police'
                }
            },
            distance = 1.5,
        })
    end

    -- Maze Bank
    exports['qb-target']:AddBoxZone("BankPanelMaze", vector3(-1303.85, -815.63, 17.15), 0.24, 0.46, {
        name = "BankPanelMaze",
        heading = 308.00,
        debugPoly = false,
        minZ = 17.35,
        maxZ = 18.05
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseGreenLaptop",
                icon = 'fas fa-user-secret',
                label = 'Hack Security',
                canInteract = function()
                    if Config.Banks['Maze'].hacked then return false end
                    return true
                end,
            },
            {
                action = function()
                    TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Maze')
                end,
                icon = 'fas fa-door-closed',
                label = 'Close Door',
                canInteract = function()
                    if not Config.Banks['Maze'].hacked then return false end
                    return true
                end,
                job = 'police'
            }
        },
        distance = 1.5,
    })
    -- Paleto
    exports['qb-target']:AddBoxZone("BankPanelPaleto", vector3(-109.39, 6483.2, 31.48), 0.24, 0.46, {
        name = "BankPanelPaleto",
        heading = 226,
        debugPoly = false,
        minZ = 31.20,
        maxZ = 32.20
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseBlueLaptop",
                icon = 'fas fa-user-secret',
                label = 'Hack Security',
                canInteract = function()
                    if Config.Banks['Paleto'].outsideHack then return false end
                    return true
                end,
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("PaletoCard", vector3(-105.8362, 6472.1029, 31.626703), 0.3, 0.4, {
        name = "PaletoCard",
        heading = 73,
        debugPoly = false,
        minZ = 31.79,
        maxZ = 32.19
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseGreenCard",
                icon = 'fas fa-user-secret',
                label = 'Open Bank Door',
                canInteract = function()
                    if Config.Banks['Paleto'].hacked then return false end
                    return true
                end,
            },
            {
                action = function()
                    TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Paleto')
                end,
                icon = 'fas fa-door-closed',
                label = 'Close Door',
                canInteract = function()
                    if not Config.Banks['Paleto'].hacked then return false end
                    return true
                end,
                job = 'police'
            }
        },
        distance = 1.5,
    })
    -- Pacific
    exports['qb-target']:AddBoxZone("BankPanelPacific", vector3(252.88, 228.55, 101.68), 0.3, 0.4, {
        name = "BankPanelPacific",
        heading = 68.00,
        debugPoly = false,
        minZ = 101.79,
        maxZ = 102.39
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseRedLaptop",
                icon = 'fas fa-user-secret',
                label = 'Hack Security',
                canInteract = function()
                    if Config.Banks['Pacific'].hacked or Config.Banks['Vault'].goldhacked or not Config.Banks['Pacific'].card then return false end
                    return true
                end,
            },
            {
                action = function()
                    TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Pacific')
                end,
                icon = 'fas fa-door-closed',
                label = 'Close Door',
                canInteract = function()
                    if not Config.Banks['Pacific'].hacked then return false end
                    return true
                end,
                job = 'police'
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("PacificCard", vector3(262.31, 223.01, 106.28), 0.2, 0.4, {
        name = "PacificCard",
        heading = 250,
        debugPoly = false,
        minZ = 106.29,
        maxZ = 106.99
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseGoldCard",
                icon = 'fas fa-user-secret',
                label = 'Open Security Door',
                canInteract = function()
                    if Config.Banks['Pacific'].card then return false end
                    return true
                end,
            }
        },
        distance = 1.5,
    })
    -- Vault
    exports['qb-target']:AddBoxZone("VaultGoldLaptop", vector3(257.60, 228.20, 101.68), 0.2, 0.25, {
        name = "VaultGoldLaptop",
        heading = 340.00,
        debugPoly = false,
        minZ = 102.05,
        maxZ = 102.25
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseGoldLaptop",
                icon = 'fas fa-user-secret',
                label = 'Hack Security',
                canInteract = function()
                    if Config.Banks['Pacific'].hacked or Config.Banks['Vault'].goldhacked then return false end
                    return true
                end,
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("VaultGreyUsb", vector3(252.14, 235.93, 102.49), 0.3, 0.6, {
        name = "VaultGreyUsb",
        heading = 253.00,
        debugPoly = false,
        minZ = 101.40,
        maxZ = 101.60
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:UseGreyUsb",
                icon = 'fas fa-user-secret',
                label = 'Print Access Code',
                canInteract = function()
                    if Config.Banks['Vault'].lockdown or Config.Banks['Vault'].hacked or not Config.Banks['Vault'].goldhacked then return false end
                    return true
                end,
            },
            {
                action = function()
                    TriggerServerEvent('qb-bankrobbery:server:PDClose', 'Vault')
                end,
                icon = 'fas fa-door-closed',
                label = 'Close Door',
                canInteract = function()
                    if not Config.Banks['Vault'].hacked then return false end
                    return true
                end,
                job = 'police'
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("VaultEnterCode", vector3(261.61, 258.43, 101.69), 0.3, 0.3, {
        name = "VaultEnterCode",
        heading = 340.00,
        debugPoly = false,
        minZ = 102.00,
        maxZ = 102.25
        }, {
        options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:EnterVaultCode",
                icon = 'fas fa-hand-holding',
                label = 'Enter Code',
                canInteract = function()
                    if Config.Banks['Vault'].lockdown or not Config.Banks['Vault'].hacked then return false end
                    return true
                end,
            }
        },
        distance = 1.5,
    })
    -- Lockers
    for k, v in pairs(Config.Banks) do
        for i=1, #v.lockers do
            exports['qb-target']:AddBoxZone("Locker"..k..i, v.lockers[i].coords.xyz, 0.5, 2.0, {
                name = "Locker"..k..i,
                heading = v.lockers[i].coords.w,
                debugPoly = false,
                minZ = Config.Banks[k].lockers[i].coords.z-1.2,
                maxZ = Config.Banks[k].lockers[i].coords.z+1.0
                }, {
                options = { 
                    {
                        action = function()
                            LootLocker(k, i)
                        end,
                        icon = 'fas fa-hand-holding',
                        label = 'Open Locker',
                        canInteract = function()
                            if not Config.Banks[k].hacked or Config.Banks[k].lockers[i].taken or Config.Banks[k].lockers[i].busy then
                                return false
                            end
                            return true
                        end,
                    }
                },
                distance = 1.5,
            })
        end
    end
    -- Trollys
    for k, v in pairs(Config.Banks) do
        for i=1, #v.trolly do
            exports['qb-target']:AddBoxZone("Trolly"..k..i, v.trolly[i].coords.xyz, 0.5, 1.0, {
                name = "Trolly"..k..i,
                heading = v.trolly[i].coords.w,
                debugPoly = false,
                minZ = Config.Banks[k].trolly[i].coords.z-1.2,
                maxZ = Config.Banks[k].trolly[i].coords.z+0.2
                }, {
                options = { 
                    {
                        action = function()
                            LootTrolly(k, i)
                        end,
                        icon = 'fas fa-hand-holding',
                        label = 'Grab '..Config.Banks[k].trolly[i].type,
                        canInteract = function()
                            if not Config.Banks[k].hacked or Config.Banks[k].trolly[i].taken then
                                return false
                            end
                            return true
                        end,
                    }
                },
                distance = 1.5,
            })
        end
    end
    -- Stacks
    for k, v in pairs(Config.Banks['Vault'].stacks) do
        exports['qb-target']:AddBoxZone("VaultStack"..k, v.coords.xyz, 0.5, 0.7, {
            name = "VaultStack"..k,
            heading = v.coords.w,
            debugPoly = false,
            minZ = 101.550,
            maxZ = 101.850
            }, {
            options = { 
                {
                    action = function()
                        LootStack(k)
                    end,
                    icon = 'fas fa-hand-holding',
                    label = 'Grab!',
                    canInteract = function()
                        if not Config.Banks['Vault'].hacked or Config.Banks['Vault'].stacks[k].taken then return false end
                        return true
                    end,
                }
            },
            distance = 1.5,
        })
    end
end)