**STARBUCKS SCRIPT BY ROMOY**

**INSTALLATION**
(1) Add this to qb-core/shared/jobs.lua
["starbucks"] = {
        label = "Starbucks",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "Cashier",
                 payment = 50
            },
            ['1'] = {
                name = "Server",
                payment = 75
            },
            ['2'] = {
                name = "Chef",
                payment = 100
            },
            ['3'] = {
                name = "Manager",
                payment = 125,
                isboss = true,
            },
            ['4'] = {
                name = "CEO",
                isboss = true,
                payment = 150
            },
        },       
    },

(2) Add this to qb-core/shared/items.lua
--Starbucks CEO by Romoy
['blackcoffeebeans']                  = {['name'] = 'blackcoffeebeans',                        ['label'] = 'Black Coffee Beans',                     ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'blackcoffeebeans.png',                          ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Black Coffee Beans'},
['blackcoffee']                       = {['name'] = 'blackcoffee',                             ['label'] = 'Black Coffee',                           ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'blackcoffee.png',                  ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Black Coffee Beans'},
['frappuccino']                       = {['name'] = 'frappuccino',                       	   ['label'] = 'Frappuccino',                     		 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'frappuccino.png',                 		['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Frappuccino'},
['breakfastsandwich']                 = {['name'] = 'breakfastsandwich',                       ['label'] = 'Break Fast Sandwich',                    ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'breakfastsandwich.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Break Fast Sandwich'},
['bread']                       	  = {['name'] = 'bread',                       			   ['label'] = 'Bread',                     			 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'breakfastsandwich.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Bread'},
['eggs']                       	 	  = {['name'] = 'eggs',                       			   ['label'] = 'Eggs',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'eggs.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Eggs'},

(3) Add items to qb-inventory/html/images

(4) Add to qb-smallresources/client/consumables.lua
```lua
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
```

(5) Add to qb-smallresources/server/consumables.lua
```lua
QBCore.Functions.CreateUseableItem("breakfastsandwich", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("blackcoffee", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("frappuccino", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
```

(6) Add to qb-smallresources/config.lua
```lua
ConsumablesEat = {
    ["breakfastsandwich"] = math.random(40, 60),
}
    

ConsumeablesDrink = {
        ["blackcoffee"] = math.random(40, 60),
        ["frappuccino"] = math.random(40, 60),
    }
```

(8) Adjust locations in zones.lua as well as cl_main.lua at the bottom where function vonCeoZones() exists
