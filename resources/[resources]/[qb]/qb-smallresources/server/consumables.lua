QBCore = exports['qb-core']:GetCoreObject()

-- CIGARETTES

-- Create the cigarette pack
QBCore.Functions.CreateUseableItem("redwoodcigs", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('cigarettes:client:UseCigPack', src, item)
end)

QBCore.Functions.CreateUseableItem("cardiaquecigs", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('cigarettes:client:UseCigPack', src, item)
end)

QBCore.Functions.CreateUseableItem("yukoncigs", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('cigarettes:client:UseCigPack', src, item)
end)

-- Create the cigarette
QBCore.Functions.CreateUseableItem("cigarette", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName("lighter") then
			if Player.Functions.RemoveItem(item.name, 1) then
				TriggerClientEvent("cigarettes:client:UseCigarette", src)
			end
    else 
        TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
    end
end)

-- Cigarette Pack Damage
RegisterNetEvent('cigarettes:server:RemoveCigarette', function(hp, data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if hp == 1 then
        Player.Functions.RemoveItem('redwoodcigs', 1, data.slot)
        TriggerClientEvent("cigarettes:client:removeCigPack")
    else
        Player.PlayerData.items[data.slot].info.uses = Player.PlayerData.items[data.slot].info.uses - 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

-- CUSTOM ITEMS

QBCore.Functions.CreateUseableItem("wingsuit_open",function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:UseWingsuit", source)
    end
end)

RegisterNetEvent('qb-smallpenis:server:AddWingsuit', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("wingsuit", 1)
end)

QBCore.Commands.Add("resetwingsuit", "Resets Parachute", {}, false, function(source)
	TriggerClientEvent("consumables:client:ResetWingsuit", source)
end)

QBCore.Functions.CreateUseableItem("pailandshovel",function(source, item)
    TriggerClientEvent("qb-sandcastles", source, item.name)
end)

-- RANDOM SHIT

QBCore.Functions.CreateUseableItem("slushy", function(source, item) -- prison slushy
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:slushy", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ifak",function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("consumables:client:UseiFak", source, item.name)
end)

QBCore.Functions.CreateUseableItem("adrenshot", function(source, item)
    local src = source
    TriggerClientEvent("consumables:client:adrenshot", src)
end)
-- CHAINS
QBCore.Functions.CreateUseableItem("slothchain", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:slothchain", src, item.name)
end)

--- GRAPPLE
QBCore.Functions.CreateUseableItem("grapplegun", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("mka-grapple:useGrapple", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("stopsign", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent("consumables:client:stopsign", source, item.name)
end)

QBCore.Functions.CreateUseableItem("taserammo", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("FillTaser", source)
    end
end) 

-- safe give item
QBCore.Functions.CreateUseableItem("safe", function(source, item) -- useable safe
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("robbery:usesafe", src, item.name)
end)

local ItemTable = {
    "pistol_ammo",
    "weapon_glock",
    "rolex",
    "bong",
    "cigarette",
}

RegisterNetEvent('qb-useablesafe:server:getItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for i = 1, math.random(1, 5), 1 do
        local randItem = ItemTable[math.random(1, #ItemTable)]
        local amount = math.random(1, 2)
        Player.Functions.AddItem(randItem, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add')


        Wait(500)
    end

    local chance = math.random(1, 100)
    if chance < 7 then
        Player.Functions.AddItem("laptop01", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["laptop01"], "add")
    end

    local Luck = math.random(1, 10)
    local Odd = math.random(1, 10)
    if Luck == Odd then
        local random = math.random(1, 3)
        Player.Functions.AddItem("meth", random)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["meth"], 'add')
    end
end)
-- end safe give item

----------- / alcohol

QBCore.Functions.CreateUseableItem("vodka", function(source, item)
    TriggerClientEvent("consumables:client:vodka", source, item.name)
end)

QBCore.Functions.CreateUseableItem("beer", function(source, item)
    TriggerClientEvent("consumables:client:beer", source, item.name)
end)

QBCore.Functions.CreateUseableItem("whiskey", function(source, item)
    TriggerClientEvent("consumables:client:Whiskey", source, item.name)
end)

----------- / Eat

QBCore.Functions.CreateUseableItem("sandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:sandwich", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("twerks_candy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:twerks_candy", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("snikkel_candy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:snikkel_candy", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("tosti", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:tosti", source, item.name)
    end
end)

----------- / Drink

QBCore.Functions.CreateUseableItem("water_bottle", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:coffee", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("kurkakola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:kurkakola", source, item.name)
    end
end)

----------- / Drug

QBCore.Functions.CreateUseableItem("joint", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:UseJoint", source)
    end
end)

QBCore.Functions.CreateUseableItem("cokebaggy", function(source)
    TriggerClientEvent("consumables:client:Cokebaggy", source)
end)

QBCore.Functions.CreateUseableItem("crack_baggy", function(source)
    TriggerClientEvent("consumables:client:Crackbaggy", source)
end)

QBCore.Functions.CreateUseableItem("xtcbaggy", function(source, _)
    TriggerClientEvent("consumables:client:EcstasyBaggy", source)
end)

QBCore.Functions.CreateUseableItem("oxy", function(source)
    TriggerClientEvent("consumables:client:oxy", source)
end)

QBCore.Functions.CreateUseableItem("meth", function(source)
    TriggerClientEvent("consumables:client:meth", source)
end)

----------- / Tools

QBCore.Functions.CreateUseableItem("armor", function(source)
    TriggerClientEvent("consumables:client:UseArmor", source)
end)

QBCore.Functions.CreateUseableItem("heavyarmor", function(source)
    TriggerClientEvent("consumables:client:UseHeavyArmor", source)
end)

QBCore.Commands.Add("resetarmor", "Resets Vest (Police Only)", {}, false, function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "police" then
        TriggerClientEvent("consumables:client:ResetArmor", source)
    else
        TriggerClientEvent('QBCore:Notify', source,  "For Police Officer Only", "error")
    end
end)

QBCore.Functions.CreateUseableItem("binoculars", function(source)
    TriggerClientEvent("binoculars:Toggle", source)
end)

QBCore.Functions.CreateUseableItem("parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:UseParachute", source)
    end
end)

QBCore.Commands.Add("resetparachute", "Resets Parachute", {}, false, function(source)
	TriggerClientEvent("consumables:client:ResetParachute", source)
end)

RegisterNetEvent('qb-smallpenis:server:AddParachute', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("parachute", 1)
end)

----------- / Firework

QBCore.Functions.CreateUseableItem("firework1", function(source, item)
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "proj_indep_firework")
end)

QBCore.Functions.CreateUseableItem("firework2", function(source, item)
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "proj_indep_firework_v2")
end)

QBCore.Functions.CreateUseableItem("firework3", function(source, item)
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "proj_xmas_firework")
end)

QBCore.Functions.CreateUseableItem("firework4", function(source, item)
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "scr_indep_fireworks")
end)

----------- / Lockpicking

QBCore.Functions.CreateUseableItem("lockpick", function(source)
    TriggerClientEvent("lockpicks:UseLockpick", source, false)
end)

QBCore.Functions.CreateUseableItem("advancedlockpick", function(source)
    TriggerClientEvent("lockpicks:UseLockpick", source, true)
end)

----------- / Unused

-- QBCore.Functions.CreateUseableItem("smoketrailred", function(source, item)
--     local Player = QBCore.Functions.GetPlayer(source)
-- 	if Player.Functions.RemoveItem(item.name, 1) then
--         TriggerClientEvent("consumables:client:UseRedSmoke", source)
--     end
-- end)

-- uwu start
--uwu

QBCore.Functions.CreateUseableItem("uwububbleteablueberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwububbletearose", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwububbleteamint", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwupancake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)  
    end
end)

QBCore.Functions.CreateUseableItem("uwucupcake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:donut", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwuvanillasandy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwuvanillasandy", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwuchocsandy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwuchocsandy", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwubudhabowl", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwubudhabowl", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwusushi", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("uwumisosoup", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:uwumisosoup", source, item.name) 
    end
end)
-- uwu end

QBCore.Functions.CreateUseableItem("burger-icecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name) 
    end
end)

QBCore.Functions.CreateUseableItem("burger-donut", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Donut", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-donutchoc", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Donut", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-donutcherry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Donut", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-donutlemon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Donut", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-donutglaze", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Donut", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-creampie", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Donut", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-chickennuggets", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-onionrings", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-fries", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Fries", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-meatfree", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-bleeder", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-moneyshot", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-torpedo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-heartstopper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-softdrink", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkSoda", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Coffee", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-milkshake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkSoda", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("topbanana", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("mimosa", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCupWhiteWineGlass", src, item.name)
    end 
end)

QBCore.Functions.CreateUseableItem("melonball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end   
end)


QBCore.Functions.CreateUseableItem("junglejim", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("sangria", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end) 

QBCore.Functions.CreateUseableItem("appleeden", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end) 

QBCore.Functions.CreateUseableItem("mojito", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("margarita", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end   
end)

QBCore.Functions.CreateUseableItem("sexonthebeach", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("julep", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end       
end)

QBCore.Functions.CreateUseableItem("33clbeer", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)


QBCore.Functions.CreateUseableItem("50clbeer", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)

---####If you using qua-tequilala after this line add

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

QBCore.Functions.CreateUseableItem("wine", function(source, item)
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

QBCore.Functions.CreateUseableItem('legacybox' , function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent('venture:legacy', src, item.name)
    end
end)


--Limeys
QBCore.Functions.CreateUseableItem("cherrycocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("applecocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("bananacocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("cherrydrink", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("kiwicocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("lemondrink", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("limedrink", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("orangedrink", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("paradisecocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("watermelondrink", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("limeysgum", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("limeyschocolate", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("limeyschocolate2", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("limeysdonut", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("limeysdonut2", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

-- [QB] Let's Cook! Food Items
QBCore.Functions.CreateUseableItem("lclemonlobster", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lccheeseburger", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcsausagedog", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcgumbo", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcoxtails", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcmaccheesy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lchotcakes", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcricebowl", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcramennoodle", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcquickpizza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcribs", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lclegquarter", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcsteak", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcgrillcorn", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcgrillveggies", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lctoast", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcpoptart", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcwaffle", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lctoasti", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lchamtoastie", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcfriedchicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lccheesesticks", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcfrenchfries", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lclambchops", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcfriedfish", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcsalmon", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcbstirfry", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcchickensand", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcbffriedrice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcckfriedrice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcapplesauce", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcnanacream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcberrycream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcchoccream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcbpudding", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Sandwich", src, item.name)
    end
end)

-- [QB] Let's Cook! Grocery Bags
QBCore.Functions.CreateUseableItem("grocerya", function(source, item) -- Grocery Bag A - Contains mostly Raw Meets, Raw Fish, Seasoning, Veggie Pack, etc.
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        Player.Functions.AddItem("lclobstertails", 1) -- You may change the numbers at the end to any amount that you want a player to receive when opening a grocery bag.
        Player.Functions.AddItem("lcbeefpatty", 1)
        Player.Functions.AddItem("lcrawbeef", 1)
        Player.Functions.AddItem("lcsausage", 2)
        Player.Functions.AddItem("lcrawribs", 1)
        Player.Functions.AddItem("lcrawchicken", 2)
        Player.Functions.AddItem("lchamslice", 2)
        Player.Functions.AddItem("lcbeefstrips", 1)
        Player.Functions.AddItem("lcrawbreast", 1)
        Player.Functions.AddItem("lcrawsalmon", 2)
        Player.Functions.AddItem("lcrawfish", 2)
        Player.Functions.AddItem("lcrawoxtail", 1)
        Player.Functions.AddItem("lcrawchops", 1)
        Player.Functions.AddItem("lcseasoning", 5)
        Player.Functions.AddItem("lcveggiepack", 5)        
    end
end)

QBCore.Functions.CreateUseableItem("groceryb", function(source, item) -- Grocery Bag B - Mostly Dairy, Fruits, Veggies, Flour, Sugar, Veg Oil, etc.
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        Player.Functions.AddItem("lcbutter", 3)
        Player.Functions.AddItem("lccheese", 3)
        Player.Functions.AddItem("lcmilk", 1)
        Player.Functions.AddItem("water_bottle", 10)
        Player.Functions.AddItem("lccreamer", 1)
        Player.Functions.AddItem("lcpudding", 2)
        Player.Functions.AddItem("lcicing", 1)
        Player.Functions.AddItem("lclemon", 1)
        Player.Functions.AddItem("lcgrapes", 1)
        Player.Functions.AddItem("lcorange", 1)
        Player.Functions.AddItem("lcbanana", 1)
        Player.Functions.AddItem("lcstrawberry", 3)
        Player.Functions.AddItem("lccorncob", 2)
        Player.Functions.AddItem("lcpotato", 2)
        Player.Functions.AddItem("lcdryrice", 1)
        Player.Functions.AddItem("lcvegoil", 1)
        Player.Functions.AddItem("lcsugar", 3)
        Player.Functions.AddItem("lcflour", 3)
        Player.Functions.AddItem("lcburgerbun", 3)
        Player.Functions.AddItem("lcbread", 3)
    end
end)

QBCore.Functions.CreateUseableItem("groceryc", function(source, item) -- Grocery Bag C - Contains Condiments, Drink Ingredients, Pancakes, Waffles, etc.
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1) then
        Player.Functions.AddItem("lcbbqsauce", 5)
        Player.Functions.AddItem("lcmarinara", 1)
        Player.Functions.AddItem("lcsyrup", 2)
        Player.Functions.AddItem("lcjelly", 2)
        Player.Functions.AddItem("lcpbutter", 2)
        Player.Functions.AddItem("lcpancakes", 1)
        Player.Functions.AddItem("lcfrozewaff", 1)
        Player.Functions.AddItem("lcfrozenpizza", 1)
        Player.Functions.AddItem("lccheestkpk", 2)
        Player.Functions.AddItem("lcptartpk", 2)
        Player.Functions.AddItem("lcvaniwafers", 1)
        Player.Functions.AddItem("lcmaccheese", 1)
        Player.Functions.AddItem("lcramenpack", 5)
        Player.Functions.AddItem("lcteabag", 3)
        Player.Functions.AddItem("lccoffeepod", 3)
        Player.Functions.AddItem("lcgteapod", 3)
        Player.Functions.AddItem("lccocoapod", 3)
        Player.Functions.AddItem("lccocoapod", 3)
        Player.Functions.AddItem("lcicecubes", 5)
    end
end)

-- [QB] Let's Cook! Drink Items
QBCore.Functions.CreateUseableItem("lcgrapejuice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcapplejuice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcorangejuice", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcnanasmoothie", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkSmoothie", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcberrysmoothie", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkSmoothie", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lccuptea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCoffee", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lccupcoffee", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCoffee", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lchotcocoa", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCoffee", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lcgreentea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCoffee", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("lccappucino", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCoffee", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem('beansontoast' , function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("romoy:client:BeansOnTop", src, item.name)
    end
end)

--starbucks
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

RegisterNetEvent('qb-smallresources:server:AddItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem(item, amount)
end)

RegisterNetEvent('qb-smallresources:server:RemoveItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem(item, amount)
end)

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
        TriggerClientEvent("aoki:client:Ramen", src, item.name)
    end
end)


QBCore.Functions.CreateUseableItem("greentea", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

RegisterNetEvent('venture:legacy:server', function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    xPlayer.Functions.AddMoney('bank', 10000, 'Your legacy money')
end)