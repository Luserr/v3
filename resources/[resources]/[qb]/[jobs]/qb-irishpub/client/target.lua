local QBCore = exports['qb-core']:GetCoreObject()

local LANG = Locale.Languages[Locale.Language]

CreateThread(function()


    exports['qb-target']:AddBoxZone("IrishPubBossMenu", vector3(830.89, -117.16, 80.36), 1.00, 1.70, {
        name="IrishPubBossMenu",
        heading=330.00,
        debugPoly=false,
        minZ=80.18834,
        maxZ=80.88834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:OpenBossMenu",
                    icon = "fas fa-desktop",
                    label = ""..LANG["MANAGEMENT_LABEL"].."",
                    job = Config.Jobname
                },
                {
                    type = "client",
                    event = "qb-irishpub:client:OnDuty",
                    icon = "fas fa-desktop",
                    label = ""..LANG["ONDUTY_LABEL"].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_Cashi", vector3(834.525, -115.7592, 79.69), 0.40, 0.40, {
        name="IrishPub_Cashi",
        heading=149.999,
        debugPoly=false,
        minZ=79.64834,
        maxZ=80.0534,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:BillingCashier",
                    icon = "fas fa-desktop",
                    label = ""..LANG["CASHIER_LABEL"].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_CoffeeMachine", vector3(832.8389, -114.68135, 79.746), 0.40, 0.40, {
        name="IrishPub_CoffeeMachine",
        heading=149.999,
        debugPoly=false,
        minZ=79.60834,
        maxZ=80.19834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:CoffeeMenu",
                    icon = "fas fa-coffee",
                    label = ""..LANG["TAKE_COFFEE"].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })


    exports['qb-target']:AddBoxZone("IrishPub_Beer", vector3(837.92, -114.8, 79.86), 0.45, 0.60, {
        name="IrishPub_Beer",
        heading=330.0,
        debugPoly=false,
        minZ=79.35834,
        maxZ=80.57834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:TakeBeer",
                    icon = "fas fa-beer",
                    label = ""..LANG['TAKE_BEER'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_Beer_1", vector3(835.75, -113.63, 79.97), 0.45, 0.60, {
        name="IrishPub_Beer_1",
        heading=330.0,
        debugPoly=false,
        minZ=79.35834,
        maxZ=80.57834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:TakeBeer",
                    icon = "fas fa-beer",
                    label = ""..LANG['TAKE_BEER'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })

    ---Left
    exports['qb-target']:AddBoxZone("IrishPub_Rum_Left", vector3(836.18, -116.66, 80.271), 0.12, 0.15, {
        name="IrishPub_Rum_Left",
        heading=149.999,
        debugPoly=false,
        minZ=80.27134,
        maxZ=80.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:RumSelectionMenu",
                    icon = "fas fa-glass-martini",
                    label = ""..LANG['TAKE_RUM'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })  
    exports['qb-target']:AddBoxZone("IrishPub_Whiskey_Left",vector3(836.0219, -116.5662, 80.271), 0.13, 0.15, {
        name="IrishPub_Whiskey_Left",
        heading=149.999,
        debugPoly=false,
        minZ=80.27134,
        maxZ=80.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:WhiskeySelectionMenu",
                    icon = "fas fa-glass-whiskey",
                    label = ""..LANG['TAKE_WHISKEY'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_Vodka_Left", vector3(835.872, -116.480, 80.2712), 0.13, 0.15, {
        name="IrishPub_Vodka_Left",
        heading=149.999,
        debugPoly=false,
        minZ=80.27134,
        maxZ=80.77834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:VodkaSelectionMenu",
                    icon = "fas fa-glass-martini",
                    label = ""..LANG['TAKE_VODKA'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    --- Right
    exports['qb-target']:AddBoxZone("IrishPub_Rum_Right", vector3(831.3290, -113.8571, 80.271), 0.12, 0.15, {
        name="IrishPub_Rum_Right",
        heading=149.999,
        debugPoly=false,
        minZ=80.27134,
        maxZ=80.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:RumSelectionMenu",
                    icon = "fas fa-glass-martini",
                    label = ""..LANG['TAKE_RUM'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_Whiskey_Right", vector3(831.17474, -113.7680, 80.271), 0.13, 0.15, {
        name="IrishPub_Whiskey_Right",
        heading=149.999,
        debugPoly=false,
        minZ=80.27134,
        maxZ=80.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:WhiskeySelectionMenu",
                    icon = "fas fa-glass-whiskey",
                    label = ""..LANG['TAKE_WHISKEY'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_Vodka_Right", vector3(831.0118, -113.6776, 80.27), 0.13, 0.15, {
        name="IrishPub_Vodka_Right",
        heading=149.999,
        debugPoly=false,
        minZ=80.27134,
        maxZ=80.76834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:VodkaSelectionMenu",
                    icon = "fas fa-glass-martini",
                    label = ""..LANG['TAKE_VODKA'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })

    exports['qb-target']:AddBoxZone("IrishPub_Wine_1", vector3(837.007, -117.367, 80.70), 0.35, 0.95, {
        name="IrishPub_Wine_1",
        heading=149.999,
        debugPoly=false,
        minZ=80.3034,
        maxZ=80.99834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:WineSelectionMenu",
                    icon = "fas fa-wine-glass",
                    label = ""..LANG['TAKE_WINE'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })

    
    exports['qb-target']:AddBoxZone("IrishPub_Gin", vector3(835.58, -116.28, 79.52), 0.6, 1.1, {
        name="IrishPub_Gin",
        heading=149.999,
        debugPoly=false,
        minZ=79.02034,
        maxZ=79.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:GinSelectionMenu",
                    icon = "fas fa-blender",
                    label = ""..LANG["TAKE_GIN"].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    exports['qb-target']:AddBoxZone("IrishPub_Tequila", vector3(834.49, -115.6, 79.52), 0.6, 1.1, {
        name="IrishPub_Tequila",
        heading=149.999,
        debugPoly=false,
        minZ=79.02034,
        maxZ=79.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irispub:client:TequilaSelectionMenu",
                    icon = "fas fa-blender",
                    label =""..LANG["TAKE_TEQUILA"].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    
    exports['qb-target']:AddBoxZone("IrishPub_Liquor", vector3(836.551,-114.5906,79.5284), 0.6, 1.1, {
        name="IrishPub_Liquor",
        heading=149.999,
        debugPoly=false,
        minZ=79.02034,
        maxZ=79.67834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:LiqueurMenu",
                    icon = "fas fa-blender",
                    label = ""..LANG["TAKE_LIQUEUR"].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })


    exports['qb-target']:AddBoxZone("IrishPub_Cocktail_0", vector3(836.551,-114.5906,79.8484), 0.38, 1.75, {
        name="IrishPub_Cocktail_0",
        heading=149.999,
        debugPoly=false,
        minZ=79.80034,
        maxZ=79.99834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:CocktailMenu",
                    icon = "fas fa-cocktail",
                    label = ""..LANG['DOING_COCKTAIL'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })

    exports['qb-target']:AddBoxZone("IrishPub_HandWash",vector3(825.0, -110.49, 79.73), 1.2, 1.2, {
        name="IrishPub_HandWash",
        heading=150.0,
        debugPoly=false,
        minZ=79.02034,
        maxZ=80.33834,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-irishpub:client:HandWashing",
                    icon = "fas fa-hands-wash",
                    label = ""..LANG['HANDWASH_LABEL'].."",
                    job = Config.Jobname
                },
            },
            distance = 2.5
    })
    -- ##TODO
    -- exports['qb-target']:AddBoxZone("IrishPub_BottleDrinks", vector3(833.49, -115.07, 79.8), 0.8, 0.8, {
    --     name="IrishPub_BottleDrinks",
    --     heading=149.999,
    --     debugPoly=false,
    --     minZ=79.52034,
    --     maxZ=80.23834,
    --     }, {
    --         options = {
    --             {
    --                 type = "client",
    --                 event = "qb-irishpub:client:TakeBeerBottle",
    --                 icon = "fas fa-blender",
    --                 label = ""..LANG["TAKE_BOTTLE"].."",
    --                 job = Config.Jobname
    --             },
    --         },
    --         distance = 2.5
    -- })


    exports["qb-target"]:AddBoxZone("IrishPubIceBreaker", vector3(838.49, -115.57, 79.41), 1.2, 0.8, {
		name="IrishPubIceBreaker",
		heading=330.0,
		debugPoly=false,
		minZ=79.00,
		maxZ=79.75
		}, {
			options = {
				{
					event = "qb-irishpub:client:TakeIce",
					icon = "fas fa-temperature-low",
					label = ""..LANG["TAKE_ICE"].."",
                    job = Config.Jobname
				},
	
			},
			distance = 2.5
	})
	exports["qb-target"]:AddBoxZone("IrishPub_Stand", vector3(836.84, -114.04, 79.84), 0.7, 0.8, {
		name="IrishPub_Stand",
		heading=330.0,
		debugPoly=false,
		minZ=79.55,
		maxZ=79.98
		}, {
			options = {
				{
					event = "qb-irishpub:client:CustomerMenu",
					icon = "fas fa-shopping-basket",
					label = ""..LANG["INTERACT_TEQUILA"].."",
				},
                {
					event = "qb-irishpub:client:OpenStand",
					icon = "fas fa-box-open",
					label = ""..LANG["PUT_ITEM_STAND"].."",
                    job = Config.Jobname
				},

	
			},
			distance = 2.5
	})
	exports["qb-target"]:AddBoxZone("IrishPub_Storage", vector3(826.25, -111.45, 79.76), 1.1, 1.5, {
		name="IrishPub_Storage",
		heading=150.0,
		debugPoly=false,
		minZ=79.00,
		maxZ=81.10
		}, {
			options = {
				{
                    event = "qb-irishpub:client:StorageStash",
					icon = "fas fa-box-open",
					label = ""..LANG["STORAGE_LABEL"].."",
                    job = Config.Jobname
				},
	
				{
					event = "qb-irishpub:client:RawProduct",
					icon = "fas fa-shopping-cart",
                    label = ""..LANG["RAW_PRODUCT_LABEL"].."",
                    job = Config.Jobname
				},
	
			},
			distance = 2.5
	})

	exports["qb-target"]:AddBoxZone("IrishPub_Sandvic", vector3(826.279, -108.776, 79.6838), 0.5, 0.5, {
		name="IrishPub_Sandvic",
		heading=335.0,
		debugPoly=false,
		minZ=79.60,
		maxZ=79.88
		}, {
			options = {
				{
                    event = "qb-irishpub:client:SandvicMenu",
					icon = "fas fa-hamburger",
					label = "Doing Sandvic",
                    job = Config.Jobname
				},
			},
			distance = 2.5
	})

    -- ##TODO
    -- exports["qb-target"]:AddBoxZone("IrishPub_Delivery", vector3(825.9, -112.7, 80.5), 0.5, 0.8, {
	-- 	name="IrishPub_Delivery",
	-- 	heading=330.0,
	-- 	debugPoly=true,
	-- 	minZ=80.40,
	-- 	maxZ=81.08
	-- 	}, {
	-- 		options = {
	-- 			{
    --                 event = "qb-irishpub:client:",
	-- 				icon = "fas fa-box-open",
	-- 				label = "Take a Vehicle",
    --                 job = Config.Jobname
	-- 			},
	-- 		},
	-- 		distance = 2.5
	-- })

    exports["qb-target"]:AddBoxZone("IrishPubDJPad", vector3(832.06, -111.96, 79.85), 0.6, 1.5, {
        name="IrishPubDJPad",
        heading=330.7,
        debugPoly=false,
        minZ=79.80,
        maxZ=80.00
        }, {
            options = {
                {
                    event = "qb-irishpub:client:DJPad",
                    icon = "fas fa-music",
                    label = ""..LANG["DJPAD_LABEL"].."",
                    zones = "djpad",
                },
            },
            distance = 2.5
    })         
    exports["qb-target"]:AddBoxZone("IrishPubSoundBox", vector3(840.18,-119.06, 78.85), 1.3, 1.0, {
        name="IrishPubSoundBox",
        heading=149.99,
        debugPoly=false,
        minZ=77.25,
        maxZ=81.20
        }, {
            options = {
            {
                event = "qb-irishpub:client:DJPad",
                icon = "fas fa-music",
                label = ""..LANG["SOUNDBOX_LABEL"].."",
                zones = "soundbox",
            },
        },
        distance = 2.5
    })
end)

