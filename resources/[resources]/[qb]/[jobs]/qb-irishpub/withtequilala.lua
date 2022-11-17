--- ## QB Shared IF YOU USING QB-TEQULALA(QUA) JUST ONLY ADD THİS ITEMS 

['cheese'] 			    	= {['name'] = 'cheese', 			        ['label'] = 'Cheese', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cheese.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cheese'},	
['nuts'] 			    	= {['name'] = 'nuts', 			            ['label'] = 'Nuts', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'nuts.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nuts'},	
['bacon'] 			    	= {['name'] = 'bacon', 			            ['label'] = 'Bacon', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bacon.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bacon'},
['irishsandvic'] 			= {['name'] = 'irishsandvic', 			    ['label'] = 'Irish Sandvic', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'irishsandvic.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Irish Sandvic'},		
-- Coffee
['americano'] 			    = {['name'] = 'americano', 			        ['label'] = 'Americano', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'americano.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Americano'},		

--- Irish Beer
['50clbeerguinness'] 	    = {['name'] = '50clbeerguinness', 			['label'] = '50 Cl Guinness Beer', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeerguinness.png', ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Guinness Beer'},	
['50clbeermurphy'] 			= {['name'] = '50clbeermurphy', 			['label'] = '50 Cl Murphy', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeermurphy.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Murphy'},	
['50clbeermurphyred'] 	    = {['name'] = '50clbeermurphyred', 			['label'] = '50 cl Murphy Red',         ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeermurphyred.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Murphy Red'},	
['50clbeeririshscout'] 	    = {['name'] = '50clbeeririshscout', 		['label'] = '50 Cl Irish Scout', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeeririshscout.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Irish Scout'},	
['50clbeersmithwick'] 	    = {['name'] = '50clbeersmithwick', 			['label'] = '50 Cl Smithwick’s Ale', 	['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeersmithwick.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Smithwick’s Ale'},	

-- Irish Whiskey 

['dead_rabbit_irish'] 		= {['name'] = 'dead_rabbit_irish', 	    ['label'] = 'Dead Rabbit Irish', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'dead_rabbit_irish.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Dead Rabbit Irish'},	
['tullamoredew'] 			= {['name'] = 'tullamoredew', 	        ['label'] = 'Tullamore D.E.W.', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'tullamoredew.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Tullamore D.E.W.'},	
['redbreast15year'] 		= {['name'] = 'redbreast15year', 	    ['label'] = 'Redbreast 15 Year', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'redbreast15year.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Redbreast 15 Year'},	
['bushmillsoriginal'] 		= {['name'] = 'bushmillsoriginal', 	    ['label'] = 'Bushmills Original', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bushmillsoriginal.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Bushmills Original'},	


--## Boss Menu Install
--- qb-bossmenu/config.lua

['irishpub'] = vector3(0, 0, -500)


-- Add This Qb-Smallresources Config It doesn't have to look like this, just add it under your own stuff.
ConsumeablesAlcohol = {
    ["50clbeerguinness"] = math.random(20, 40),
    ["50clbeermurphy"] = math.random(20, 40),
    ["50clbeermurphyred"] = math.random(20, 40),
    ["50clbeeririshscout"] = math.random(20, 40),
    ["50clbeersmithwick"] = math.random(20, 40),
    ["dead_rabbit_irish"] = math.random(20, 40),
    ["tullamoredew"] = math.random(20, 40),
    ["redbreast15year"] = math.random(20, 40),
    ["bushmillsoriginal"] = math.random(20, 40),
    ["1cupwhiskey"] = math.random(20, 40),
    ["1cupwine"] = math.random(20, 40),
    ["1cupvodka"] = math.random(20, 40),        
    ["1cuprum"] = math.random(20, 40),  
    ["1cupgin"] = math.random(20, 40),  
    ["1cuptequila"] = math.random(20, 40),  
}

ConsumeablesEat = {
    ["irishsandvic"] = math.random(20, 40),  
}

ConsumeablesDrinks = {
    ["americano"] = math.random(20, 40),  
}


--- Add qb-smallresouces server consumable 
-- New Irish Items

QBCore.Functions.CreateUseableItem("50clbeerguinness", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("50clbeermurphy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("50clbeermurphyred", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("50clbeeririshscout", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("50clbeersmithwick", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("1cuprum", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("1cupvodka", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("1cupwine", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupWhiteWineGlass", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("1cupwhiskey", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("dead_rabbit_irish", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("tullamoredew", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("redbreast15year", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bushmillsoriginal", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end
    
end)
QBCore.Functions.CreateUseableItem("1cupgin", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("1cuptequila", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)


--##Eats

QBCore.Functions.CreateUseableItem("irishsandvic", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

--##Drinks 

QBCore.Functions.CreateUseableItem("americano", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
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