local PlayerData = {}
local InZoneCreated = false
local handWash = false
local isLoggedIn = false
local soundStart = false

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
	PlayerData.job = QBCore.Functions.GetPlayerData().job
    isLoggedIn = true
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerData.job = job
end)


local LANG = Locale.Languages[Locale.Language]

local function LoadAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Wait(50)
	end
end

local function ItemCheck(val,type)
    local cItem = nil
    cItem = Config.WorkersellingItem
    local hasItem = nil 
    local stashAmount = nil
    local sellPrice = nil
    for material, label in pairs(cItem) do
        if val == label.spawnName then
            hasItem = true
            sellPrice = label.sellPrice
        end
    end
    return hasItem,sellPrice
end

local function HandWashing()   
	busy = true
    QBCore.Functions.Progressbar("handwash",LANG["HANDWASH_DOING"], math.random(7000, 10000), false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 49,
    }, {}, {}, function() -- Done
        handWash = true
		busy = false
    end, function() -- Cancel
		busy = false
        --iptal
    end)
end

local function ItemLabelCheck(data,cost)
	if data ~= nil and data ~='' then
		return QBCore.Shared.Items[data]["label"].." x " ..cost..""
	else
		return ''
	end
end
local function LabelCheck(label)
	if (label.item.first ~= nil and label.item.first ~='' and label.costs.first > 0) and (label.item.second ~= nil and label.item.second ~= '' and label.costs.second > 0) and (label.item.third ~=nil and label.item.third ~='' and label.costs.third > 0) then
		return ""..ItemLabelCheck(label.item.first,label.costs.first).."<br>"..ItemLabelCheck(label.item.second,label.costs.second).."<br>"..ItemLabelCheck(label.item.third,label.costs.third).."" 
	elseif (label.item.first ~= nil and label.item.first ~='' and label.costs.first > 0) and (label.item.second ~= nil and label.item.second ~= '' and label.costs.second > 0) then
		return ""..ItemLabelCheck(label.item.first,label.costs.first).."<br>"..ItemLabelCheck(label.item.second,label.costs.second)..""
	elseif (label.item.first ~= nil and label.item.first ~='' and label.costs.first > 0) then
		return ""..ItemLabelCheck(label.item.first,label.costs.first)..""
    else
        return ""..LANG["NO_REQUIRE"]..""
    end
end
local function DJPad(data)
    local zoneS = data.zones
    local musicMenu = {
        {
            isHeader = true,
            header = ""..LANG['SONG_MENU_HEADER'].."",
        },
        {
            header = ""..LANG['PLAY_MUSIC_HEADER'].."",
            txt =  ""..LANG['PLAY_MUSIC_TXT'].."",
            params = {
                event = 'qb-irishpub:client:musicMenu',
                args = {
                    zoneName = zoneS,
                }
            }
        },
        {
            header = ""..LANG['PAUSE_MUSIC_HEADER'].."",
            txt =  ""..LANG['PAUSE_MUSIC_TXT'].."",
            params = {
                isServer = true,
                event = 'qb-irishpub:server:pauseMusic',
                args = {
                    zoneName = zoneS
                }
            }
        },
        {
            header = ""..LANG['RESUME_MUSIC_HEADER'].."",
            txt =  ""..LANG['RESUME_MUSIC_TXT'].."",
            params = {
                isServer = true,
                event = 'qb-irishpub:server:resumeMusic',
                args = {
                    zoneName = zoneS
                }
            }
        },
        {
            header = ""..LANG['CHANGE_VOLUME_HEADER'].."",
            txt =  ""..LANG['CHANGE_VOLUME_TXT'].."",
            params = {
                event = 'qb-irishpub:client:changeVolume',
                args = {
                    zoneName = zoneS
                }
            }
        },
        {
            header = ""..LANG['STOP_MUSIC_HEADER'].."",
            txt =  ""..LANG['STOP_MUSIC_TXT'].."",
            params = {
                isServer = true,
                event = 'qb-irishpub:server:stopMusic',
                args = {
                    zoneName = zoneS
                }
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        },
    }
    exports['qb-menu']:openMenu(musicMenu)
end
local function CustomerMenu()
    local CustomerMenu = {
        {
            header = ""..LANG["CUSTOMER_HEADER"],
            isMenuHeader = true
        },
        {
            header = ""..LANG["CUSTOMER_TAKE_HEADER"].."",
            txt = ""..LANG["CUSTOMER_TAKE_TXT"].."",
            params = {
                event = "qb-irishpub:client:CustomerTake",
            }
        },
        {
            header = ""..LANG["TIP_BOX_HEADER"].."",
            txt = ""..LANG["TIP_BOX_TXT_MENU"].."",
            params = {
                event = "qb-irishpub:client:TipBox",
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },   
    }
    exports['qb-menu']:openMenu(CustomerMenu)
end

local function BeerMenu()
    local BeerMenu = {
        {
            header = ""..LANG["BEER_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.BeerMenuItems
    for material, label in pairs(Materials) do
        BeerMenu[#BeerMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraftBeer",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    BeerMenu[#BeerMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(BeerMenu)
end
local function LiqueurMenu()
    local LiquerMenu = {
        {
            header = ""..LANG["LIQUEUR_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.LiqueurMenuItems
    for material, label in pairs(Materials) do
        LiquerMenu[#LiquerMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    LiquerMenu[#LiquerMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(LiquerMenu)
end
local function CocktailMenu()
    local CocktailMenu = {
        {
            header = ""..LANG["COCKTAIL_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.CocktailMenuItems
    for material, label in pairs(Materials) do
        CocktailMenu[#CocktailMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraftCocktail",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    CocktailMenu[#CocktailMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(CocktailMenu)
end
local function CoffeeMenu()
    local CoffeeMenu = {
        {
            header = ""..LANG["COFFE_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.CoffeMenuItems
    for material, label in pairs(Materials) do
        CoffeeMenu[#CoffeeMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraftCoffee",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    CoffeeMenu[#CoffeeMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(CoffeeMenu)


end
-- ##TODO
local function BottleBeerMenu()
    local BottleBeerMenu = {
        {
            header = ""..LANG["BOTTLE_BEER_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.BottleBeerItems
    for material, label in pairs(Materials) do
        BottleBeerMenu[#BottleBeerMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    BottleBeerMenu[#BottleBeerMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(BottleBeerMenu)
end
local function SandvicMenu()
    local SandvicMenu = {
        {
            header = ""..LANG["SANDVIC_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.SandwichMenuItems
    for material, label in pairs(Materials) do
        SandvicMenu[#SandvicMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:CraftSandwich",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    SandvicMenu[#SandvicMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(SandvicMenu)
end


--- Rum Menu's
local function RumSelectionMenu()
    local RumSelectionMenu = {
        {
            isHeader = true,
            header = ""..LANG["RUM_MENU_HEADER"].."",
        },
        {
            header = ""..LANG["COCKTAILS_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:RumCockTailItemsMenu',
            }
        },
        {
            header = ""..LANG["DRINK_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:RumDrinksItemsMenu',
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(RumSelectionMenu)
end
local function RumCockTailItemsMenu()
    local rumMenu = {
        {
            header = ""..LANG["RUM_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.RumCockTailMenuItems
    for material, label in pairs(Materials) do
        rumMenu[#rumMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    rumMenu[#rumMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(rumMenu)

end
local function RumDrinksItemsMenu()
    local rumDrinksMenu = {
        {
            header = ""..LANG["RUM_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.RumDrinkMenuItems
    for material, label in pairs(Materials) do
        rumDrinksMenu[#rumDrinksMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    rumDrinksMenu[#rumDrinksMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(rumDrinksMenu)

end
--- Vodka Menu's
local function VodkaSelectionMenu()
    local VodkaSelectionMenu = {
        {
            isHeader = true,
            header = ""..LANG["VODKA_MENU_HEADER"].."",
        },
        {
            header = ""..LANG["COCKTAILS_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:VodkaCockTailItemsMenu',
            }
        },
        {
            header = ""..LANG["DRINK_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:VodkaDrinksItemsMenu',
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(VodkaSelectionMenu)
end
local function VodkaCockTailItemsMenu()
    local VodkaCockTailItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.VodkaCockTailMenuItems
    for material, label in pairs(Materials) do
        VodkaCockTailItemsMenu[#VodkaCockTailItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    VodkaCockTailItemsMenu[#VodkaCockTailItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(VodkaCockTailItemsMenu)
end
local function VodkaDrinksItemsMenu()
    local VodkaDrinksItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.VodkaDrinksMenuItems
    for material, label in pairs(Materials) do
        VodkaDrinksItemsMenu[#VodkaDrinksItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    VodkaDrinksItemsMenu[#VodkaDrinksItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(VodkaDrinksItemsMenu)

end

--- Wine Menu's
local function WineSelectionMenu()
    local WineSelectionMenu = {
        {
            isHeader = true,
            header = ""..LANG["WINE_MENU_HEADER"].."",
        },
        {
            header = ""..LANG["COCKTAILS_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:WineCockTailItemsMenu',
            }
        },
        {
            header = ""..LANG["DRINK_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:WineDrinksItemsMenu',
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(WineSelectionMenu)
end

local function WineCockTailItemsMenu()
    local WineCockTailItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.WineCockTailMenuItems
    for material, label in pairs(Materials) do
        WineCockTailItemsMenu[#WineCockTailItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    WineCockTailItemsMenu[#WineCockTailItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(WineCockTailItemsMenu)
end

local function WineDrinksItemsMenu()
    local WineDrinksItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.WineDrinksMenuItems
    for material, label in pairs(Materials) do
        WineDrinksItemsMenu[#WineDrinksItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    WineDrinksItemsMenu[#WineDrinksItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(WineDrinksItemsMenu)

end

--- Whiskey Menu's
local function WhiskeySelectionMenu()
    local WhiskeySelectionMenu = {
        {
            isHeader = true,
            header = ""..LANG["WHISKEY_MENU_HEADER"].."",
        },
        {
            header = ""..LANG["COCKTAILS_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:WhiskeyCockTailItemsMenu',
            }
        },
        {
            header = ""..LANG["DRINK_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:WhiskeyDrinksItemsMenu',
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(WhiskeySelectionMenu)
end

local function WhiskeyCockTailItemsMenu()
    local WhiskeyCockTailItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.WhiskeyCockTailMenuItems
    for material, label in pairs(Materials) do
        WhiskeyCockTailItemsMenu[#WhiskeyCockTailItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    WhiskeyCockTailItemsMenu[#WhiskeyCockTailItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(WhiskeyCockTailItemsMenu)
end

local function WhiskeyDrinksItemsMenu()
    local WhiskeyDrinksItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.WhiskeyDrinksMenuItems
    for material, label in pairs(Materials) do
        WhiskeyDrinksItemsMenu[#WhiskeyDrinksItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    WhiskeyDrinksItemsMenu[#WhiskeyDrinksItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(WhiskeyDrinksItemsMenu)

end
--- Gin Menu's
local function GinSelectionMenu()
    local GinSelectionMenu = {
        {
            isHeader = true,
            header = ""..LANG["GIN_MENU_HEADER"].."",
        },
        {
            header = ""..LANG["COCKTAILS_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:GinCockTailItemsMenu',
            }
        },
        {
            header = ""..LANG["DRINK_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:GinDrinksItemsMenu',
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(GinSelectionMenu)
end
local function GinCockTailItemsMenu()
    local GinCockTailItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.GinCockTailMenuItems
    for material, label in pairs(Materials) do
        GinCockTailItemsMenu[#GinCockTailItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    GinCockTailItemsMenu[#GinCockTailItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(GinCockTailItemsMenu)
end
local function GinDrinksItemsMenu()
    local GinDrinksItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.GinDrinksMenuItems
    for material, label in pairs(Materials) do
        GinDrinksItemsMenu[#GinDrinksItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    GinDrinksItemsMenu[#GinDrinksItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(GinDrinksItemsMenu)

end

--- Tequila Menu's
local function TequilaSelectionMenu()
    local TequilaSelectionMenu = {
        {
            isHeader = true,
            header = ""..LANG["TEQUILA_MENU_HEADER"].."",
        },
        {
            header = ""..LANG["COCKTAILS_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:TequilaCockTailItemsMenu',
            }
        },
        {
            header = ""..LANG["DRINK_ROUT_HEADER"].."",
            txt = '',
            params = {
                event = 'qb-irispub:client:TequilaDrinksItemsMenu',
            }
        },
        {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
    }
    exports['qb-menu']:openMenu(TequilaSelectionMenu)
end
local function TequilaCockTailItemsMenu()
    local TequilaCockTailItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.TequilaCockTailMenuItems
    for material, label in pairs(Materials) do
        TequilaCockTailItemsMenu[#TequilaCockTailItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    TequilaCockTailItemsMenu[#TequilaCockTailItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(TequilaCockTailItemsMenu)
end

local function TequilaDrinksItemsMenu()
    local TequilaDrinksItemsMenu = {
        {
            header = ""..LANG["VODKA_MENU_HEADER"].."",
            isMenuHeader = true
        }
    }
    local Materials = Config.TequilaDrinksMenuItems
    for material, label in pairs(Materials) do
        TequilaDrinksItemsMenu[#TequilaDrinksItemsMenu+1] = {
            header = label.labelName,
            txt = { ""..LANG["TXT_REQ"]..""..LabelCheck(label)..""},
			params = {
                event = "qb-irishpub:client:TakeCraft",
                args = {
                    Spawn = label.spawnName,
					Name = label.labelName,
					Items = label.item,
					Costs = label.costs,
                    outputAmount = label.outputAmount,
                }
            }
        }
    end
    TequilaDrinksItemsMenu[#TequilaDrinksItemsMenu+1] = {
        header = ""..LANG["CLOSE_MENU_TXT"].."",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }
    exports['qb-menu']:openMenu(TequilaDrinksItemsMenu)

end



--##Events
--## Menu Route
--- Rum Menu Router
RegisterNetEvent("qb-irispub:client:RumSelectionMenu",function()
    RumSelectionMenu()
end)

RegisterNetEvent("qb-irispub:client:RumCockTailItemsMenu",function()
    RumCockTailItemsMenu()
end)
RegisterNetEvent("qb-irispub:client:RumDrinksItemsMenu",function()
    RumDrinksItemsMenu()
end)

--- Vodka Menu Router
RegisterNetEvent("qb-irispub:client:VodkaSelectionMenu",function()
    VodkaSelectionMenu()
end)

RegisterNetEvent("qb-irispub:client:VodkaCockTailItemsMenu",function()
    VodkaCockTailItemsMenu()
end)
RegisterNetEvent("qb-irispub:client:VodkaDrinksItemsMenu",function()
    VodkaDrinksItemsMenu()
end)

--- Wine Menu Router
RegisterNetEvent("qb-irispub:client:WineSelectionMenu",function()
    WineSelectionMenu()
end)

RegisterNetEvent("qb-irispub:client:WineCockTailItemsMenu",function()
    WineCockTailItemsMenu()
end)
RegisterNetEvent("qb-irispub:client:WineDrinksItemsMenu",function()
    WineDrinksItemsMenu()
end)

--- Whiskey Menu Router
RegisterNetEvent("qb-irispub:client:WhiskeySelectionMenu",function()
    WhiskeySelectionMenu()
end)
RegisterNetEvent("qb-irispub:client:WhiskeyCockTailItemsMenu",function()
    WhiskeyCockTailItemsMenu()
end)
RegisterNetEvent("qb-irispub:client:WhiskeyDrinksItemsMenu",function()
    WhiskeyDrinksItemsMenu()
end)

--- Gin Menu Router
RegisterNetEvent("qb-irispub:client:GinSelectionMenu",function()
    GinSelectionMenu()
end)

RegisterNetEvent("qb-irispub:client:GinCockTailItemsMenu",function()
    GinCockTailItemsMenu()
end)
RegisterNetEvent("qb-irispub:client:GinDrinksItemsMenu",function()
    GinDrinksItemsMenu()
end)

--- Tequila Menu Router
RegisterNetEvent("qb-irispub:client:TequilaSelectionMenu",function()
    TequilaSelectionMenu()
end)

RegisterNetEvent("qb-irispub:client:TequilaCockTailItemsMenu",function()
    TequilaCockTailItemsMenu()
end)
RegisterNetEvent("qb-irispub:client:TequilaDrinksItemsMenu",function()
    TequilaDrinksItemsMenu()
end)


RegisterNetEvent("qb-irishpub:client:LiqueurMenu",function()
    LiqueurMenu()
end)
RegisterNetEvent("qb-irishpub:client:SandvicMenu",function()
    SandvicMenu()
end)
RegisterNetEvent("qb-irishpub:client:CoffeeMenu",function()
    CoffeeMenu()
end)

--- Coctail Menu Router
RegisterNetEvent("qb-irishpub:client:CocktailMenu",function()
    CocktailMenu()
end)

RegisterNetEvent("qb-irishpub:client:TakeBeer",function()
    BeerMenu()
end)

RegisterNetEvent("qb-irishpub:client:TakeBeerBottle",function()
    BottleBeerMenu()
end)



-- #Taking

RegisterNetEvent("qb-irishpub:client:TakeIce",function()
    if Config.IceBreakerSound then 
        soundStart = true
        TriggerEvent("qb-irishpub:client:SoundTrick",Config.IceBreakerSoundName)
    end
    QBCore.Functions.Progressbar("IceCraft", ""..LANG["TAKING_ICE"].."", Config.IceBreakerProgTime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
        }, {
            animDict = Config.IceAnimDict,
            anim = Config.IceAnim,
            flags = 49,
        }, {}, {}, function() -- Done
            soundStart = false
            TriggerServerEvent("qb-irishpub:server:GiveIce")
            FreezeEntityPosition(PlayerPedId(), false)
        end, function() -- Cancel
            soundStart = false
            FreezeEntityPosition(PlayerPedId(), false)
    end)    
end)

RegisterNetEvent("qb-irishpub:client:TakeCraft",function(data)
    if Config.GeneralFillSound then 
        soundStart = true
        TriggerEvent("qb-irishpub:client:SoundTrick",Config.GeneralFillSoundName)
    end
    QBCore.Functions.Progressbar("CoffeCraft", ""..LANG["TAKE_OTHERS_PROG"].."", Config.GeneralFillProgTime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
        }, {
            animDict = Config.GeneralAnimDict,
            anim = Config.GeneralAnim,
            flags = 49,
        }, {}, {}, function() -- Done
            soundStart = false
            TriggerServerEvent("qb-irishpub:server:GeneralCraft",data)
            FreezeEntityPosition(PlayerPedId(), false)
        end, function() -- Cancel
            soundStart = false
            FreezeEntityPosition(PlayerPedId(), false)
    end)
end)

RegisterNetEvent("qb-irishpub:client:TakeCraftBeer",function(data)
    QBCore.Functions.TriggerCallback('qb-irishpub:server:GeneralCheck', function(checkitem)
        if checkitem then 
            if Config.BeerSound then 
                soundStart = true
                TriggerEvent("qb-irishpub:client:SoundTrick",Config.BeerSoundName)
            end       
            QBCore.Functions.Progressbar("CoffeCraft", ""..LANG["FILL_BEER"].."", Config.BeerFillProgTime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                }, {
                    animDict = Config.BeerAnimDict,
                    anim = Config.BeerAnim,
                    flags = 49,
                }, {}, {}, function() -- Done
                    soundStart = false
                    TriggerServerEvent("qb-irishpub:server:GeneralCraft",data)
                    FreezeEntityPosition(PlayerPedId(), false)
                end, function() -- Cancel
                    soundStart = false
                    FreezeEntityPosition(PlayerPedId(), false)
            end)
        else
            QBCore.Functions.Notify(LANG["CHECK_ITEM"],"error")
        end
    end,data)
end)

RegisterNetEvent("qb-irishpub:client:TakeCraftCocktail",function(data)
    QBCore.Functions.TriggerCallback('qb-irishpub:server:GeneralCheck', function(checkitem)
        if checkitem then 
            if Config.CocktailSound then 
                soundStart = true
                TriggerEvent("qb-irishpub:client:SoundTrick",Config.CocktailSoundName)
            end       
            QBCore.Functions.Progressbar("CoffeCraft", ""..LANG["COCKTAIL_SHAKE"].."", Config.CocktailProgTime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                }, {
                    animDict = Config.CocktailAnimDict,
                    anim = Config.CocktailAnim,
                    flags = 49,
                }, {
                    model = "prop_bar_cockshaker",
                    bone = 28422,
                    coords = { x = 0.05, y = 0.0, z = -0.17 },
                    rotation = { x = 180.0, y = 150.0, z = 0.0 },
                }, {}, function() -- Done
                    soundStart = false
                    TriggerServerEvent("qb-irishpub:server:GeneralCraft",data)
                    FreezeEntityPosition(PlayerPedId(), false)
                end, function() -- Cancel
                    soundStart = false
                    FreezeEntityPosition(PlayerPedId(), false)
            end)
        else
            QBCore.Functions.Notify(LANG["CHECK_ITEM"],"error")
        end
    end,data)
end)

RegisterNetEvent("qb-irishpub:client:TakeCraftCoffee",function(data)
    QBCore.Functions.TriggerCallback('qb-irishpub:server:GeneralCheck', function(checkitem)
        if checkitem then 
            if Config.CoffeSound then 
                soundStart = true
                TriggerEvent("qb-irishpub:client:SoundTrick",Config.CoffeSoundName)
            end       
            QBCore.Functions.Progressbar("CoffeCraft", ""..LANG["COFFE_TAKE"].."", Config.CoffeProgTime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                }, {
                    animDict = Config.CoffeAnimDict,
                    anim = Config.CoffeAnim,
                    flags = 49,
                }, {}, {}, function() -- Done
                    soundStart = false
                    TriggerServerEvent("qb-irishpub:server:GeneralCraft",data)
                    FreezeEntityPosition(PlayerPedId(), false)
                end, function() -- Cancel
                    soundStart = false
                    FreezeEntityPosition(PlayerPedId(), false)
            end)
        else
            QBCore.Functions.Notify(LANG["CHECK_ITEM"],"error")
        end
    end,data)
end)

RegisterNetEvent("qb-irishpub:client:CraftSandwich",function(data)
    QBCore.Functions.TriggerCallback('qb-irishpub:server:GeneralCheck', function(checkitem)
        if checkitem then 
            if Config.SandwichSound then 
                soundStart = true
                TriggerEvent("qb-irishpub:client:SoundTrick",Config.SandwichSoundName)
            end       
            QBCore.Functions.Progressbar("CoffeCraft", ""..LANG["DO_SANDWICH"].."", Config.SandwichProgTime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
                }, {
                    animDict = Config.SandwichAnimDict,
                    anim = Config.SandwichAnim,
                    flags = 49,
                }, {}, {}, function() -- Done
                    soundStart = false
                    TriggerServerEvent("qb-irishpub:server:GeneralCraft",data)
                    FreezeEntityPosition(PlayerPedId(), false)
                end, function() -- Cancel
                    soundStart = false
                    FreezeEntityPosition(PlayerPedId(), false)
            end)
        else
            QBCore.Functions.Notify(LANG["CHECK_ITEM"],"error")
        end
    end,data)
end)



--- # Music/ Sound Event
RegisterNetEvent("qb-irishpub:client:DJPad",function(data)
    DJPad(data)
end)
RegisterNetEvent('qb-irishpub:client:changeVolume', function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = LANG['MUSIC_VOLUME'],
        submitText = LANG['MUSIC_VOLUME_SUBMIT'],
        inputs = {
            {
                type = 'text', -- number doesn't accept decimals??
                isRequired = true,
                name = 'volume',
                text = 'Min: 0.01 - Max: 1'
            }
        }
    })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('qb-irishpub:server:changeVolume', dialog.volume, data.zoneName)
    end
end)
RegisterNetEvent('qb-irishpub:client:SoundTrick', function(SoundName)
	while soundStart do 
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance",Config.SoundSettings.Distance,SoundName, Config.SoundSettings.SoundVolume)
	    Wait(Config.SoundSettings.SoundLength)
	end
end)
RegisterNetEvent('qb-irishpub:client:musicMenu', function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = ""..LANG['SONG_SELECTION'].."",
        submitText = ""..LANG['SUBMIT_TEXT'].."",
        inputs = {
            {
                type = 'text',
                isRequired = true,
                name = 'song',
                text = ""..LANG['SONG_LINK_TXT']..""
            },
            {
                text = ""..LANG["SONG_LOOP_TXT"].."",
                isRequired = true,
                name = 'type',
                type = "radio", -- type of the input
                options = { -- The options (in this case for a radio) you want displayed, more than 6 is not recommended
                    { value = "looped", text = ""..LANG['SONG_RADIO_LOOP'].."" }, -- Options MUST include a value and a text option
                    { value = "single", text = ""..LANG['SONG_RADIO_SINGLE'].."" }  -- Options MUST include a value and a text option
                }
            }
        }
    })
    if dialog then
        if dialog.song then 
           if dialog.type == "looped" then
                status = true
           elseif dialog.type == "single" then
                status = false 
           end   
            TriggerServerEvent('qb-irishpub:server:playMusic', dialog.song, data.zoneName,status)
        end
    end
end)



--# Billing / Tip Route
RegisterNetEvent("qb-irishpub:client:BillingCashier",function()
    local bill = exports['qb-input']:ShowInput({
        header = ""..LANG["BILL_MENU_INPUT_HEADER"].."",
        submitText = ""..LANG["BILL_MENU_INPUT_SBMT_TXT"].."",
        inputs = {
            {
                text = ""..LANG["BILL_MENU_INPUT_CTIZEN"].."",
                name = 'citizenid',
                type = 'number',    
                isRequired = true
            },
            {
                text = ""..LANG["BILL_MENU_INPUT_BILLTXT"].."",
                name = 'billprice',
                type = 'number',
                isRequired = true
            },            
            {
                text = ""..LANG["BILL_MENU_INPUT_BILLTYPE"].."",
                name = "billtype",
                type = "radio",
                options = {
                    { value = "bill", text = ""..LANG["BILL_MENU_BILL"].."",},
                }
            }
        }
    })
    if bill then
        TriggerServerEvent('qb-irishpub:server:bill:player',bill)
    end

end)
RegisterNetEvent('qb-irishpub:client:TipBox',function()
    QBCore.Functions.TriggerCallback('qb-irishpub:server:GetEmployees', function(cb)
        local TipMenu = {
            {
                header = ""..LANG['TIP_BOX_HEADER'].."",
                isMenuHeader = true
            }
        }
        for k,v in pairs(cb) do
            TipMenu[#TipMenu+1] = {
                header = v.name,
                txt = { ""..LANG['TIP_BOX_WORKER_GRADE']..""..v.grade.name..""},
                params = {
                    event = "qb-irishpub:client:TipBoxPay",
                    args= {
                        name = v.name,
                        citizenid = v.empSource,
                        place = place,
                    }
                }
            }
        end
        TipMenu[#TipMenu+1] = {
            header = ""..LANG["CLOSE_MENU_TXT"].."",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu"
            }
        }
        exports['qb-menu']:openMenu(TipMenu)
    end)
end)
RegisterNetEvent("qb-irishpub:client:TipBoxPay",function(data)
    local tipbox = exports['qb-input']:ShowInput({
        header = " "..LANG['CUSTOMER_TIP_INPUT_HEADER'].."",
        submitText = "",
        inputs = {
          {
              text = ""..LANG["CUSTOMER_TIP_INPUT_HOW_MNY"].."", -- text you want to be displayed as a place holder
              name = "amount", -- name of the input should be unique otherwise it might override
              type = "number", -- type of the input
              isRequired = true -- Optional [accepted values: true | false] but will not submit the form if no value is inputted
          },
          {
            text = ""..LANG["CUSTOMER_TIP_INPUT_PYMENT_TYPE"].."", -- text you want to be displayed as a place holder
            name = "paymentType", -- name of the input should be unique otherwise it might override
            type = "radio", -- type of the input
            options = { -- The options (in this case for a radio) you want displayed, more than 6 is not recommended
                { value = "cash", text = ""..LANG["CUSTOMER_TIP_INPUT_PYMENT_TYPE_CASH"].."" }, -- Options MUST include a value and a text option
                { value = "bank", text = ""..LANG["CUSTOMER_TIP_INPUT_PYMENT_TYPE_BANK"].."" }  -- Options MUST include a value and a text option
            }
          },
       },
    })
    if tipbox ~= nil then
        local takeAmount = tonumber(tipbox.amount)
        local paymentType = tipbox.paymentType
        if takeAmount >= 1 and takeAmount ~=nil then
            local data = {
                citizenid = data.citizenid,
                place= data.place,
                name = data.name,
                payType = paymentType,
                payAmount = takeAmount,
            }
            TriggerServerEvent("qb-irishpub:server:TipBoxPay",data)
        else
            print("Invalid value")
        end
    end
end)


-- # Customer Menu Events
RegisterNetEvent("qb-irishpub:client:CustomerTake",function(data)
    QBCore.Functions.TriggerCallback('qb-irishpub:server:WorkerCheck', function(amount)
        if amount >= Config.minOnDuty then 
            QBCore.Functions.TriggerCallback('qb-inventory:server:GetStashItems', function(StashItems)
                local a = {}
                for k,v in pairs(StashItems) do
                    hasItem,sellPrice=ItemCheck(v.name)
                    if hasItem then
                        table.insert(a,{name=v.name,label=v.label,amount=v.amount,price=sellPrice,index=k})
                    end
                end
                local foodBuyMenu = {
                    {
                        header = ""..LANG['CUSTOMER_TAKE_SOMETHING'].."",
                        isMenuHeader = true
                    }
                }
                for ki,vi in pairs(a) do
                    foodBuyMenu[#foodBuyMenu+1] = {
                        header = vi.label,
                        txt = { ""..LANG['TXT_PIECE']..""..vi.amount.."x <br>"..LANG["TXT_PER_UNIT"]..""..vi.price..""},
                        params = {
                            event = "qb-irishpub:client:ManyTake",
                            args = {
                                stashItems = StashItems,
                                avbItemName = vi.name,
                                avbItemLabel = vi.label,
                                avbItemAmount = vi.amount,
                                avbSellPrice = vi.price,
                                avbItemIndex = vi.index,
                            }
                        }
                    }

                end
                foodBuyMenu[#foodBuyMenu+1] = {
                    header = ""..LANG["CLOSE_MENU_TXT"].."",
                    txt = "",
                    params = {
                        event = "qb-menu:client:closeMenu"
                    }
                }
                exports['qb-menu']:openMenu(foodBuyMenu)
            end, "Stand"..Config.Jobname.."")
        else
            TriggerServerEvent("inventory:server:OpenInventory", "shop", ""..string.upper(Config.Jobname).." Shop",  Config.NPCShopItems)
        end
    end)
end)
RegisterNetEvent("qb-irishpub:client:ManyTake",function(val)
    local stash = val -- Storage stage data.
    local takePrice = val.avbSellPrice
    local drinksales = exports['qb-input']:ShowInput({
        header = ""..LANG["CUSTOMER_INPUT_HEADER"].."",
        submitText = ""..LANG["CUSTOMER_INPUT_SBMT_TXT"].."",
        inputs = {
          {
              text = ""..LANG["CUSTOMER_INPUT_HOW_MNY"].."", -- text you want to be displayed as a place holder
              name = "amount", -- name of the input should be unique otherwise it might override
              type = "number", -- type of the input
              isRequired = true -- Optional [accepted values: true | false] but will not submit the form if no value is inputted
          },
          {
            text = ""..LANG["CUSTOMER_INPUT_PYMENT_TYPE"].."", -- text you want to be displayed as a place holder
            name = "paymentType", -- name of the input should be unique otherwise it might override
            type = "radio", -- type of the input
            options = { -- The options (in this case for a radio) you want displayed, more than 6 is not recommended
                { value = "cash", text = ""..LANG["CUSTOMER_INPUT_PYMENT_TYPE_CASH"].."" }, -- Options MUST include a value and a text option
                { value = "bank", text = ""..LANG["CUSTOMER_INPUT_PYMENT_TYPE_BANK"].."" }  -- Options MUST include a value and a text option
            }
          },
       },
    })
    if drinksales ~= nil then
        local takeAmount = tonumber(drinksales.amount)
        local paymentType = drinksales.paymentType
        if takeAmount >= 1 and takeAmount ~=nil then
            TriggerEvent("qb-irishpub:client:TakeStashSave",val,takeAmount,paymentType)
        else
            print("Invalid value")
        end
    end
end)
-- # Customer Menu Router
RegisterNetEvent("qb-irishpub:client:CustomerMenu",function()
    CustomerMenu()
end)




-- #OnDuty / BossMenu Stand Event
RegisterNetEvent("qb-irishpub:client:RawProduct",function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Stash"..Config.Jobname.."", Config.RawProductItems)
end)

RegisterNetEvent("qb-irishpub:client:StorageStash",function()
    TriggerEvent("inventory:client:SetCurrentStash","Stash"..Config.Jobname.."")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash"..Config.Jobname.."", {
		maxweight = 4000000,
		slots = 500,
	})
end)

RegisterNetEvent("qb-irishpub:client:OpenStand",function()
    TriggerEvent("inventory:client:SetCurrentStash","Stand"..Config.Jobname.."")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stand"..Config.Jobname.."", {
		maxweight = 4000000,
		slots = 500,
	})
end)

RegisterNetEvent('qb-irishpub:client:OnDuty',function()
    if LocalPlayer.state.isLoggedIn or isLoggedIn then 
        onDuty  = not onDuty
        TriggerServerEvent("QBCore:ToggleDuty")
    end
end)

RegisterNetEvent("qb-irishpub:client:OpenBossMenu",function()
    TriggerEvent("qb-bossmenu:client:openMenu")
end)

-- # Handwash

RegisterNetEvent("qb-irishpub:client:HandWashing",function()
    HandWashing()
end)














RegisterNetEvent("qb-irishpub:client:TakeStashSave",function(val,amount,paymentType)
    if (val.avbItemAmount >= amount) then
        --Progress or emote
        if (val.avbItemAmount - amount) <= 0 then
            val.stashItems[val.avbItemIndex] = nil
        else
            val.avbItemAmount = (val.avbItemAmount - amount)
            val.stashItems[val.avbItemIndex].amount = val.avbItemAmount
        end
        TriggerServerEvent('qb-inventory:server:SaveStashItems',"Stand"..Config.Jobname.."", val.stashItems)
        TriggerServerEvent('qb-irishpub:server:CustomerTakeItem',val,amount,paymentType)
    end    
end)




CreateThread(function()
	local blip = AddBlipForCoord(Config.Blips.coords)
	SetBlipSprite(blip, Config.Blips.sprite)
	SetBlipDisplay(blip, Config.Blips.display)
	SetBlipScale(blip, Config.Blips.scale)
	SetBlipColour(blip, Config.Blips.color)
	SetBlipAsShortRange(blip, Config.Blips.shortrange)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(Config.Blips.blipName)
	EndTextCommandSetBlipName(blip)
end)



CreateThread(function ()
	while true do
		Citizen.Wait(2000)
		if handWash then
			Citizen.Wait(600000) --El yıkadıktan sonra ellerin pislenmme süresi/Time for hands to get dirty after washing hands
			handWash = false
		end 
	end
end)










AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        PlayerData = QBCore.Functions.GetPlayerData()
    end
end)