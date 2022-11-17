Config = {}
Config.Framework = "QBCore" -- QBCore... ESX isn't supported yet
Config.UsingOldESX = false -- Set true if you still using the getSharedObject event from old ESX versions
Config.TargetSystem = "qb-target" -- qb-target, bt-target, qtarget
Config.Command = "restaurant" -- Used to create new zones
Config.AdminLevel = "admin" -- Permission level needed to use command
Config.DeleteZoneDistance = 15 -- Distance needed between you and the zone you want to delete
Config.Icons = { -- Icons are from: https://fontawesome.com/v5/search?m=free
    ['boss'] = "fas fa-laptop",
    ['cashier'] = {"fas fa-cash-register", "fas fa-credit-card"},
    ['drink'] = "fas fa-glass-whiskey",
    ['food'] = "fas fa-utensils",
    ['joint'] = "fas fa-cannabis",
    ['others'] = "fas fa-box",
    ['stash'] = "fas fa-box-open",
    ['tray'] = "fas fa-box-open",
}
Config.Label = {
    ['boss'] = "Boss",
    ['cashier'] = {"Charge Customer", "Pay"},
    ['drink'] = "Drinks",
    ['food'] = "Food",
    ['joint'] = "Joints",
    ['others'] = "Others",
    ['stash'] = "Stash",
    ['tray'] = "Tray",
}

-- Items, Stash and Tray Weights
Config.ItemsWeight = {
    ['drink'] = 1000, -- 1kg
    ['food'] = 1000, -- 1kg
    ['joint'] = 1000, -- 1kg
    ['others'] = 1000, -- 1kg
}
Config.StashWeight = 500000 -- Stash Weight (500kg)
Config.StashSlots = 50 -- Stash Item Slots
Config.TrayWeight = 50000 -- Tray Weight (50kg)
Config.TraySlots = 10 -- Tray Item Slots

-- Crafting Options
Config.CraftingTime = 5000 -- 5 seconds
Config.CraftingDict = "anim@amb@business@coc@coc_unpack_cut@" -- Animation dictionary
Config.CraftAnimation = "fullcut_cycle_v6_cokecutter" -- Animation

-- Eat, Drink and Smoke
Config.EatAnimDuration = 3000 -- 3 seconds, eating animation
Config.DrinkAnimDuration = 3000 -- 3 seconds, drinking animation
Config.JointAnimDuration = 10000 -- 10 seconds, smoking animation
Config.EatValue = 50 -- How many hunger points will the food add to player // ESX Status uses crazy values like 500000
Config.DrinkValue = 50 -- How many thirst points will the food add to player // ESX Status uses crazy values like 500000
Config.JointValue = 50 -- How many stress points will the joint remove from player // ESX Status uses crazy values like 500000

-- ESX Inventory Config
Config.ESXInventory = 'default'
--[[ 
    'default' = Default ESX inventory, 
    'ox_inventory' = https://github.com/overextended/ox_inventory
	'mf-inventory' = https://modit.store/products/mf-inventory
    'qs-inventory' = https://www.quasar-store.com/package/4770732
]]--