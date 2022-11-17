----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.Core
local CoreFolder = Config.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local PhoneEvent = Config.PhoneEvent
local SmokeItem = Config.SmokingItem
local PapersItem = Config.PapersItem
local GrinderItem = Config.GrinderItem
local TrimmingItem = Config.TrimmingItem
local WeedBagItem = Config.WeedBagItem
local JobName = Config.JobName
local MoneyType = Config.MoneyType
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- MIX COCKTAILS CODE START --<!>--
RegisterServerEvent('boii-billiardsbar:server:MixCocktails', function(args) 
	local source = source
    local Player = Core.Functions.GetPlayer(source)
	local args = tonumber(args)
    local liquorAmount = Config.LiquorAmount
    local IngredientAmount = Config.IngredientAmount
    local IngredientAmount2 = Config.IngredientAmount2
    local IngredientAmount3 = Config.IngredientAmount3
    if args == 1 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_whiskey') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('lemon') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('orange') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_whiskey', liquorAmount)
                                    Player.Functions.RemoveItem('lemon', IngredientAmount)
                                    Player.Functions.RemoveItem('orange', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_whiskey'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['lemon'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['orange'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 1)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughorange'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughorange'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlemon'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolemon'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughwhiskey'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nowhiskey'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
            end
		else
			TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
			TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
		end
    elseif args == 2 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_whiskey') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('lemon') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('orange') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_whiskey', liquorAmount)
                                    Player.Functions.RemoveItem('lemon', IngredientAmount)
                                    Player.Functions.RemoveItem('apple', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_whiskey'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['lemon'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['apple'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 2)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughapple'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughapple'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlemon'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolemon'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughwhiskey'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nowhiskey'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
        end
    elseif args == 3 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_whiskey') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('cherry') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount2 then
                            local fruit2 = Player.Functions.GetItemByName('orange') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_whiskey', liquorAmount)
                                    Player.Functions.RemoveItem('cherry', IngredientAmount2)
                                    Player.Functions.RemoveItem('apple', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_whiskey'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cherry'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['orange'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 3)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughorange'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['noorange'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlemon'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolemon'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughwhiskey'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nowhiskey'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
        end
    elseif args == 4 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_rum') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('pineapple') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('coconut') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_rum', liquorAmount)
                                    Player.Functions.RemoveItem('pineapple', IngredientAmount)
                                    Player.Functions.RemoveItem('coconut', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_rum'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['pineapple'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['coconut'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 4)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughcocomilk'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococomilk'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughpineapple'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nopineapple'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughrum'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['norum'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 1)
        end
    elseif args == 5 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_rum') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('pineapple') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('orange') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_rum', liquorAmount)
                                    Player.Functions.RemoveItem('pineapple', IngredientAmount)
                                    Player.Functions.RemoveItem('orange', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_rum'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['pineapple'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['orange'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 5)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughorange'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['noorange'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughpineapple'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nopineapple'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughrum'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['norum'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
        end
    elseif args == 6 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_rum') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('lime') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('orange') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_rum', liquorAmount)
                                    Player.Functions.RemoveItem('lime', IngredientAmount)
                                    Player.Functions.RemoveItem('orange', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_rum'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['lime'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['orange'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 6)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughorange'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['noorange'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlime'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolime'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughrum'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['norum'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 2)
        end
    elseif args == 7 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_vodka') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('lemon') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('apple') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_vodka', liquorAmount)
                                    Player.Functions.RemoveItem('lemon', IngredientAmount)
                                    Player.Functions.RemoveItem('apple', IngredientAmount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_vodka'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['lemon'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['apple'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 7)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughapple'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['noapple'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlemon'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolemon'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughvodka'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['novodka'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
        end
    elseif args == 8 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_vodka') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('lime') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('cranberry') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount3 then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_vodka', liquorAmount)
                                    Player.Functions.RemoveItem('lime', IngredientAmount)
                                    Player.Functions.RemoveItem('cranberry', IngredientAmount3)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_vodka'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['lime'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cranberry'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 8)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughcranberry'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nocranberry'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlime'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolime'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughvodka'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['novodka'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
        end
    elseif args == 9 then 
        local glass = Player.Functions.GetItemByName('cocktailglass') 
        if glass ~= nil then
            local liquor = Player.Functions.GetItemByName('glass_vodka') 
            if liquor ~= nil then
                if liquor.amount >= liquorAmount then
                    local fruit = Player.Functions.GetItemByName('lemon') 
                    if fruit ~= nil then
                        if fruit.amount >= IngredientAmount then
                            local fruit2 = Player.Functions.GetItemByName('tomato') 
                            if fruit2 ~= nil then
                                if fruit2.amount >= IngredientAmount2 then
                                    Player.Functions.RemoveItem('cocktailglass', 1)
                                    Player.Functions.RemoveItem('glass_vodka', liquorAmount)
                                    Player.Functions.RemoveItem('lemon', IngredientAmount)
                                    Player.Functions.RemoveItem('tomato', IngredientAmount2)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cocktailglass'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['glass_vodka'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['lemon'], "remove")
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['tomato'], "remove")
                                    TriggerClientEvent('boii-billiardsbar:client:MixCocktails', source, 9)
                                else
                                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughtomato'], 'error')
                                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                                end
                            else
                                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['notomato'], 'error')
                                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                            end
                        else
                            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughlemon'], 'error')
                            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                        end
                    else
                        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nolemon'], 'error')
                        TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                    end
                else
                    TriggerClientEvent('boii-billiardsbar:notifications', source, Language['enoughvodka'], 'error')
                    TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
                end
            else
                TriggerClientEvent('boii-billiardsbar:notifications', source, Language['novodka'], 'error')
                TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
            end
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nococktailglass'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:CocktailsMenu', source, 3)
        end
	end
end)
--<!>-- MIX COCKTAILS CODE END --<!>--



--<!>-- HOT DRINKS CODE START --<!>--
RegisterServerEvent('boii-billiardsbar:server:HotDrinks', function(args) 
	local source = source
    local Player = Core.Functions.GetPlayer(source)
	local args = tonumber(args)
    if args == 1 then 
        local cup = Player.Functions.GetItemByName('emptycup') 
        if cup ~= nil then           
            Player.Functions.RemoveItem('emptycup', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['emptycup'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:HotDrinks', source, 1)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nocup'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:HotDrinksMenu', source)
        end	
    elseif args == 2 then 
        local cup = Player.Functions.GetItemByName('emptycup') 
        if cup ~= nil then           
            Player.Functions.RemoveItem('emptycup', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['emptycup'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:HotDrinks', source, 2)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nocup'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:HotDrinksMenu', source)
        end			
	end
end)
--<!>-- HOT DRINKS CODE END --<!>--

--<!>-- HOT DRINKS CODE START --<!>--
RegisterServerEvent('boii-billiardsbar:server:MicrowaveFood', function(args) 
	local src = source
    local Player = Core.Functions.GetPlayer(src)
	local args = tonumber(args)
    if args == 1 then 
        local food = Player.Functions.GetItemByName('cheesepie') 
        if food ~= nil then           
            Player.Functions.RemoveItem('cheesepie', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'cheesepie', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['cheesepie'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 1)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end	
    elseif args == 2 then 
        local food = Player.Functions.GetItemByName('meatpie') 
        if food ~= nil then           
            Player.Functions.RemoveItem('meatpie', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'meatpie', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['meatpie'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 2)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end
    elseif args == 3 then 
        local food = Player.Functions.GetItemByName('steakpie') 
        if food ~= nil then           
            Player.Functions.RemoveItem('steakpie', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'steakpie', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['steakpie'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 3)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end	
    elseif args == 4 then 
        local food = Player.Functions.GetItemByName('chickenpie') 
        if food ~= nil then           
            Player.Functions.RemoveItem('chickenpie', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'chickenpie', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['chickenpie'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 4)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end	
    elseif args == 5 then 
        local food = Player.Functions.GetItemByName('mwburger') 
        if food ~= nil then           
            Player.Functions.RemoveItem('mwburger', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'mwburger', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['mwburger'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 5)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end
    elseif args == 6 then 
        local food = Player.Functions.GetItemByName('mwcburger') 
        if food ~= nil then           
            Player.Functions.RemoveItem('mwcburger', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'mwcburger', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['mwcburger'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 6)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end
    elseif args == 7 then 
        local food = Player.Functions.GetItemByName('mwbcburger') 
        if food ~= nil then           
            Player.Functions.RemoveItem('mwbcburger', 1)
            TriggerEvent("qb-smallresources:server:RemoveItem", 'mwbcburger', 1)
            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items['mwbcburger'], "remove")
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveFood', source, 7)
        else
            TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nofood'], 'error')
            TriggerClientEvent('boii-billiardsbar:client:MicrowaveMenu', source)
        end			
	end
end)
--<!>-- HOT DRINKS CODE END --<!>--

--<!>-- ITEMS CODE START --<!>--
-- Pies
Core.Functions.CreateUseableItem("cookedcheesepie", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatPie", source, item.name)
end)
Core.Functions.CreateUseableItem("cookedchickenpie", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatPie", source, item.name)
end)
Core.Functions.CreateUseableItem("cookedmeatpie", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatPie", source, item.name)
end)
Core.Functions.CreateUseableItem("cookedsteakpie", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatPie", source, item.name)
end)
-- Burgers
Core.Functions.CreateUseableItem("cookedmwburger", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatBurger", source, item.name)
end)
Core.Functions.CreateUseableItem("cookedmwcburger", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatBurger", source, item.name)
end)
Core.Functions.CreateUseableItem("cookedmwbcburger", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:EatBurger", source, item.name)
end)
-- Drinks
Core.Functions.CreateUseableItem("cupcoffee", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCoffee", source, item.name)
end)
Core.Functions.CreateUseableItem("cuptea", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkTea", source, item.name)
end)
Core.Functions.CreateUseableItem("irishcoffee", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("kurkakola", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCola", source, item.name)
end)
Core.Functions.CreateUseableItem("sprunk", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkSprunk", source, item.name)
end)
-- Pints
Core.Functions.CreateUseableItem("pint_ambeer", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkBeer", source, item.name)
end)
Core.Functions.CreateUseableItem("pint_logger", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkBeer", source, item.name)
end)
Core.Functions.CreateUseableItem("pint_piswasser", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkBeer", source, item.name)
end)
Core.Functions.CreateUseableItem("pint_dusche", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkBeer", source, item.name)
end)
-- Whiskey
Core.Functions.CreateUseableItem("glass_whiskey", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("glass_whiskeycoke", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("glass_whiskeylemon", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
-- Rum
Core.Functions.CreateUseableItem("glass_rum", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("glass_rumcoke", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("glass_rumlemon", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
-- Vodka
Core.Functions.CreateUseableItem("glass_vodka", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("glass_vodkacoke", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
Core.Functions.CreateUseableItem("glass_vodkalemon", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkLiquor", source, item.name)
end)
-- Cocktails
Core.Functions.CreateUseableItem("whiskeysour", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("whiskeysmash", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("bloodandsand", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("pinacolada", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("zombie", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("maitai", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("appletini", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("cosmopolitan", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
Core.Functions.CreateUseableItem("bloodymary", function(source, item)
    local source = source
    local Player = Core.Functions.GetPlayer(source)
    TriggerClientEvent("boii-billiardsbar:client:DrinkCocktail", source, item.name)
end)
--<!>-- ITEMS CODE END --<!>--

--<!>-- VEHICLE RENTAL CODE START --<!>--
RegisterNetEvent("boii-billiardsbar:server:ReturnDeposit", function()
	local source = source
    local pData = Core.Functions.GetPlayer(source)
	local price = math.floor(Config.VehicleDeposit/2)
	pData.Functions.AddMoney(MoneyType, price, "billiard-bar")
	TriggerClientEvent('boii-billiardsbar:notifications', source, Language['returnedvan'], 'success')
end) 
Core.Functions.CreateCallback('boii-billiardsbar:server:MoneyCheck', function(source, cb)
    local source = source
    local pData = Core.Functions.GetPlayer(source)
    local bankBalance = pData.PlayerData.money[MoneyType]
	local price = Config.VehicleDeposit
    if bankBalance >= price then
        pData.Functions.RemoveMoney('bank', Config.VehicleDeposit, "billiard-bar")
        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['rentedvan'], 'success')
        cb(true)
    else
        TriggerClientEvent('boii-billiardsbar:notifications', source, Language['nomoney'], 'error')
        cb(false)
    end
end)
--<!>-- VEHICLE RENTAL CODE END --<!>--