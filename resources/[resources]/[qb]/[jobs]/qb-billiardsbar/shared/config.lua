----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core info settings you can ignore these if you have not edited any core functions in your city
Config.Core = 'QBCore' -- The name of your core. Default; QBCore
Config.CoreFolder = 'qb-core' -- The name of your core folder. Default; qb-core
Config.TargetName = 'qb-target' -- The name of your third eye targeting. Default; qb-target
Config.MenuName = 'qb-menu' -- The name of your menu. Default; qb-target
Config.InputName = 'qb-input' -- The name of your input menu for billing. Default; qb-input
Config.DutyEvent = 'QBCore:ToggleDuty' -- The name of your on duty event default; QBCore:ToggleDuty
Config.FuelEvent = 'qb-fuel' -- The name of your fuel event. Default; LegacyFuel
Config.ItemCheckEvent = 'QBCore:HasItem' -- The name of your item check event. Default; 'QBCore:HasItem'
Config.MetaDataEvent = 'QBCore:Server:SetMetaData' -- The name of your set metadata event. Default; 'QBCore:Server:SetMetaData'
Config.PhoneEvent = 'qb-phone:RefreshPhone' -- The name of your phone event this is needed for billing. Default; 'qb-phone:RefreshPhone'
Config.ClothingEvent = 'qb-clothing:client:openOutfitMenu' -- The name of your clothing event this is needed to open outfit menu. Default; 'qb-clothing:client:OpenOutfitMenu'
Config.RemoveStress = 'hud:server:RelieveStress' -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
Config.EvidenceEvent = 'evidence:client:SetStatus' -- Event to set drunk evidence status for police. Default; 'evidence:client:SetStatus'
Config.VehicleKeysEvent = 'vehiclekeys:client:SetOwner' -- Event to set vehicle keys. Default; 'vehiclekeys:client:SetOwner'
-- Blips
Config.Blips = {
	{title="Billiards Bar", colour=5, id=52, x = -1596.43, y = -991.23, z = 48.66},
}
-- Job & item settings
Config.JobName = 'billiards' -- Job name in your shared.lua
Config.SnakeFoodItem = 'livemouse' -- Item required to feed snake to remove stress
-- Timers
Config.PullPintTime = math.random(5500,7500) -- Time in (ms) to pull pints
Config.CocktailTime = math.random(6500,9500) -- Time in (ms) to mix cocktails
Config.PullLiquorTime = math.random(5500,7500) -- Time in (ms) to pull pints
Config.HotDrinksTime = math.random(5500,7500) -- Time in (ms) to pour hot drinks
Config.MicrowaveTime = math.random(5500,7500) -- Time in (ms) to microwave food
Config.SnakeFoodTime = math.random(5000,7500) -- Time in (ms) collect snake food
Config.SnakeFeedTime = math.random(5000,7500) -- Time in (ms) feed snake
Config.EatPieTime = math.random(3000,5500) -- Time in (ms) to eat pies
Config.EatBurgerTime = math.random(3000,5500) -- Time in (ms) to eat burgers
Config.DrinkBeerTime = math.random(3000,5500) -- Time in (ms) to drink pints of beer
Config.DrinkLiquorTime = math.random(3000,5500) -- Time in (ms) to drink glasses of liquor
Config.DrinkCocktailTime = math.random(3000,5500) -- Time in (ms) to drink cocktails
Config.DrinkHotTime = math.random(3000,5500) -- Time in (ms) to drink hot drinks
Config.DrinkColdTime = math.random(3000,5500) -- Time in (ms) to drink hot drinks
Config.LightDrunkTime = 30 -- Time in (seconds) to stay drunk this is *10000 client side so 30 = 5 minutes, 60  = 10 minutes
Config.HeavyDrunkTime = 60 -- Time in (seconds) to stay drunk this is *10000 client side so 30 = 5 minutes, 60  = 10 minutes
-- Effects
Config.LightBeerAmount = 3 -- Amount of pints required before light drunk effects +1 so 4 pints to light drunk
Config.HeavyBeerAmount = 6  -- Amount of pints required before heavy drunk effects +1 so 7 pints to heavy drunk
Config.BeerStress = math.random(8,13) -- Amount of stress relived by drinking beer
Config.LightLiquorAmount = 2 -- Amount of pints required before light drunk effects +1 so 3 glasses of liquor to light drunk
Config.HeavyLiquorAmount = 5  -- Amount of pints required before heavy drunk effects +1 so 6 glasses of liquor to heavy drunk
Config.LiquorStress = math.random(9,15) -- Amount of stress relived by drinking liquor
Config.LightCocktailAmount = 1 -- Amount of pints required before light drunk effects +1 so 2 glasses of liquor to light drunk
Config.HeavyCocktailAmount = 3  -- Amount of pints required before heavy drunk effects +1 so 4 glasses of liquor to heavy drunk
Config.CocktailStress = math.random(13,22) -- Amount of stress relived by drinking liquor
Config.HotDrinkStress = math.random(8,11) -- Amount of stress relived by drunking coffee or tea
Config.ColdDrinkStress = math.random(8,11) -- Amount of stress relived by drinking kurkakola or sprunk
Config.PieStress = math.random(3,7) -- Amount of stress relived by eating pies
Config.BurgerStress = math.random(8,11) -- Amount of stress relived by eating burgers
Config.SnakeStress = math.random(1,5) -- Amount of stress relived by feeding snake
-- Location settings
Config.Duty = vector3(-1582.26, -986.95, 13.08) -- On duty location change heading in client
Config.Pay = vector3(-1586.82, -995.55, 13.08) -- Payment location change heading in client
Config.Store = vector3(-1585.51, -994.75, 13.08) -- Job store location change heading in client
Config.Pumps = vector3(-1583.47, -990.78, 13.08) -- Beer pumps location 1 change heading in client
Config.Pumps2 = vector3(-1584.25, -991.75, 13.08) -- Beer pumps location 2 change heading in client
Config.Pumps3 = vector3(-1585.04, -992.82, 13.08) -- Beer pumps location 3 change heading in client
Config.Liquor = vector3(-1583.8, -992.6, 13.08) -- Liqour pump location change heading in client
Config.Cocktails = vector3(-1584.45, -993.47, 13.08) -- Cocktails location change heading in client
Config.HotDrinks = vector3(-1583.32, -992.1, 13.08) -- Hot drinks location change heading in client
Config.Microwave = vector3(-1582.93, -991.6, 13.08) -- Microwave location change heading in client
Config.Outfits = vector3(-1581.88, -984.58, 13.08) -- Wardrobe location change heading in client
Config.Storage = vector3(-1574.71, -982.42, 13.08) -- Storage location change heading in client
Config.Snake = vector3(-1581.78, -980.52, 13.11) -- Snake location change heading in client
-- Cocktails settings
Config.LiquorAmount = 1 -- Amount of liquor to be removed when mixing cocktails
Config.IngredientAmount = 1 -- Amount of liquor to be removed when mixing cocktails
Config.IngredientAmount2 = 2 -- Amount of liquor to be removed when mixing cocktails
Config.IngredientAmount3 = 3 -- Amount of liquor to be removed when mixing cocktails
-- Vehicles
Config.Garage = vector3(-1592.13, -1009.59, 13.02) -- Vehicle polyzone to spawn/return vehicles adjust heading client side
Config.MoneyType = 'bank' -- Money type used for vehicle deposits
Config.CompanyVehicle = 'speedo' -- White widow company vehicle use any vehicle you want here
Config.VehicleDeposit = 100 -- Price to take out company van will return 50%
Config.VehicleSpawn = vector4(-1591.83, -1010.04, 13.02, 255.94) -- Vehicle spawn location
Config.VehicleSpawnHeading = 255.94 -- Vehicle spawn heading
-- Consumeables
Config.Alcohol = {
    ['pint_ambeer'] = math.random(23,42),
    ['pint_logger'] = math.random(23,42),
    ['pint_piswasser'] = math.random(23,42),
    ['pint_dusche'] = math.random(23,42),
    ['glass_whiskey'] = math.random(30, 55),
	['glass_rum'] = math.random(30, 55),
	['glass_vodka'] = math.random(30, 55),
    ['glass_whiskeycoke'] = math.random(30, 55),
    ['glass_rumlemon'] = math.random(30, 55),
	['glass_vodkalemon'] = math.random(30, 55),
	['irishcoffee'] = math.random(35, 60),
    ['whiskeysour'] = math.random(40, 70),
    ['whiskeysmash'] = math.random(40, 70),
    ['bloodandsand'] = math.random(40, 70),
    ['pinacolada'] = math.random(40, 70),
    ['zombie'] = math.random(40, 70),
    ['maitai'] = math.random(40, 70),
    ['appletini'] = math.random(40, 70),
    ['cosmopolitan'] = math.random(40, 70),
    ['bloodymary'] = math.random(40, 70),
}
Config.Food = {
    ["cookedcheesepie"] = math.random(20, 35),
	["cookedsteakpie"] = math.random(20, 35),
	["cookedmeatpie"] = math.random(20, 35),
	["cookedchickenpie"] = math.random(20, 25),
    ["cookedmwburger"] = math.random(25, 35),
    ["cookedmwcburger"] = math.random(25, 35),
    ["cookedmwbcburger"] = math.random(25, 35),
}
Config.Drink = {
    ['kurkakola'] = math.random(15,23),
    ['sprunk'] = math.random(15,23),
    ['cuptea'] = math.random(30,43),
    ['cupcoffee'] = math.random(30,43),
}
-- Shops
Config.ShopItems = {
    [1] = { name = 'pintglass',     price = 1,    amount = 100, info = {}, type = "item", slot = 1 }, -- Required
    [2] = { name = 'cocktailglass', price = 1,    amount = 100, info = {}, type = "item", slot = 2 }, -- Required
    [3] = { name = 'smallglass',    price = 1,    amount = 100, info = {}, type = "item", slot = 3 }, -- Required
    [4] = { name = 'wineglass',     price = 1,    amount = 100, info = {}, type = "item", slot = 4 }, -- Required
    [5] = { name = 'emptycup',      price = 1,    amount = 100, info = {}, type = "item", slot = 5 }, -- Required
    [6] = { name = 'kurkakola',     price = 1,    amount = 100, info = {}, type = "item", slot = 6 }, -- Required; QBCore base item you should have this already
    [7] = { name = 'sprunk',        price = 1,    amount = 100, info = {}, type = "item", slot = 7 }, -- Required
    [8] = { name = 'orange',        price = 1,    amount = 100, info = {}, type = "item", slot = 8 }, -- Required
    [9] = { name = 'tomato',        price = 1,    amount = 100, info = {}, type = "item", slot = 9 }, -- Required
    [10] = { name = 'apple',        price = 1,    amount = 100, info = {}, type = "item", slot = 10 }, -- Required
    [11] = { name = 'cherry',       price = 1,    amount = 100, info = {}, type = "item", slot = 11 }, -- Required
    [12] = { name = 'lime',         price = 1,    amount = 100, info = {}, type = "item", slot = 12 }, -- Required
    [13] = { name = 'pineapple',    price = 1,    amount = 100, info = {}, type = "item", slot = 13 }, -- Required
    [14] = { name = 'coconut',      price = 1,    amount = 100, info = {}, type = "item", slot = 14 }, -- Required
    [15] = { name = 'lemon',        price = 1,    amount = 100, info = {}, type = "item", slot = 15 }, -- Required
    [16] = { name = 'cranberry',    price = 1,    amount = 100, info = {}, type = "item", slot = 16 }, -- Required
    [17] = { name = 'steakpie',     price = 1,    amount = 100, info = {}, type = "item", slot = 17 }, -- Required
    [18] = { name = 'cheesepie',    price = 1,    amount = 100, info = {}, type = "item", slot = 18 }, -- Required
    [19] = { name = 'meatpie',      price = 1,    amount = 100, info = {}, type = "item", slot = 19 }, -- Required
    [20] = { name = 'chickenpie',   price = 1,    amount = 100, info = {}, type = "item", slot = 20 }, -- Required
    [21] = { name = 'mwburger',     price = 1,    amount = 100, info = {}, type = "item", slot = 21 }, -- Required
    [22] = { name = 'mwcburger',    price = 1,    amount = 100, info = {}, type = "item", slot = 22 }, -- Required
    [23] = { name = 'mwbcburger',   price = 1,    amount = 100, info = {}, type = "item", slot = 23 }, -- Required
}
