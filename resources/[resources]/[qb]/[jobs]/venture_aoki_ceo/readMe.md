Venture Aoki CEO Job by Romoy

**Installation**

(1) Add Items to qb-core/shared/items.lua

```lua
['rice']                  = {['name'] = 'rice',                        ['label'] = 'Rice',                     ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'f_ricenoodle.png',                          ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Rice Ingredient'},
['seaweed']                       = {['name'] = 'seaweed',                             ['label'] = 'Sea Weed',                           ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'seed_weed.png',                  ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Sea Weed from under the sea'},
['veggies']                       = {['name'] = 'veggies',                       	   ['label'] = 'Veggies',                     		 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'veggy-salad.png',                 		['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Veggies'},
['noodles']                 = {['name'] = 'noodles',                       ['label'] = 'Noodles',                    ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_rr_cock_box.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Noodles'},
['broth']                       	  = {['name'] = 'broth',                       			   ['label'] = 'Broth',                     			 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'bowl.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Broth'},
['healingleaf']                       	 	  = {['name'] = 'healingleaf',                       			   ['label'] = 'Healing Leaf',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'coca_leaf.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Healing Leaf'},
['beef']                       	 	  = {['name'] = 'beef',                       			   ['label'] = 'Beef',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'raw_beef.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Beef'},
['dough']                       	 	  = {['name'] = 'dough',                       			   ['label'] = 'Dough',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_ketamine_powder.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Dough'},
['sake']                       	 	  = {['name'] = 'sake',                       			   ['label'] = 'Sake',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_honest_wine.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Sake'},
['ramen']                       	 	  = {['name'] = 'ramen',                       			   ['label'] = 'Ramen',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_ramen.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ramen'},
['sushi']                       	 	  = {['name'] = 'sushi',                       			   ['label'] = 'Sushi',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_sushi-plate.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Sushi'},
['greentea']                       	 	  = {['name'] = 'greentea',                       			   ['label'] = 'Green Tea',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_tealeaves.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Green Tea'},
['gyoza']                       	 	  = {['name'] = 'gyoza',                       			   ['label'] = 'Gyoza',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'np_sushi-rolls.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Gyoza'},
['alcohol']                       	 	  = {['name'] = 'alcohol',                       			   ['label'] = 'Alcohol Ingredient',                     			 	 ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'bottle_acid.png',                				['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Alcohol Ingredient'},
```

(2) Add images to qb-inventory/html/images

(3) Add to qb-smallresources/client.consumables.lua
```lua
RegisterNetEvent('aoki:client:Ramen', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('aramen', 'Gulping a Ramen Bowl', 3500, false, true, { -- Name | Label | Time | useWhileDead | canCancel
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesEat[itemName])
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumablesEat[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancelled...', 'error', 7500)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        return
    end)
end)
```

(4) Add to qb-smallresources/server/consumables.lua
```lua
QBCore.Functions.CreateUseableItem("sake", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)


QBCore.Functions.CreateUseableItem("gyoza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)


QBCore.Functions.CreateUseableItem("sushi", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)


QBCore.Functions.CreateUseableItem("ramen", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)


QBCore.Functions.CreateUseableItem("greentea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
```

(5) Add to qb-smallresources/config.lua

```lua
ConsumablesEat = {
    ["gyoza"] = math.random(40, 50),
    ["sushi"] = math.random(30, 50),
    ["ramen"] = math.random(40, 60),
}

ConsumablesDrink = {
     ["sake"] = math.random(31, 40),
    ["greentea"] = math.random(25, 40),
}
```