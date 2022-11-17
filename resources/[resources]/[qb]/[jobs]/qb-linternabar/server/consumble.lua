QBCore = exports[Config.Events.QBCoreExport]:GetCoreObject()


--Nachos Chips 

QBCore.Functions.CreateUseableItem("ll_nacho_mexidip", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatPlate", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_nacho_mucho_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatPlate", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_nacho_mucho_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatPlate", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_chips_guac", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatPlate", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_chips_queso", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatPlate", src, item.name)
    end
end)
-- Tachos
QBCore.Functions.CreateUseableItem("ll_taco_crispy_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_crispy_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_soft_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_soft_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_muchaco_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_muchaco_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_bigfreak_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_taco_bigfreak_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatTaco", src, item.name)
    end
end)

-- Burritos
QBCore.Functions.CreateUseableItem("ll_burrito_bueno_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_bueno_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_bigfreak_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_bigfreak_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_bean", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_combo", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_potato_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_burrito_potato_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_quesa_beef", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_quesa_chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("ll_quesa_cheese", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:EatBurrito", src, item.name)
    end
end)

--Drinks 
QBCore.Functions.CreateUseableItem("ll_drink_cola", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:DrinkPet", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ll_drink_sprunk", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:DrinkPet", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ll_lemonade", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:DrinkPet", src, item.name)
    end
end)

-- Coffee
QBCore.Functions.CreateUseableItem("ll_espresso", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:DrinkCoffee", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ll_americano", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:DrinkCoffee", src, item.name)
    end
end)

--- Combo Menus
QBCore.Functions.CreateUseableItem("ll_combo_menu_beef", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_muchaco_beef", 1)
        Player.Functions.AddItem("ll_taco_crispy_beef", 1)
        Player.Functions.AddItem("ll_burrito_bueno_beef", 1)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)

QBCore.Functions.CreateUseableItem("ll_combo_menu_chicken", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_muchaco_chicken", 1)
        Player.Functions.AddItem("ll_taco_crispy_chicken", 1)
        Player.Functions.AddItem("ll_burrito_bueno_chicken", 1)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)

QBCore.Functions.CreateUseableItem("ll_combo_menu1_beef", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_crispy_beef", 3)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)

QBCore.Functions.CreateUseableItem("ll_combo_menu1_chicken", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_crispy_chicken", 3)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)

QBCore.Functions.CreateUseableItem("ll_combo_menu2_beef", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_crispy_beef", 1)
        Player.Functions.AddItem("ll_nacho_mucho_beef", 1)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)

QBCore.Functions.CreateUseableItem("ll_combo_menu2_chicken", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_crispy_chicken", 1)
        Player.Functions.AddItem("ll_nacho_mucho_chicken", 1)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)

QBCore.Functions.CreateUseableItem("ll_combo_menu3", function(source, item) 
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("qua-lalinterna:consumables:client:OpenTaco",source,item.name)
        TriggerClientEvent(Config.Events.ServerNotifyEvent, source, "Package Opened")
        Player.Functions.AddItem("ll_taco_crispy_beef", 1)
        Player.Functions.AddItem("ll_quesa_chicken", 1)
        Player.Functions.AddItem("ll_drink_cola", 1)
    end
end)
