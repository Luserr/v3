-- Variables
local alcoholCount = 0
local ParachuteEquiped = false
local currentVest = nil
local currentVestTexture = nil
local healing = false

-- Functions

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

function EquipParachuteAnim()
    loadAnimDict("clothingshirt")
    TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
end

function HealOxy()
    if not healing then
        healing = true
    else
        return
    end

    local count = 9
    while count > 0 do
        Wait(1000)
        count = count - 1
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 6)
    end
    healing = false
end

function MethBagEffect()
    local startStamina = 8
    TrevorEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
    while startStamina > 0 do
        Wait(1000)
        if math.random(5, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(5, 100) < 51 then
            TrevorEffect()
        end
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

function Effectdrunk()
    local ped = PlayerPedId()
    RequestAnimSet("move_m@drunk@verydrunk")
    SetPedMovementClipset(ped,"move_m@drunk@verydrunk", 0.5)
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Citizen.Wait(math.random(4000, 6000))    
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
    Citizen.Wait(7000)
    ResetPedMovementClipset(ped)
    ClearPedTasks(ped)
 end

function TrevorEffect()
    StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Wait(3000)
	StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
	StopScreenEffect("DrugsTrevorClownsFight")
	StopScreenEffect("DrugsTrevorClownsFightIn")
	StopScreenEffect("DrugsTrevorClownsFightOut")
end

function EcstasyEffect()
    local startStamina = 30
    SetFlash(0, 0, 500, 7000, 500)
    while startStamina > 0 do
        Wait(1000)
        startStamina = startStamina - 1
        RestorePlayerStamina(PlayerId(), 1.0)
        if math.random(1, 100) < 51 then
            SetFlash(0, 0, 500, 7000, 500)
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
        end
    end
    if IsPedRunning(PlayerPedId()) then
        SetPedToRagdoll(PlayerPedId(), math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
    end
end

function CrackBaggyEffect()
    local startStamina = 8
    local ped = PlayerPedId()
    AlienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.3)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(1, 100) < 60 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
        end
        if math.random(1, 100) < 51 then
            AlienEffect()
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

function CokeBaggyEffect()
    local startStamina = 20
    local ped = PlayerPedId()
    AlienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.1)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 20 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(1, 100) < 10 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
        end
        if math.random(1, 300) < 10 then
            AlienEffect()
            Wait(math.random(3000, 6000))
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

function AlienEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end

-- Events
RegisterNetEvent('consumables:client:Eat', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        --TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

RegisterNetEvent('aoki:client:Ramen', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('aramen', 'Gulping a Ramen Bowl', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {}, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesEat[itemName])
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(4, 8))
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled...', 'error', 7500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        return
    end)
end)

RegisterNetEvent('romoy:client:BeansOnTop', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("beans_on_toast", "Munching On "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Play When Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        AddArmourToPed(PlayerPedId(), 200)
        SetEntityHealth(PlayerPedId(), 200)
        MethBagEffect()
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled', 'error')
    end)
end)

RegisterNetEvent("consumables:client:DrinkBottleBeer",function()
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_beer_bottle",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.14 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCupBeer",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_plastic_cup_02",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = 0.05 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCupRedWineGlass",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "p_wine_glass_s",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.05 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCupWhiteWineGlass",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_drink_whtwine",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.05 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkTequila",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_tequila",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.09 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


RegisterNetEvent("consumables:client:DrinkCocktail",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cocktail",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.12 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


RegisterNetEvent("consumables:client:DrinkCocktailGlass",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cocktail_glass",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.12 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkWhiskeyBottle",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "ba_prop_battle_whiskey_bottle_2_s",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = 0.01 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkStzOpen",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_beer_stzopen",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.12 },
        rotation = { x = 180.0, y = 180.0, z = 30.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent('consumables:client:Whiskey', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"Whiskey"})
    QBCore.Functions.Progressbar("snort_coke", "Drinking Whiskey", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        --QBCore.Functions.RemoveItem(itemName)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
            Effectdrunk()
        end

    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent('consumables:client:beer', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"beer"})
    QBCore.Functions.Progressbar("snort_coke", "Drinking Beer", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        --QBCore.Functions.RemoveItem(itemName)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
        end

    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent('consumables:client:vodka', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("snort_coke", "Drinking Vodka", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        --QBCore.Functions.RemoveItem(itemName)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
        end

    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent('consumables:client:sandwich', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar("eat_something", "Eating Sandwich", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

RegisterNetEvent('consumables:client:twerks_candy', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"egobar"})
    QBCore.Functions.Progressbar("eat_something", "Eating Twerksbar", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

RegisterNetEvent('consumables:client:snikkel_candy', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"egobar"})
    QBCore.Functions.Progressbar("eat_something", "Eating Snikkelbar", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

RegisterNetEvent('consumables:client:tosti', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar("eat_something", "Eating GrilledCheese", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

RegisterNetEvent('consumables:client:coffee', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar("drink_something", "Drinking Coffee", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(12, 24))
    end)
end)

RegisterNetEvent('consumables:client:kurkakola', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"soda"})
    QBCore.Functions.Progressbar("drink_something", "Drinking cola", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
    end)
end)

RegisterNetEvent('consumables:client:Drink', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("drink_something", "Drinking..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        if itemName == 'coffee' then
            TriggerEvent("progressbar:client:faster", 30)
        end
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
    end)
end)

RegisterNetEvent('consumables:client:Cokebaggy', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("snort_coke", "Quick sniff..", math.random(5000, 8000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "cokebaggy", 1)
        --QBCore.Functions.RemoveItem('cokebaggy')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cokebaggy"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 200)
        CokeBaggyEffect()
    end, function() -- Cancel
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent('consumables:client:Crackbaggy', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("snort_coke", "Smoking crack..", math.random(7000, 10000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "crack_baggy", 1)
        --QBCore.Functions.RemoveItem('crack_baggy')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["crack_baggy"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 300)
        CrackBaggyEffect()
    end, function() -- Cancel
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent('venture:legacy', function()
    local Player = QBCore.Functions.GetPlayerData()
    local ped = PlayerPedId()
    LocalPlayer.state:set('inv_busy', true, true)
    QBCore.Functions.Progressbar('legacy_open', 'Opening your legacy box', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        LocalPlayer.state:set('inv_busy', false, true)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "legacybox", 1)
        --QBCore.Functions.RemoveItem('legacybox')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["legacybox"], "remove")
        --Player.Functions.AddMoney('bank', 10000, "You Legacy Reward")
        TriggerServerEvent('venture:legacy:server')
        TriggerServerEvent("qb-smallresources:server:AddItem", "uwupancake", 10)
        TriggerServerEvent("qb-smallresources:server:AddItem", "julep", 5)
        TriggerServerEvent("qb-smallresources:server:AddItem", "ifaks", 1)
    end, function() -- Play When Cancel
        LocalPlayer.state:set('inv_busy', false, true)
        QBCore.Functions.Notify("Cancelled", "error")
    end)
end)

RegisterNetEvent('consumables:client:adrenshot', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("use_oxy", "SPEED AND POWER", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "adrenshot", 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["adrenshot"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 300)
        AdrenalineShotEffect()
    end, function() -- Cancel
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)


function AdrenalineShotEffect()
    local startStamina = 8
    local ped = PlayerPedId()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.3)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        --if math.random(1, 100) < 60 and IsPedRunning(ped) then
          --  SetPedToRagdoll(ped, math.random(1000, 2000), math.random(1000, 2000), 3, 0, 0, 0)
        --end
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

RegisterNetEvent('consumables:client:EcstasyBaggy', function()
    QBCore.Functions.Progressbar("use_ecstasy", "Pops Pills", 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "xtcbaggy", 1)
        --QBCore.Functions.RemoveItem('xtcbaggy')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["xtcbaggy"], "remove")
        EcstasyEffect()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify("Failed", "error")
    end)
end)

RegisterNetEvent('consumables:client:oxy', function()
    QBCore.Functions.Progressbar("use_oxy", "Healing", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "oxy", 1)
        --QBCore.Functions.RemoveItem('oxy')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["oxy"], "remove")
        ClearPedBloodDamage(PlayerPedId())
		HealOxy()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify("Canceled", "error")
    end)
end)

RegisterNetEvent('consumables:client:meth', function()
    QBCore.Functions.Progressbar("snort_meth", "Smoking Ass Meth", 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "meth", 1)
        --QBCore.Functions.RemoveItem('meth')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meth"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 300)
		TriggerEvent("evidence:client:SetStatus", "agitated", 300)
        MethBagEffect()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
	end)
end)

RegisterNetEvent('consumables:client:UseJoint', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting joint..", 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["joint"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        end
        TriggerEvent("evidence:client:SetStatus", "weedsmell", 300)
        TriggerEvent('animations:client:SmokeWeed')
    end)
end)

RegisterNetEvent('consumables:client:UseParachute', function()
    EquipParachuteAnim()
    QBCore.Functions.Progressbar("use_parachute", "parachute using..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local ped = PlayerPedId()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["parachute"], "remove")
        GiveWeaponToPed(ped, `GADGET_PARACHUTE`, 1, false)
        local ParachuteData = {
            outfitData = {
                ["bag"]   = { item = 7, texture = 0},  -- Adding Parachute Clothing
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', ParachuteData)
        ParachuteEquiped = true
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    end)
end)

RegisterNetEvent('consumables:client:ResetParachute', function()
    if ParachuteEquiped then
        EquipParachuteAnim()
        QBCore.Functions.Progressbar("reset_parachute", "Packing parachute..", 40000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            local ped = PlayerPedId()
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["parachute"], "add")
            local ParachuteRemoveData = {
                outfitData = {
                    ["bag"] = { item = 0, texture = 0} -- Removing Parachute Clothing
                }
            }
            TriggerEvent('qb-clothing:client:loadOutfit', ParachuteRemoveData)
            TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
            TriggerServerEvent("qb-smallpenis:server:AddParachute")
            ParachuteEquiped = false
        end)
    else
        QBCore.Functions.Notify("You dont have a parachute!", "error")
    end
end)

RegisterNetEvent('consumables:client:UseWingSuit', function()
    EquipParachuteAnim()
    QBCore.Functions.Progressbar("use_parachute", "Wingsuit using..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local ped = PlayerPedId()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["wingsuit"], "remove")
        GiveWeaponToPed(ped, `GADGET_PARACHUTE`, 1, false)
        TriggerClientEvent("qb-wingsuit-use", source, item.name)
        ParachuteEquiped = true
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    end)
end)

RegisterNetEvent('consumables:client:ResetWingSuit', function()
    if ParachuteEquiped then
        EquipWingsuitAnim()
        QBCore.Functions.Progressbar("reset_parachute", "Wingsuit removing..", 40000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            local ped = PlayerPedId()
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["wingsuit"], "add")
            TriggerClientEvent("qb-wingsuit-use", source, item.name)
            TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
            TriggerServerEvent("qb-smallpenis:server:AddWingsuit")
            ParachuteEquiped = false
        end)
    else
        QBCore.Functions.Notify("You dont have a parachute!", "error")
    end
end)

RegisterNetEvent('consumables:client:UseArmor', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"shakeoff"})
    if GetPedArmour(PlayerPedId()) >= 75 then QBCore.Functions.Notify('You already have enough armor on!', 'error') return end
    QBCore.Functions.Progressbar("use_armor", "Putting on the body armour..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["armor"], "remove")
        TriggerServerEvent('hospital:server:SetArmor', 75)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "armor", 1)
        --QBCore.Functions.RemoveItem('armor')
        SetPedArmour(PlayerPedId(), 75)
    end)
end)

RegisterNetEvent('consumables:client:UseHeavyArmor', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"shakeoff"})
    if GetPedArmour(PlayerPedId()) == 100 then QBCore.Functions.Notify('You already have enough armor on!', 'error') return end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar("use_heavyarmor", "Putting on body armour..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done

        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["heavyarmor"], "remove")
        TriggerServerEvent("qb-smallresources:server:RemoveItem", "heavyarmor", 1)
        --QBCore.Functions.RemoveItem('heavyarmor')
        SetPedArmour(ped, 100)
    end)
end)

RegisterNetEvent('consumables:client:ResetArmor', function()
    local ped = PlayerPedId()
    if currentVest ~= nil and currentVestTexture ~= nil then
        QBCore.Functions.Progressbar("remove_armor", "Removing the body armour..", 2500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, 9, currentVest, currentVestTexture, 2)
            SetPedArmour(ped, 0)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["heavyarmor"], "add")
            TriggerServerEvent("qb-smallresources:server:AddItem", "heavyarmor", 1)
            --QBCore.Functions.AddItem('heavyarmor')
        end)
    else
        QBCore.Functions.Notify("You\'re not wearing a vest..", "error")
    end
end)

-- RegisterNetEvent('consumables:client:UseRedSmoke', function()
--     if ParachuteEquiped then
--         local ped = PlayerPedId()
--         SetPlayerParachuteSmokeTrailColor(ped, 255, 0, 0)
--         SetPlayerCanLeaveParachuteSmokeTrail(ped, true)
--         TriggerEvent("inventory:client:Itembox", QBCore.Shared.Items["smoketrailred"], "remove")
--     else
--         QBCore.Functions.Notify("You need to have a paracute to activate smoke!", "error")
--     end
-- end)

--Threads

CreateThread(function()
    while true do
        Wait(10)
        if alcoholCount > 0 then
            Wait(1000 * 60 * 15)
            alcoholCount = alcoholCount - 1
        else
            Wait(2000)
        end
    end
end)

-- CIGARETTES

local cigpackHp = 20
local cigpackData = {}

-- Cigarette Pack
RegisterNetEvent('cigarettes:client:UseCigPack', function(ItemData) -- On Item Use (registered server side)
    LocalPlayer.state:set("inv_busy", true, true)
    QBCore.Functions.Progressbar("pickup_sla", "Opening Cigarette Pack...", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_clipboard@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(playerPed, "amb@world_human_clipboard@male@idle_a", "idle_c", 1.0)
        QBCore.Functions.Notify("You got a cigarette from the pack", "success")
        --TriggerServerEvent('QBCore:Server:AddItem', "cigarette", 1) -- give cigarette from pack
        --QBCore.Functions.AddItem('cigarette')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cigarette"], "add")
        cigpackHp = ItemData.info.uses
        cigpackData = ItemData
        TriggerServerEvent("cigarettes:server:RemoveCigarette", cigpackHp, cigpackData)
        end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
    LocalPlayer.state:set("inv_busy", false, true)
end)

-- Cigarette Use
RegisterNetEvent('cigarettes:client:UseCigarette')
AddEventHandler('cigarettes:client:UseCigarette', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting cigarette...", 1000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cigarette"], "remove") -- update cig count
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
    else
        TriggerEvent('animations:client:EmoteCommandStart', {"smoke"})
    end
	for i = 1, 5, 1 do -- You can edit 5 for amount you want
            Wait(15000) -- Wait 15 seconds to exec event.
            TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4)) -- Remove stress.
        end
        TriggerEvent("evidence:client:SetStatus", "tobaccosmell", 300)
    end)
end)

RegisterNetEvent('cigarettes:client:UpdateCigPack', function(cigpackHp)
    hp = cigpackHp
end)

RegisterNetEvent("consumables:client:Fries", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"fries"})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
 --       TriggerServerEvent("QBCore:Server:RemoveItem", itemName, 1)
        --QBCore.Functions.RemoveItem(itemName)
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
        TriggerServerEvent("qb-smallresources:server:AddItem", itemName, 1)
        --QBCore.Functions.AddItem(itemName)
    end)
end)

RegisterNetEvent("consumables:client:Donut", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        --QBCore.Functions.RemoveItem(itemName)
  --      TriggerServerEvent("QBCore:Server:RemoveItem", itemName, 1)
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Cancel
        TriggerServerEvent("qb-smallresources:server:AddItem", itemName, 1)
        --QBCore.Functions.AddItem(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkSoda", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar("drink_something", "Drinking..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        --QBCore.Functions.RemoveItem(itemName)
 --       TriggerServerEvent("QBCore:Server:RemoveItem", itemName, 1)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
    end, function() -- Cancel
        TriggerServerEvent("qb-smallresources:server:AddItem", itemName, 1)
        --QBCore.Functions.AddItem(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCoffee", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar("drink_something", "Drinking coffee..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        --QBCore.Functions.RemoveItem(itemName)
--        TriggerServerEvent("QBCore:Server:RemoveItem", itemName, 1)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
    end, function() -- Cancel
        TriggerServerEvent("qb-smallresources:server:AddItem", itemName, 1)
        --QBCore.Functions.AddItem(itemName)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

--starbucks
function SpeedEffect()
    local startStamina = 12
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
    while startStamina > 0 do
        Wait(1000)
        if math.random(5, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(5, 100) < 51 then
            TrevorEffect()
        end
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

RegisterNetEvent('starbucks:client:BreakFastSandwich', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar('breakfastsandwicheat', 'Eating a breakfast sandwich', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled...', 'error', 7500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        return
    end)
end)

RegisterNetEvent('starbucks:client:Frappuccino', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('dfrappuccino', 'Drinking a Frappuccino', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled...', 'error', 7500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        return
    end)
end)

RegisterNetEvent('starbucks:client:BlackCoffee', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('dblackcoffee', 'Drinking a Black Coffee', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        SpeedEffect()

        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled...', 'error', 7500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        return
    end)
end)

 

RegisterNetEvent('dev:client:devapple', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('dfrappuccino', 'Mother Fucking Dev AppleJuice', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = 'anim@gangops@facility@servers@',
        anim = 'hotwire',
        flags = 16,
    }, {}, {}, function()
 
        exports['qb-buffs']:StaminaBuffEffect(155000, 1.4)
        Citizen.Wait(500)
        exports['qb-buffs']:SwimmingBuffEffect(250000, 1.4)
        Citizen.Wait(500)
        exports['qb-buffs']:AddHealthBuff(50000, 5)
        Citizen.Wait(500)
        exports['qb-buffs']:AddArmorBuff(50000, 5)
        Citizen.Wait(500)
        exports['qb-buffs']:AddStressBuff(350000, 10) 
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("hacking", 15000)
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("intelligence", 15000)
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("luck", 15000)
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("stamina", 15000) 
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("strength", 15000)
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("swimming", 15000) 
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("super-thirst", 15000)
        Citizen.Wait(500)
        exports['qb-buffs']:AddBuff("super-hunger", 15000)

        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesDrink[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled...', 'error', 7500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        return
    end)
end)

