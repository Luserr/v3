print'Pug Fishing 1.0.0'
local QBCore = exports[Config.CoreName]:GetCoreObject()
local OpeningChest = false
local succededchestopen = false

local function SetupItems(shop)
    local products = Config.Locations[shop].products
    local playerJob = QBCore.Functions.GetPlayerData().job.name
    local items = {}
    for i = 1, #products do
        if not products[i].requiredJob then
            items[#items+1] = products[i]
        else
            for i2 = 1, #products[i].requiredJob do
                if playerJob == products[i].requiredJob[i2] then
                    items[#items+1] = products[i]
                end
            end
        end
    end
    return items
end

RegisterNetEvent('venture:client:FishingShop', function()
	local player = PlayerPedId()
	local playerpos = GetEntityCoords(player)

	for shop, _ in pairs(Config.Locations) do
		local position = Config.Locations[shop]['coords']
		local products = Config.Locations[shop].products
		for _, loc in pairs(position) do
			local dist = #(playerpos - vector3(loc["x"], loc["y"], loc["z"]))
			if dist < 3 then
				local ShopItems = {}
				ShopItems.items = {}
				ShopItems.label = Config.Locations[shop]['label']
				for i=1, #products do
					ShopItems.items[#ShopItems.items+1] = products[i]
				end
			else
				ShopItems.items = SetupItems(shop)
			end
			for k, v in pairs(ShopItems.items) do
				ShopItems.items[k].slot = k
			end
			ShopItems.slots = 30
			TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'Itemshop_'..shop, ShopItems )
		end
	end
end)

--Put your drawtext option here
function DrawTextOption(text)
	exports['qb-core']:DrawText(text)
end
function HideTextOption()
	exports['qb-core']:HideText()
end
local function SellFishAnim()
	local random = math.random(1,5)
	if random == 1 then
		TriggerEvent('animations:client:EmoteCommandStart', {"wait"})
	elseif random == 2 then 
		TriggerEvent('animations:client:EmoteCommandStart', {"argue"})
	elseif random == 3 then 
		TriggerEvent('animations:client:EmoteCommandStart', {"argue2"})
	elseif random == 4 then 
		TriggerEvent('animations:client:EmoteCommandStart', {"lean2"})
	elseif random == 5 then 
		TriggerEvent('animations:client:EmoteCommandStart', {"danceslow"})
	end
end
local function LoadModel(model)
    if HasModelLoaded(model) then return end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
end
Citizen.CreateThread(function()
	if Config.UseDefaultPed then
		MainFisherMan = Config.TournamentPed
		LoadModel(MainFisherMan)
		FisherMan = CreatePed(2, MainFisherMan, Config.TournamentPedLoc, false, false)
		SetPedFleeAttributes(FisherMan, 0, 0)
		SetPedDiesWhenInjured(FisherMan, false)
		SetPedKeepTask(FisherMan, true)
		SetBlockingOfNonTemporaryEvents(FisherMan, true)
		SetEntityInvincible(FisherMan, true)
		FreezeEntityPosition(FisherMan, true)
	end
    exports['qb-target']:AddBoxZone("fishguy",vector3(Config.TournamentPedLoc.x, Config.TournamentPedLoc.y, Config.TournamentPedLoc.z), 1, 1, {
        name="fishguy",
        heading=0,
        debugPoly= Config.Debug,
        minZ=30.45,
        maxZ=32.45,
    }, {
        options = {
            {
				type = "client",
                event = "Pug:client:ViewTournamentMenu",
                icon = "fas fa-user-check",
                label = Translations.menu.Join,
            },
			{
				type = "client",
				event = "qb-shops:FishingShop",
				icon = "fas fa-shopping-basket",
				label = Translations.menu.supplies,
			},
        },
        distance = 5.0
    })
    FisherManSellShop = Config.SellShopPed
    LoadModel(FisherManSellShop)
    FisherManShop = CreatePed(2, FisherManSellShop, Config.SellShopPedPedLoc, false, false)
    SetPedFleeAttributes(FisherManShop, 0, 0)
    SetPedDiesWhenInjured(FisherManShop, false)
    SetPedKeepTask(FisherManShop, true)
    SetBlockingOfNonTemporaryEvents(FisherManShop, true)
    SetEntityInvincible(FisherManShop, true)
    FreezeEntityPosition(FisherManShop, true)
    exports['qb-target']:AddBoxZone("sellfish", vector3(Config.SellShopPedPedLoc.x, Config.SellShopPedPedLoc.y, Config.SellShopPedPedLoc.z), 1, 1, {
        name="sellfish",
        heading=330,
        debugPoly= Config.Debug,
        minZ=47.55,
        maxZ=49.555,
    }, {
        options = {
            {
                event = "Pug:client:SellFishMenu",
                icon = "fas fa-fish",
                label = Translations.menu.sell_fish,
            }
        },
        distance = 5.0
    })
	FishSellBlip = AddBlipForCoord(-2196.83, 4272.38, 48.55)
    SetBlipSprite(FishSellBlip, 628)
    SetBlipDisplay(FishSellBlip, 4)
    SetBlipScale(FishSellBlip, 0.75)
    SetBlipColour(FishSellBlip, 33)
    SetBlipAsShortRange(FishSellBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Fish Market")
    EndTextCommandSetBlipName(FishSellBlip)
	if craftingbench == nil then
		RequestModel(GetHashKey("prop_tool_bench02"))
		while not HasModelLoaded(GetHashKey("prop_tool_bench02")) do Wait(1) end
		craftingbench = CreateObject(GetHashKey("prop_tool_bench02"),Config.CrafingRodLocation.x, Config.CrafingRodLocation.y, Config.CrafingRodLocation.z-1,false,false,false)
		SetEntityHeading(craftingbench,GetEntityHeading(craftingbench)-24.7)
		FreezeEntityPosition(craftingbench, true)
	end
    exports['qb-target']:AddBoxZone("CraftFishingRod",vector3(-679.03, 5790.79, 17.33), 1.4, 1, {
        name="CraftFishingRod",
		heading=335,
		debugPoly=Config.Debug,
		minZ=16.33,
		maxZ=17.53,
    }, {
        options = {
            {
                event = "Pug:client:CraftFishingRodMenu",
                icon = "fa-solid fa-pen-ruler",
                label = 'Craft Fishing Rod',
            }
        },
        distance = 5.0
    })
	GemsFisherMan = Config.GemsBuyingPed
    LoadModel(GemsFisherMan)
    GemsBuyer = CreatePed(2, GemsFisherMan, Config.GemsBuyingPedLoc, false, false)
    SetPedFleeAttributes(GemsBuyer, 0, 0)
    SetPedDiesWhenInjured(GemsBuyer, false)
    SetPedKeepTask(GemsBuyer, true)
    SetBlockingOfNonTemporaryEvents(GemsBuyer, true)
    SetEntityInvincible(GemsBuyer, true)
    FreezeEntityPosition(GemsBuyer, true)
    exports['qb-target']:AddBoxZone("gemsguy",vector3(Config.GemsBuyingPedLoc.x, Config.GemsBuyingPedLoc.y, Config.GemsBuyingPedLoc.z), 1, 1, {
        name="gemsguy",
		heading=330,
        debugPoly= Config.Debug,
		minZ=13.3,
		maxZ=15.3,
    }, {
        options = {
            {
				type = "client",
                event = "Pug:client:SellFishingGemsMenu",
                icon = "fas fa-user-check",
                label = Translations.menu.sell_gems,
            },
        },
        distance = 5.0
    })
end)
RegisterNetEvent('Pug:client:SellFishingGemsMenu', function()
    local menu = {
        {
            header = Translations.menu.sell_gems,
            txt = "ESC or click to go close",
            params = {
                event = " ",
            }
        }
    }
    for k, v in pairs(Config.SellGems) do
        menu[#menu+1] = {
            header = 'Sell '..QBCore.Shared.Items[k].label,
            icon = "fas fa-gem",
            text = 'between $'..v.pricemin..' and '..v.pricemax,
            params = {
                event = "Pug:client:SellFishingGems",
                args = k
            }
        }
    end
	exports[Config.Menu]:openMenu(menu)
end)

RegisterNetEvent("Pug:client:SellFishingGems")
AddEventHandler("Pug:client:SellFishingGems", function(item)
    --QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasitem)
	local hasItem = QBCore.Functions.HasItem(item)
        if hasItem then
			SellFishAnim()
            QBCore.Functions.Progressbar("selling_gems", Translations.details.selling_fish..' '..QBCore.Shared.Items[item].label, math.random(5000,10000), false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
				QBCore.Functions.TriggerCallback('Pug:ServerCB:SellGems', function(cansell)
					if cansell then
						
					else
						QBCore.Functions.Notify(Translations.error.no_gems, 'error')
					end
				end,item)
            end, function()
                QBCore.Functions.Notify(Translations.details.canceled, "error")
            end)
        else
            QBCore.Functions.Notify(Translations.error.no_gems, 'error')
        end
    --end, item)
end)
RegisterNetEvent('Pug:client:CraftFishingRodMenu', function()
    local menu = {
        {
            header = Translations.menu.CraftRodHeader,
            txt = "ESC or click to go close",
            params = {
                event = " ",
            }
        }
    }
    for k, v in pairs(Config.CraftRods) do
        menu[#menu+1] = {
            header = v.name..' | '..v.repRequired..' Fishing Rep & $'..v.price,
            icon = "fas fa-fish",
            text = 'Required: '..v.item1Amount..'x '..QBCore.Shared.Items[v.item1].label..' | '..v.item2Amount..'x '..QBCore.Shared.Items[v.item2].label,
            params = {
                event = "Pug:client:CraftFishingRod",
                args = k
            }
        }
    end
	exports[Config.Menu]:openMenu(menu)
end)
RegisterNetEvent("Pug:client:CraftFishingRod")
AddEventHandler("Pug:client:CraftFishingRod", function(item)
    QBCore.Functions.TriggerCallback('Pug:ServerCB:CanCraftRod', function(cancraft)
        if cancraft then
			--TriggerServerEvent('QBCore:Server:RemoveItem', Config.CraftRods[item].item1, Config.CraftRods[item].item1Amount)
			--TriggerServerEvent('QBCore:Server:RemoveItem', Config.CraftRods[item].item2, Config.CraftRods[item].item2Amount)
			--QBCore.Functions.RemoveItem(Config.CraftRods[item].item1)
			--QBCore.Functions.RemoveItem(Config.CraftRods[item].item2)
			TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
            QBCore.Functions.Progressbar("crafint_rod", Translations.details.Crafting_rod, 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,	
            }, {}, {}, {}, function() -- Done
				TriggerServerEvent("Pug:server:FishingRemoveMoeny",	Config.CraftRods[item].price)
				TriggerServerEvent('qb-fishing:server:AddItem', item, 1)
				TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item], "add")
				QBCore.Functions.Notify(Translations.details.crafted_rod.. Config.CraftRods[item].name)
            end, function()
				TriggerServerEvent('qb-fishing:server:AddItem', Config.CraftRods[item].item1, Config.CraftRods[item].item1Amount)
				TriggerServerEvent('qb-fishing:server:AddItem', Config.CraftRods[item].item2, Config.CraftRods[item].item2Amount)
                QBCore.Functions.Notify(Translations.details.canceled, "error")
            end)
        end
    end, item)
end)

RegisterNetEvent('Pug:client:SellFishMenu', function()
    local menu = {
        {
            header = Translations.menu.sell_fish,
            txt = "ESC or click to go close",
            params = {
                event = " ",
            }
        }
    }
    for k, v in pairs(Config.SellFishies) do
        menu[#menu+1] = {
            header = 'Sell '..QBCore.Shared.Items[k].label,
            icon = "fas fa-fish",
            text = '$'..v.price,
            params = {
                event = "Pug:client:SellFish",
                args = k
            }
        }
    end
	exports[Config.Menu]:openMenu(menu)
end)
RegisterNetEvent("Pug:client:SellFish")
AddEventHandler("Pug:client:SellFish", function(item)
    --QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasitem)
	local hasItem = QBCore.Functions.HasItem(item)
        if hasitem then
			SellFishAnim()
            QBCore.Functions.Progressbar("selling_fish", Translations.details.selling_fish..' '..QBCore.Shared.Items[item].label, 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
				QBCore.Functions.TriggerCallback('Pug:ServerCB:SellFish', function(cansell)
					if cansell then
						
					else
						QBCore.Functions.Notify(Translations.error.no_fish, 'error')
					end
				end,item)
            end, function()
                QBCore.Functions.Notify(Translations.details.canceled, "error")
            end)
        else
            QBCore.Functions.Notify(Translations.error.no_fish, 'error')
        end
    --end, item)
end)
-- Tournament first place item rewards
RegisterNetEvent('Pug:client:GiveFirstPlaceReward', function(k)
	local random = math.random(1,100)
	if random <= 10 then
		TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
	elseif random > 10 and random <= 100 then
		TriggerServerEvent("Pug:server:GiveFish", 'chestkey')
	end
	TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(17,22))
end)
-- Tournament second place item rewards
RegisterNetEvent('Pug:client:GiveSecondPlaceReward', function(k)
	local random = math.random(1,100)
	if random <= 10 then
		TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
	elseif random > 10 and random <= 13 then
		TriggerServerEvent("Pug:server:GiveFish", 'chestkey')
	end
	TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,15))
end)
-- Tournament third place item rewards
RegisterNetEvent('Pug:client:GiveThirdPlaceReward', function()
	local random = math.random(1,100)
	if random <= 10 then
		TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
	elseif random > 10 and random <= 13 then
		TriggerServerEvent("Pug:server:GiveFish", 'chestkey')
	end
	TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,11))
end)
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
		DeleteEntity(craftingbench)
	end
end)

function GetFishingInfoOpen()
    local info = {
		opnchest = OpeningChest,
		success = succededchestopen
    }
    return info
end

function FishingRod1Loot() -- Starter fishing rod loot table
	local fish = "stripedbass"
	if GetFishingInfoClosed().intournarea and GetFishingInfoClosed().started then -- only true if in a fishing area during a fishing torunament
		local luck = math.random(1,200)
		local treasure = math.random(1,300)
		if treasure == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,7))
		end
		local reel = math.random(1,200)
		if reel == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'skill-reel')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,7))
		end
		if luck == 200 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(15, 20)) -- gives points for the tournament
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 10)
		elseif luck >= 189 and luck <= 199 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", 0) -- gives points for the tournament
			fish = "eelfish"
		elseif luck >= 186 and luck < 189 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(5, 11)) -- gives points for the tournament
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,7))
		elseif luck >= 182 and luck < 186 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(5, 11)) -- gives points for the tournament
			fish = "swordfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,5))
		elseif luck >= 178 and luck < 182 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 3)
		elseif luck >= 174 and luck < 178 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "catfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 3)
		elseif luck >= 170 and luck < 174 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 3)
		elseif luck >= 166 and luck < 170 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 8)) -- gives points for the tournament
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 162 and luck < 166 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "goldfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 159 and luck < 162 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "redfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck >= 156 and luck < 159 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "bluefish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck >= 151 and luck < 156 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(2, 5)) -- gives points for the tournament
			fish = "stripedbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck < 151 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			fish = "fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	else
		local treasure = math.random(1,3000)
		if treasure == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(15,20))
		end
		local reel = math.random(1,3000)
		if reel == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'skill-reel')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(15,20))
		end
		local luck = math.random(1,200)
		if luck == 200 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", 7)
			fish = "killerwhale"
		elseif luck >= 189 and luck <= 199 then
			fish = "eelfish"
		elseif luck >= 185 and luck < 189 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
			fish = "goldfish"
		elseif luck >= 181 and luck < 185 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
			fish = "redfish"
		elseif luck >= 177 and luck < 181 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
			fish = "bluefish"
		elseif luck >= 172 and luck < 177 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
			fish = "stripedbass"
		elseif luck < 172 then
			fish = "fish"
			local repluck = math.random(1,10)
			if repluck <= 3 then
				TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
			end
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	end
end

function FishingRod2Loot() -- skilled fishing rod loot table
	local fish = "stripedbass"
	if GetFishingInfoClosed().intournarea and GetFishingInfoClosed().started then -- only true if in a fishing area during a fishing torunament
		local luck = math.random(1,200)
		local treasure = math.random(1,200)
		if treasure == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,8))
		end
		local lure1 = math.random(1,350)
		if lure1 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local lure2 = math.random(1,300)
		if lure2 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure2')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local chestkey = math.random(1,300)
		if chestkey == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestKey)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,10))
		end
		local bottlemap = math.random(1,1000)
		if bottlemap == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'bottlemap')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(20,24))
		end
		local reel = math.random(1,100)
		if reel == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'skill-reel')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(8,10))
		end
		if luck == 200 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(15, 20)) -- gives points for the tournament
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(8,10))
		elseif luck >= 192 and luck <= 199 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", 0) -- gives points for the tournament
			fish = "eelfish"
		elseif luck >= 177 and luck < 192 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(5, 11)) -- gives points for the tournament
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,5))
		elseif luck >= 171 and luck < 177 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(5, 11)) -- gives points for the tournament
			fish = "swordfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 165 and luck < 171 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 159 and luck < 165 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "catfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 153 and luck < 159 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(1,2))
		elseif luck >= 147 and luck < 153 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 8)) -- gives points for the tournament
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(1,2))
		elseif luck >= 141 and luck < 147 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "goldfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(1,2))
		elseif luck >= 136 and luck < 141 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "redfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(1,2))
		elseif luck >= 130 and luck < 136 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "bluefish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		elseif luck >= 120 and luck < 130 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(2, 5)) -- gives points for the tournament
			fish = "stripedbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		elseif luck < 120 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			fish = "fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		end
		local otherfish = math.random(1,300)
		if otherfish >= 9 and otherfish < 12 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "codfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif otherfish >= 6 and otherfish < 9 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "gholfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif otherfish >= 3 and otherfish < 6 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "rainbowtrout"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif otherfish >= 1 and otherfish < 3 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "stingraymeat"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		end
		local gems = math.random(1,600)
		if gems >= 20 and gems < 24 then 
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'diamond')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif gems >= 16 and gems < 20 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'emerald')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif gems >= 12 and gems < 16 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'sapphire')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif gems >= 8 and gems < 12 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'ruby')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif gems >= 5 and gems < 8 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'yellow-diamond')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif gems < 3 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'captainskull')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	else
		local treasure = math.random(1,2000)
		if treasure == 69 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,10))
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
		end
		local lure1 = math.random(1,450)
		if lure1 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local lure2 = math.random(1,400)
		if lure2 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure2')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local reel = math.random(1,2000)
		if reel == 69 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,10))
			TriggerServerEvent("Pug:server:GiveFish", 'skill-reel')
		end
		local luck = math.random(1,200)
		if luck == 200 then
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 8)
		elseif luck >= 192 and luck <= 199 then
			fish = "eelfish"
		elseif luck >= 187 and luck < 192 then
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,5))
		elseif luck >= 181 and luck < 187 then
			fish = "swordfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif luck >= 175 and luck < 181 then
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif luck >= 169 and luck < 175 then
			fish = "catfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 3)
		elseif luck >= 163 and luck < 169 then
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 3)
		elseif luck >= 157 and luck < 163 then
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck >= 151 and luck < 157 then
			fish = "goldfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck >= 146 and luck < 151 then
			fish = "redfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck >= 140 and luck < 146 then
			fish = "bluefish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		elseif luck >= 130 and luck < 140 then
			fish = "stripedbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		elseif luck < 130 then
			fish = "fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		end
		local otherfish = math.random(1,300)
		if otherfish >= 9 and otherfish < 12 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
			fish = "codfish"
		elseif otherfish >= 6 and otherfish < 9 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
			fish = "gholfish"
		elseif otherfish >= 3 and otherfish < 6 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
			fish = "rainbowtrout"
		elseif otherfish >= 1 and otherfish < 3 then
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
			fish = "stingraymeat"
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	end
end


--What fishing rewards the player gets when fishing with the highest tier fishing
function FishingRod3Loot()-- pro fishing rod loot table
	local fish = "stripedbass"
	if GetFishingInfoClosed().intournarea and GetFishingInfoClosed().started then -- only true if in a fishing area during a fishing torunament
		local luck = math.random(1,200)
		local treasure = math.random(1,100)
		if treasure == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local lure1 = math.random(1,150)
		if lure1 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local lure2 = math.random(1,200)
		if lure2 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure2')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local chestkey = math.random(1,200)
		if chestkey == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestKey)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local bottlemap = math.random(1,400)
		if bottlemap == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'bottlemap')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,15))
		end
		if luck >= 197 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(15, 20)) -- gives points for the tournament
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,15))
		elseif luck >= 194 and luck < 197 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", 0) -- gives points for the tournament
			fish = "eelfish"
		elseif luck >= 185 and luck < 194 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,7))
		elseif luck >= 179 and luck < 185 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,7))
		elseif luck >= 173 and luck < 179 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 8)) -- gives points for the tournament
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,7))
		elseif luck >= 167 and luck < 173 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(5, 11)) -- gives points for the tournament
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(4,7))
		elseif luck >= 161 and luck < 167 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(5, 11)) -- gives points for the tournament
			fish = "swordfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif luck >= 156 and luck < 161 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 150 and luck < 156 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "catfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 144 and luck < 150 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 9)) -- gives points for the tournament
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif luck >= 138 and luck < 144 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(4, 8)) -- gives points for the tournament
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif luck >= 130 and luck < 138 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "goldfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif luck >= 122 and luck < 130 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "redfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 114 and luck < 122 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(3, 6)) -- gives points for the tournament
			fish = "bluefish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(1,2))
		elseif luck >= 98 and luck < 114 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(2, 5)) -- gives points for the tournament
			fish = "stripedbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		elseif luck < 98 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			fish = "fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		end
		local otherfish = math.random(1,250)
		if otherfish >= 9 and otherfish < 12 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "codfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif otherfish >= 6 and otherfish < 9 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "gholfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif otherfish >= 3 and otherfish < 6 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "rainbowtrout"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		elseif otherfish >= 1 and otherfish < 3 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 2)) -- gives points for the tournament
			fish = "stingraymeat"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,4))
		end
		local gems = math.random(1,400)
		if gems >= 20 and gems < 24 then 
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'diamond')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif gems >= 16 and gems < 20 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'emerald')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif gems >= 12 and gems < 16 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'sapphire')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif gems >= 8 and gems < 12 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'ruby')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif gems >= 5 and gems < 8 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'yellow-diamond')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif gems == 1 then
			TriggerServerEvent("Pug:Server:UpdateFishingLeaderBoard", math.random(1, 3)) -- gives points for the tournament
			TriggerServerEvent("Pug:server:GiveFish", 'captainskull')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	else
		local treasure = math.random(1,500)
		if treasure == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		end
		local lure1 = math.random(1,350)
		if lure1 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local lure2 = math.random(1,400)
		if lure2 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure2')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local chestkey = math.random(1,600)
		if chestkey == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestKey)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		end
		local bottlemap = math.random(1,700)
		if bottlemap == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'bottlemap')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		end
		local luck = math.random(1,120)
		if luck == 120 then
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		elseif luck >= 118 and luck < 120 then
			fish = "eelfish"
		elseif luck == 117 then
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,10))
		elseif luck == 116 then
			fish = "catfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 110 and luck < 115 then
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 105 and luck < 110 then
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 100 and luck < 105 then
			fish = "goldfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 95 and luck < 100 then
			fish = "redfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif luck >= 90 and luck < 95 then
			fish = "bluefish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 85 and luck < 90 then
			fish = "stripedbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 80 and luck < 85 then
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 2)
		elseif luck >= 75 and luck < 80 then
			fish = "swordfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		elseif luck < 75 then
			fish = "fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", 1)
		end
		local otherfish = math.random(1,250)
		if otherfish >= 9 and otherfish < 12 then
			fish = "codfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif otherfish >= 6 and otherfish < 9 then
			fish = "gholfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif otherfish >= 3 and otherfish < 6 then
			fish = "rainbowtrout"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif otherfish >= 1 and otherfish < 3 then
			fish = "stingraymeat"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	end
end

--What fishing rewards the player gets when fishing with the fishinglure tier fishing
function FishRodLure1Loot()-- fishinglure rod loot table
	local fish = "tuna-fish"
	if GetFishingInfoClosed().intournarea and GetFishingInfoClosed().started then -- only true if in a fishing area during a fishing torunament
		QBCore.Functions.Notify(Translations.error.cant_use_in_tourn, 'error')
		return
	else
		local treasure = math.random(1,200)
		if treasure == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestItem)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		end
		local lure1 = math.random(1,100)
		if lure1 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local lure2 = math.random(1,150)
		if lure2 == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'fishinglure2')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(7,10))
		end
		local chestkey = math.random(1,300)
		if chestkey == 69 then
			TriggerServerEvent("Pug:server:GiveFish", Config.ChestKey)
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		end
		local bottlemap = math.random(1,400)
		if bottlemap == 69 then
			TriggerServerEvent("Pug:server:GiveFish", 'bottlemap')
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		end
		local luck = math.random(1,120)
		if luck == 120 then
			fish = "tuna-fish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(10,20))
		elseif luck >= 118 and luck < 120 then
			fish = "eelfish"
		elseif luck == 117 then
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(5,10))
		elseif luck == 116 then
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 110 and luck < 115 then
			fish = "salmon"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 105 and luck < 110 then
			fish = "largemouthbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 100 and luck < 105 then
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 95 and luck < 100 then
			fish = "redfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,4))
		elseif luck >= 90 and luck < 95 then
			fish = "bluefish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(3,5))
		elseif luck >= 85 and luck < 90 then
			fish = "stripedbass"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 80 and luck < 85 then
			fish = "killerwhale"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck >= 75 and luck < 80 then
			fish = "swordfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		elseif luck < 75 then
			fish = "tigershark"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,3))
		end
		local otherfish = math.random(1,350)
		if otherfish >= 9 and otherfish < 12 then
			fish = "codfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif otherfish >= 6 and otherfish < 9 then
			fish = "gholfish"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif otherfish >= 3 and otherfish < 6 then
			fish = "rainbowtrout"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		elseif otherfish >= 1 and otherfish < 3 then
			fish = "stingraymeat"
			TriggerServerEvent("Pug:Server:GiveFishingRep", math.random(2,5))
		end
		TriggerServerEvent("Pug:server:GiveFish", fish)
	end
end

RegisterNetEvent("Pug:Fishing:ReloadSkin")
AddEventHandler("Pug:Fishing:ReloadSkin", function()
	for k, v in pairs(GetGamePool('CObject')) do
		if IsEntityAttachedToEntity(PlayerPedId(), v) then
			SetEntityAsMissionEntity(v, true, true)
			DeleteObject(v)
			DeleteEntity(v)
		end
	end
    if Config.PugSlingScript then
	    TriggerEvent("Pug:ReloadGuns:sling")
    end
end)

--Key Lock minigame
-- Events
RegisterNetEvent('Pug:client:UseKeyOnChest', function()
	OpeningChest = true
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openThermite",
        amount = math.random(5, 10),
    })
end)

RegisterNetEvent('Pug:client:Openbottlemap', function()
    RequestAnimDict("mp_arresting")
    while (not HasAnimDictLoaded("mp_arresting")) do
        Wait(0)
    end
    TaskPlayAnim(PlayerPedId(), "mp_arresting" ,"a_uncuff" ,8.0, -8.0, -1, 1, 0, false, false, false )
    local Coords = GetEntityCoords(PlayerPedId())
    bottle = CreateObject(GetHashKey('p_amb_bag_bottle_01'), Coords.x, Coords.y,Coords.z, true, true, true)
    AttachEntityToEntity(bottle, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.05, 0.0, -40.0, 10.0, 90.0, false, false, false, false, 2, true)
    QBCore.Functions.Progressbar("opening_box", "Opening bottle", 3700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Don
		TriggerEvent('animations:client:EmoteCommandStart', {"smoke"})
		TriggerEvent("Pug:Fishing:ReloadSkin")
		Wait(1000)
		DeleteEntity(bottle)
		Wait(1000)
		TriggerEvent('animations:client:EmoteCommandStart', {"map"})
		Wait(2000)
		TriggerEvent('animations:client:EmoteCommandStart', {"smoke"})
		TriggerEvent("Pug:Fishing:ReloadSkin")
		Wait(1300)
		TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-fishing:server:AddItem", "treasuremap", 1)
		--QBCore.Functions.AddItem('treasuremap')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["treasuremap"], "add")
        Wait(500)
    end, function() -- Cancel
		TriggerServerEvent("qb-fishing:server:AddItem", "bottlemap", 1)
		--QBCore.Functions.AddItem('bottlemap')
        TriggerEvent("Pug:Fishing:ReloadSkin")
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify(Translations.details.canceled, "error")
        Wait(500)
    end)
end)

-- NUI Callbacks
RegisterNUICallback('thermiteclick', function(_, cb)
    PlaySound(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 0, 0, 1)
    cb('ok')
end)

RegisterNUICallback('thermitefailed', function(_, cb)
	OpeningChest = false
	succededchestopen = false
    PlaySound(-1, "Place_Prop_Fail", "DLC_Dmod_Prop_Editor_Sounds", 0, 0, 1)
    cb('ok')
end)

RegisterNUICallback('thermitesuccess', function(_, cb)
	succededchestopen = true
	OpeningChest = false
    ClearPedTasks(PlayerPedId())
    cb('ok')
	Wait(4000)
	succededchestopen = false
end)

RegisterNUICallback('closethermite', function(_, cb)
	OpeningChest = false
    SetNuiFocus(false, false)
    cb('ok')
end)