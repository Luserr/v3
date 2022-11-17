-------------------------------
---------- CASE#2506 ----------
-------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.Core
local CoreFolder = Config.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.TargetName
local MenuName = Config.MenuName
local InputName = Config.InputName
local DutyEvent = Config.DutyEvent
local ItemCheckEvent = Config.ItemCheckEvent
local RemoveStress = Config.RemoveStress
local MetaDataEvent = Config.MetaDataEvent
local EvidenceEvent = Config.EvidenceEvent
local FuelEvent = Config.FuelEvent
local JobName = Config.JobName
local ClothingEvent = Config.ClothingEvent
local VehicleKeysEvent = Config.VehicleKeysEvent
local SnakeFoodItem = Config.SnakeFoodItem
local LightDrunkTime = Config.LightDrunkTime
local HeavyDrunkTime = Config.HeavyDrunkTime
local alcoholCount = 0
local AlcoholType = Config.Alcohol
local FoodType = Config.Food
local DrinkType = Config.Drink
local LightBeerAmount = Config.LightBeerAmount
local HeavyBeerAmount = Config.HeavyBeerAmount
local LightLiquorAmount = Config.LightLiquorAmount
local HeavyLiquorAmount = Config.HeavyLiquorAmount
local LightCocktailAmount = Config.LightCocktailAmount
local HeavyCocktailAmount = Config.HeavyCocktailAmount
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- BLIPS CODE START --<!>-- **COMMENT OUT THIS CODE OR MOVE THE FILE IN ORDER TO DISABLE BLIPS**
-- Creates blip for white widow store (uncomment to add the blip)
Citizen.CreateThread(function()
	for _, info in pairs(Config.Blips) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, info.id)
		SetBlipDisplay(info.blip, 4)
		SetBlipScale(info.blip, 0.6)
		SetBlipColour(info.blip, info.colour)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(info.title)
		EndTextCommandSetBlipName(info.blip)
	end
end)
--<!>-- BLIPS CODE END --<!>-- **COMMENT OUT THIS CODE OR MOVE THE FILE IN ORDER TO DISABLE BLIPS**

--<!>-- PLAYER LOADED CODE START --<!>--
RegisterNetEvent('Core:Client:OnPlayerLoaded')
AddEventHandler('Core:Client:OnPlayerLoaded', function()
    Core.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == JobName then
                TriggerServerEvent(DutyEvent)
            end
        end
    end)
end)
RegisterNetEvent('Core:Client:OnJobUpdate')
AddEventHandler('Core:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)
RegisterNetEvent('boii-billiardsbar:client:ToggleDuty', function()
	onDuty = not onDuty
	TriggerServerEvent(DutyEvent)
end)
--<!>-- PLAYER LOADED CODE END --<!>-- 

--<!>-- ON DUTY MENU CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_duty", Config.Duty, 2.0, 1.0, {
    name="bb_duty",
    heading=48.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:DutyMenu",
            icon = Language['dutyicon'], 
            label = Language['dutylabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
--<!>-- ON DUTY MENU CODE END --<!>--

--<!>-- PULL PINTS CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_pumps", Config.Pumps, 1.5, 1.0, {
    name="bb_pumps",
    heading=50.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:PumpsMenu",
            icon = Language['pumpicon'], 
            label = Language['pumplabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
exports[TargetName]:AddBoxZone("bb_pumps2", Config.Pumps2, 1.5, 1.0, {
    name="bb_pumps2",
    heading=50.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:PumpsMenu2",
            icon = Language['pumpicon'], 
            label = Language['pumplabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
exports[TargetName]:AddBoxZone("bb_pumps3", Config.Pumps3, 1.5, 1.0, {
    name="bb_pumps3",
    heading=50.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:PumpsMenu",
            icon = Language['pumpicon'], 
            label = Language['pumplabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent("boii-billiardsbar:client:PullPint", function(args)
    local player = PlayerPedId()
    if args == 1 then
        Core.Functions.Progressbar("bb_pullambeer", Language['pullingpint'], Config.PullPintTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "amb@world_human_drinking@beer@female@base",
            anim = "base",
        }, {
            model = "prop_pint_glass_tall",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
	        TriggerServerEvent('boii-billiardsbar:server:AddItem', 'pint_ambeer', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledpint'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 2 then
        Core.Functions.Progressbar("bb_pullpiswasser", Language['pullingpint'], Config.PullPintTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "amb@world_human_drinking@beer@female@base",
            anim = "base",
        }, {
            model = "prop_pint_glass_tall",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'pint_piswasser', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledpint'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 3 then
        Core.Functions.Progressbar("bb_pulllogger", Language['pullingpint'], Config.PullPintTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "amb@world_human_drinking@beer@female@base",
            anim = "base",
        }, {
            model = "prop_pint_glass_tall",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'pint_logger', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledpint'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 4 then
        Core.Functions.Progressbar("bb_pulldusche", Language['pullingpint'], Config.PullPintTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "amb@world_human_drinking@beer@female@base",
            anim = "base",
        }, {
            model = "prop_pint_glass_tall",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'pint_dusche', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledpint'], 'success')
            ClearPedTasks(player)
        end)
    end    
end)
--<!>-- PULL PINTS CODE END --<!>--

--<!>-- COCKTAILS CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_cocktails", Config.Cocktails, 1.2, 0.7, {
    name="bb_cocktails",
    heading=229.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:CocktailsMainMenu",
            icon = Language['cocktailsicon'], 
            label = Language['cocktailslabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent("boii-billiardsbar:client:MixCocktails", function(args)
    local player = PlayerPedId()
    if args == 1 then
        Core.Functions.Progressbar("bb_cocktail_wsour", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
	        TriggerServerEvent('boii-billiardsbar:server:AddItem', 'whiskeysour', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 2 then
        Core.Functions.Progressbar("bb_cocktail_wsour", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'whiskeysmash', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 3 then
        Core.Functions.Progressbar("bb_cocktail_wsour", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'bloodandsand', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 4 then
        Core.Functions.Progressbar("bb_cocktail_pcolada", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_shot_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'pinacolada', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 5 then
        Core.Functions.Progressbar("bb_cocktail_zombie", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'zombie', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 6 then
        Core.Functions.Progressbar("bb_cocktail_maitai", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'maitai', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 7 then
        Core.Functions.Progressbar("bb_cocktail_appletini", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'appletini', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 8 then
        Core.Functions.Progressbar("bb_cocktail_cosmo", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cosmopolitan', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 9 then
        Core.Functions.Progressbar("bb_cocktail_cosmo", Language['mixcocktail'], Config.CocktailTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_cocktail_glass",
            bone = 60309,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'bloodymary', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mixedcocktail'], 'success')
            ClearPedTasks(player)
        end)
    end    
end)
--<!>-- COCKTAILS CODE END --<!>--

--<!>-- LIQOUR CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_liquor", Config.Liquor, 1.2, 0.5, {
    name="bb_liquor",
    heading=228.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:LiquorMenu",
            icon = Language['liquoricon'], 
            label = Language['liquorlabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent("boii-billiardsbar:client:PullLiquor", function(args)
    local player = PlayerPedId()
    if args == 1 then
        Core.Functions.Progressbar("bb_pullwhiskey", Language['pullingliquor'], Config.PullLiquorTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_shot_glass",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
	        TriggerServerEvent('boii-billiardsbar:server:AddItem', 'glass_whiskey', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledliquor'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 2 then
        Core.Functions.Progressbar("bb_pullrum", Language['pullingliquor'], Config.PullLiquorTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_shot_glass",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'glass_rum', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledliquor'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 3 then
        Core.Functions.Progressbar("bb_pullvodka", Language['pullingliquor'], Config.PullLiquorTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@clubhouse@bar@drink@one",
            anim = "one_bartender",
            flags = 8,
        }, {
            model = "prop_shot_glass",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'glass_vodka', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['pulledliquor'], 'success')
            ClearPedTasks(player)
        end)
    end    
end)
--<!>-- LIQUOR CODE END --<!>--

--<!>-- HOT DRINKS CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_hotdrinks", Config.HotDrinks, 1.3, 0.7, {
    name="bb_hotdrinks",
    heading=229.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:HotDrinksMenu",
            icon = Language['hotdrinksicon'], 
            label = Language['hotdrinkslabel'],
			job = JobName,
        },
    },
    distance = 1.0
})

RegisterNetEvent("boii-billiardsbar:client:HotDrinks", function(args)
    local player = PlayerPedId()
    if args == 1 then
        Core.Functions.Progressbar("bb_makecoffee", Language['makehot'], Config.HotDrinksTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "amb@world_human_drinking@beer@female@base",
            anim = "base",
        }, {
            model = "v_res_mcofcup",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cupcoffee', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['madehot'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 2 then
        Core.Functions.Progressbar("bb_maketea", Language['makehot'], Config.HotDrinksTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "amb@world_human_drinking@beer@female@base",
            anim = "base",
        }, {
            model = "v_res_mcofcup",
            bone = 28422,
            coords = vector3(-0.005, 0.00, 0.00),
            rotation = vector3(175.0, 160.0, 0.0),
        }, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cuptea', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['madehot'], 'success')
            ClearPedTasks(player)
        end)
    end    
end)
--<!>-- HOT DRINKS CODE END --<!>--

--<!>-- MICROWAVE CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_microwave", Config.Microwave, 1.2, 0.5, {
    name="bb_microwave",
    heading=229.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:MicrowaveMenu",
            icon = Language['microwaveicon'], 
            label = Language['microwavelabel'],
			job = JobName,
        },
    },
    distance = 1.0
})

RegisterNetEvent("boii-billiardsbar:client:MicrowaveFood", function(args)
    local player = PlayerPedId()
    if args == 1 then
        Core.Functions.Progressbar("bb_cookcheesepie", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
	        TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedcheesepie', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 2 then
        Core.Functions.Progressbar("bb_cookmeatpie", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedmeatpie', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 3 then
        Core.Functions.Progressbar("bb_cooksteakpie", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedsteakpie', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 4 then
        Core.Functions.Progressbar("bb_cookchickenpie", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedchickenpie', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 5 then
        Core.Functions.Progressbar("bb_cookburger", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedmwburger', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 6 then
        Core.Functions.Progressbar("bb_cookcburger", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedmwcburger', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    elseif args == 7 then
        Core.Functions.Progressbar("bb_cookbcburger", Language['microwavefood'], Config.MicrowaveTime, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@supervising@",
            anim = "think_01_hi_amy_skater_01",
            flags = 49,
        }, {}, {}, function()
            TriggerServerEvent('boii-billiardsbar:server:AddItem', 'cookedmwbcburger', 1)
            TriggerEvent('boii-billiardsbar:notifications', Language['mademicrowave'], 'success')
            ClearPedTasks(player)
        end)
    end    
end)
--<!>-- MICROWAVE CODE START --<!>--

--<!>-- EPOS CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_pay", Config.Pay, 1.5, 1.0, {
    name="bb_pay",
    heading=143.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:BilliardsPay",
            icon = Language['payicon'], 
            label = Language['paylabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent("boii-billiardsbar:client:BilliardsPay", function()
    local input = exports[InputName]:ShowInput({
        header = Language['paymenuheader'],
        submitText = Language['paymenuheadertext'],
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = Language['paytext']
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = Language['payamount'],
            }
        }
    })
    if input then
        if not input.id or not input.amount then return end
        TriggerServerEvent("boii-billiardsbar:server:BilliardsPay", input.id, input.amount)
    end
end)
--<!>-- EPOS CODE START --<!>--

--<!>-- OUTFITS CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_outfits", Config.Outfits, 1.5, 1.5, {
    name="bb_outfits",
    heading= 145.32,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billardsbar:client:ChangeOutfit",
            icon = Language['outfiticon'], 
            label = Language['outfitlabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent('boii-billardsbar:client:ChangeOutfit', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.4)
    TriggerEvent(ClothingEvent)
end)
--<!>-- OUTFITS CODE END --<!>--

--<!>-- JOB STORE CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_store", Config.Store, 1.5, 1.0, {
    name="bb_store",
    heading=230.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:OpenShop",
            icon = Language['shopicon'], 
            label = Language['shoplabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent('boii-billiardsbar:client:OpenShop')
AddEventHandler('boii-billiardsbar:client:OpenShop', function()
    local ShopItems = {}
    ShopItems.label = Language['jobstorelabel']
    ShopItems.items = Config.ShopItems
    ShopItems.slots = #Config.ShopItems
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "bbshop", ShopItems)
end) 
--<!>-- JOB STORE CODE END --<!>--

--<!>-- STORAGE CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_storage", Config.Storage, 1.5, 1.5, {
    name="bb_storage",
    heading= 323.50,
    debugPoly=false,
    minZ=12.66,
    maxZ=14.64
    }, {
    options = {
        {
            event = "boii-billardsbar:client:JobStorage",
            icon = Language['storageicon'], 
            label = Language['storagelabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
RegisterNetEvent("boii-billardsbar:client:JobStorage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "billiardsstorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "billiardsstorage", {
        maxweight = 1000000,
        slots = 41,
    })
end)
--<!>-- STORAGE CODE END --<!>--

--<!>-- SNAKE CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_snake", Config.Snake, 1.5, 1.5, {
    name="bb_snake",
    heading=52.50,
    debugPoly=false,
    minZ=12.55,
    maxZ=14.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:SnakeMenu",
            icon = Language['snakeicon'], 
            label = Language['snakelabel'],
			job = JobName,
        },
    },
    distance = 1.0
})
--<!>-- SNAKE END --<!>--


--<!>-- GARAGE CODE START --<!>--
exports[TargetName]:AddBoxZone("bb_garage", Config.Garage, 6.8, 10.0, {
    name="bb_garage",
    heading=45.50,
    debugPoly=false,
    minZ=11.55,
    maxZ=15.55
    }, {
    options = {
        {
            event = "boii-billiardsbar:client:GarageMenu",
            icon = Language['garageicon'], 
            label = Language['garagelabel'],
			job = JobName,
        },
    },
    distance = 10.0
})

RegisterNetEvent('boii-billiardsbar:client:ReturnVehicle', function()
	local player = PlayerPedId()
	if IsPedInAnyVehicle(player) then
        local van = GetVehiclePedIsIn(player,true) 
        Core.Functions.DeleteVehicle(van)
        SetEntityCoords(player, Config.VehicleSpawn.x, Config.VehicleSpawn.y, Config.VehicleSpawn.z, 0, 0, 0, false) 
        SetEntityHeading(player, Config.VehicleSpawnHeading)
        TriggerServerEvent('boii-billiardsbar:server:ReturnDeposit')
	end
end)
--<!>-- GARAGE CODE END --<!>--

--<!>-- EAT PIE CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:EatPie', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_eatpie", Language['eatpie'], Config.EatPieTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_eating_donut@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cs_burger_01",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent(MetaDataEvent, "hunger", Core.Functions.GetPlayerData().metadata["hunger"] + FoodType[itemName])
        TriggerServerEvent(RemoveStress, Config.PieStress)
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        ClearPedTasks(player)
    end)
end)
--<!>-- EAT PIE CODE END --<!>--

--<!>-- EAT BURGER CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:EatBurger', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_eatburger", Language['eatburger'], Config.EatBurgerTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_eating_donut@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cs_burger_01",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "hunger", Core.Functions.GetPlayerData().metadata["hunger"] + FoodType[itemName])
        TriggerServerEvent(RemoveStress, Config.BurgerStress)
        ClearPedTasks(player)
    end)
end)
--<!>-- EAT BURGER CODE END --<!>--


--<!>-- DRINK BEER CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:DrinkBeer', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinkpint", Language['drinkbeer'], Config.DrinkBeerTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.10),
        rotation = vector3(175.0, 185.0, 0.05),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + Config.Alcohol[itemName])
        TriggerServerEvent(RemoveStress, Config.BeerStress)
        ClearPedTasks(player)
        alcoholCount = alcoholCount + 1
        if alcoholCount > LightBeerAmount and alcoholCount < HeavyBeerAmount then
            LightDrunkEffect()
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= HeavyBeerAmount then
            HeavyDrunkEffect()
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
        end
    end, function()
        TriggerEvent('boii-billiardsbar:notifications', Language['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)
--<!>-- DRINK BEER CODE END --<!>--

--<!>-- DRINK LIQUOR CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:DrinkLiquor', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinkliquor", Language['drinkliquor'], Config.DrinkLiquorTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_shot_glass",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.01),
        rotation = vector3(175.0, 185.0, 0.05),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + AlcoholType[itemName])
        TriggerServerEvent(RemoveStress, Config.LiquorStress)
        ClearPedTasks(player)
        alcoholCount = alcoholCount + 1
        if alcoholCount > LightLiquorAmount and alcoholCount < HeavyLiquorAmount then
            LightDrunkEffect()
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= HeavyLiquorAmount then
            HeavyDrunkEffect()
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
        end
    end, function()
        TriggerEvent('boii-billiardsbar:notifications', Language['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)
--<!>-- DRINK LIQUOR CODE START --<!>--

--<!>-- DRINK COCKTAILS CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:DrinkCocktail', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinkliquor", Language['drinkcocktail'], Config.DrinkCocktailTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cocktail_glass",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + AlcoholType[itemName])
        TriggerServerEvent(RemoveStress, Config.CocktailStress)
        ClearPedTasks(player)
        alcoholCount = alcoholCount + 1
        if alcoholCount > LightCocktailAmount and alcoholCount < HeavyCocktailAmount then
            LightDrunkEffect()
            TriggerEvent(EvidenceEvent, "alcohol", 200)
        elseif alcoholCount >= HeavyCocktailAmount then
            HeavyDrunkEffect()
            TriggerEvent(EvidenceEvent, "heavyalcohol", 200)
        end
    end, function()
        TriggerEvent('boii-billiardsbar:notifications', Language['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)
--<!>-- DRINK COCKTAILS CODE END --<!>--

--<!>-- HOT DRINKS CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:DrinkCoffee', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinkcoffee", Language['drinkcoffee'], Config.DrinkHotTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "v_res_mcofcup",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + DrinkType[itemName])
        TriggerServerEvent(RemoveStress, Config.HotDrinkStress)
        ClearPedTasks(player)
    end)
end)
RegisterNetEvent('boii-billiardsbar:client:DrinkTea', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinktea", Language['drinktea'], Config.DrinkHotTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "v_res_mcofcup",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + DrinkType[itemName])
        TriggerServerEvent(RemoveStress, Config.HotDrinkStress)
        ClearPedTasks(player)
    end)
end)
--<!>-- HOT DRINKS CODE END --<!>--

--<!>-- COLD DRINKS CODE START --<!>--
RegisterNetEvent('boii-billiardsbar:client:DrinkSprunk', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinksprunk", Language['drinksprunk'], Config.DrinkColdTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_ld_can_01",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + DrinkType[itemName])
        TriggerServerEvent(RemoveStress, Config.ColdDrinkStress)
        ClearPedTasks(player)
    end)
end)
RegisterNetEvent('boii-billiardsbar:client:DrinkCola', function(itemName)
    local player = PlayerPedId()
    Core.Functions.Progressbar("bb_drinkcola", Language['drinkcola'], Config.DrinkColdTime, false, true,{
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_drinking@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_ecola_can",
        bone = 28422,
        coords = vector3(-0.005, 0.00, -0.05),
        rotation = vector3(175.0, 185.0, 0.0),
    }, {}, function()
        TriggerServerEvent("qb-smallresources:server:RemoveItem", itemName, 1)
        TriggerServerEvent(MetaDataEvent, "thirst", Core.Functions.GetPlayerData().metadata["thirst"] + DrinkType[itemName])
        TriggerServerEvent(RemoveStress, Config.ColdDrinkStress)
        ClearPedTasks(player)
    end)
end)
--<!>-- COLD DRINKS CODE END --<!>--