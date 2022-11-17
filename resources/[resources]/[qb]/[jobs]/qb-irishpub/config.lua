Config = {}

Config.Jobname = "irishpub"
Config.minOnDuty = 1  --- Min on duty
Config.SoundBoxScript = false -- If you using HassaricMLO or SoundBox script must be false.

Config.CloseSitKey = "ESCAPE"

Config.TipBox = true   --- If you want to share the tip with the business, activate it.
Config.TipRate = 0.1  --- % 0.1 = %10 This value can be a maximum of 40%. Because I don't think any more is ethical.

Config.BillCommand = "bill"
Config.BillCommandText = "Bill Menu"


Config.DefaultVolume = 0.1 -- DJBooth etc.




Config.IceAnimDict = "anim@amb@board_room@supervising@"
Config.IceAnim = "dissaproval_01_lo_amy_skater_01"


Config.BeerAnimDict = "anim@amb@casino@mini@drinking@bar@drink@heels@beer"
Config.BeerAnim = "intro_bartender"


Config.CocktailAnimDict = "anim@amb@board_room@supervising@"
Config.CocktailAnim = "dissaproval_01_lo_amy_skater_01"
-- If you test 
-- animDict = "anim@amb@casino@mini@drinking@bar@drink@heels@base",
-- anim = "intro_bartender",
-- flags = 49,

Config.SandwichAnimDict = "creatures@rottweiler@tricks@"
Config.SandwichAnim = "petting_franklin"

Config.CoffeAnimDict = "anim@amb@board_room@supervising@"
Config.CoffeAnim = "dissaproval_01_lo_amy_skater_01"

Config.GeneralAnimDict = "anim@amb@board_room@supervising@"
Config.GeneralAnim = "dissaproval_01_lo_amy_skater_01"


-- For Realistc Sound with InteractSounds
Config.SoundSettings = {
        Distance = 1,
        SoundVolume = 1,
        SoundLength = 5000 --- 5 Sec
}

Config.BeerSound = true
Config.BeerSoundName = "fill_beer"
Config.BeerFillProgTime = 4500


Config.CocktailSound = true
Config.CocktailSoundName = "shaker"
Config.CocktailProgTime = 5000


Config.IceBreakerSound = true
Config.IceBreakerSoundName = "icebreaker"
Config.IceBreakerProgTime = 4500

Config.CoffeSound = true
Config.CoffeSoundName = "coffee_machine"
Config.CoffeProgTime = 4500

Config.SandwichSound = true
Config.SandwichSoundName = "oven_sound"
Config.SandwichProgTime = 4500


Config.GeneralFillSound = false
Config.GeneralFillSoundName = "fill_general"
Config.GeneralFillProgTime = 4500





Config.Blips = {
    coords = vector3(838.15, -111.05, 79.77),
    sprite = 93,
    display = 4,
    scale = 0.7,
    color = 5,
    shortrange = true,
    blipName = "Irish Pub"
}

--- For Sound
Config.Locations = {
    ['soundbox'] = {
        ['radius'] = 5, -- The radius of the sound from the booth
        ['coords'] = vector3(840.18,-119.06, 78.85), -- Where the booth is located
        ['playing'] = false
    },
    ['djpad'] = {
        ['radius'] = 20, -- The radius of the sound from the booth
        ['coords'] = vector3(838.27, -110.99, 81.76), -- Where the booth is located
        ['playing'] = false
    },

}





Config.NPCShopItems = {
    label = "Irish Pub",
    slots = 15,
    items = {
        [1] = {
            name = "topbanana",
            price= 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "mimosa",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "melonball",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "appleeden",
            price = 50,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "junglejim",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "sangria",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "mojito",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "margarita",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "sexonthebeach",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "julep",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "50clbeerguinness",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "50clbeermurphy",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "50clbeermurphyred",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "50clbeeririshscout",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "50clbeersmithwick",
            price = 50,
            amount = 10,
	    info = {},
            type = "item",
            slot = 15,
        },                                     
    }
}

Config.WorkersellingItem = {
        ["topbanana"] = {
                labelName = "Top Banana",
                spawnName = "topbanana",
                sellPrice = 35,
        },
        ["mimosa"] = {
                labelName = "Mimosa",
                spawnName = "mimosa",
                sellPrice = 35,
        },
        ["melonball"] = {
                labelName = "Melon Ball",
                spawnName = "melonball",
                sellPrice = 35,
        },
        ["appleeden"] = {
                labelName = "Apple Eden",
                spawnName = "appleeden",
                sellPrice = 35,
        },
        ["junglejim"] = {
                labelName = "Jungle Jim",
                spawnName = "junglejim",
                sellPrice = 35,
        },
        ["sangria"] = {
                labelName = "Sangria",
                spawnName = "sangria",
                sellPrice = 35,
        },
        ["mojito"] = {
                labelName = "Mojito",
                spawnName = "mojito",
                sellPrice = 35,
        },
        ["margarita"] = {
                labelName = "Margarita",
                spawnName = "margarita",
                sellPrice = 35,
        },
        ["sexonthebeach"] = {
                labelName = "Sex on Beach",
                spawnName = "sexonthebeach",
                sellPrice = 35,
        },
        ["julep"] = {
                labelName = "Julep",
                spawnName = "julep",
                sellPrice = 35,
        },
        ["sandvic"] = {
                labelName = "Sandvic",
                spawnName = "sandvic",
                sellPrice = 35, 
        },
        ["50clbeerguinness"] = {
                labelName = "50 Cl Guinness Beer",
                spawnName = "50clbeerguinness",
                sellPrice = 35, 
        },
        ["50clbeermurphy"] = {
                labelName = "50 Cl Murphy",
                spawnName = "50clbeermurphy",
                sellPrice = 35, 
        },
        ["50clbeermurphyred"] = {
                labelName = "50 Cl Murphy Red",
                spawnName = "50clbeermurphyred",
                sellPrice = 35, 
        },
        ["50clbeeririshscout"] = {
                labelName = "50 Cl Irish Scout",
                spawnName = "50clbeeririshscout",
                sellPrice = 35, 
        },
        ["50clbeersmithwick"] = {
                labelName = "50 Cl Smithwick’s Ale",
                spawnName = "50clbeersmithwick",
                sellPrice = 35, 
        },
        ["americano"] = {
                labelName = "Americano",
                spawnName = "americano",
                sellPrice = 35, 
        },

}

Config.RawProductItems = {
    label = "Irish Pub Raw Product Shop",
    slots = 15,
    items = {
        [1] = {
            name = "plasticcup",
            price= 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "cocktailcream",
            price = 3,
            amount = 10,
	    info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "sugar",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "lime",
            price = 1,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "beer",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "whiskey",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "vodka",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "wine",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "orangejuice",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "cheese",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "bacon",
            price = 1,
            amount = 10,
	    info = {},
            type = "item",
            slot = 11,
        },        
    }
}

Config.CoffeMenuItems = {
        ["americano"] = {
                labelName = "☕ Americano",
                spawnName = "americano",
                item = {first= '',
                        second= '',
                        third = ''},
                costs = {first= 1,
                        second= 0,
                        third = 0},
                outputAmount = 1,
        },       
}
Config.BeerMenuItems = {
    ["33clbeer"] = {
        labelName = "33 Cl Beer",
        spawnName = "33clbeer",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["50clbeer"] = {
        labelName = "50 Cl Beer",
        spawnName = "50clbeer",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["50clbeerguinness"] = {
        labelName = "50 Cl Guinness Beer",
        spawnName = "50clbeerguinness",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["50clbeermurphy"] = {
        labelName = "50 Cl Murphy",
        spawnName = "50clbeermurphy",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["50clbeermurphyred"] = {
        labelName = "50 Cl Murphy Red",
        spawnName = "50clbeermurphyred",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["50clbeeririshscout"] = {
        labelName = "50 Cl Irish Scout",
        spawnName = "50clbeeririshscout",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["50clbeersmithwick"] = {
        labelName = "50 Cl Smithwick’s Ale",
        spawnName = "50clbeersmithwick",
        item = {first= 'plasticcup',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
}

Config.SandwichMenuItems = {
    ["sandvic"] = {
        labelName = "🥪 Irish Sandvic",
        spawnName = "irishsandvic",
        item = {first= 'cheese',
                second= 'bacon',
                third = ''},
        costs = {first= 1,
                second= 1,
                third = 0},
        outputAmount = 1,
    },        
}



Config.RumCockTailMenuItems = {
    ["15clRum"] = {
        labelName = "1.5cl Rum",
        spawnName = "15clrum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["3clRum"] = {
        labelName = "3cl Rum",
        spawnName = "3clrum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["45clRum"] = {
        labelName = "4.5cl Rum",
        spawnName = "45clrum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["6clRum"] = {
        labelName = "6cl Rum",
        spawnName = "6clrum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["75clRum"] = {
        labelName = "7.5cl Rum",
        spawnName = "75clrum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    }, 
    ["1crum"] = {
        labelName = "1 Cup Rum",
        spawnName = "1cuprum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },              
}

Config.RumDrinkMenuItems = {
    ["1crum"] = {
        labelName = "1 Cup Rum",
        spawnName = "1cuprum",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },              
}



Config.VodkaCockTailMenuItems = {
    ["15clvodka"] = {
        labelName = "1.5cl Vodka",
        spawnName = "15clvodka",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["3clvodka"] = {
        labelName = "3cl Vodka",
        spawnName = "3clvodka",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["45clvodka"] = {
        labelName = "4.5cl Vodka",
        spawnName = "45clvodka",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["6clvodka"] = {
        labelName = "6cl Vodka",
        spawnName = "6clvodka",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["75clvodka"] = {
        labelName = "7.5cl vodka",
        spawnName = "75clvodka",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    }, 
}
Config.VodkaDrinksMenuItems = {
    ["1cvodka"] = {
        labelName = "1 Cup Vodka",
        spawnName = "1cupvodka",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}



Config.WineCockTailMenuItems = {
    ["15clwine"] = {
        labelName = "1.5cl Wine",
        spawnName = "15clwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["3clwine"] = {
        labelName = "3cl Wine",
        spawnName = "3clwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["45clwine"] = {
        labelName = "4.5cl Wine",
        spawnName = "45clwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["6clwine"] = {
        labelName = "6cl Wine",
        spawnName = "6clwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["75clwine"] = {
        labelName = "7.5cl Wine",
        spawnName = "75clwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    }, 
    ["1cwine"] = {
        labelName = "1 Cup wine",
        spawnName = "1cupwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}

Config.WineDrinksMenuItems = {
    ["1cwine"] = {
        labelName = "🍷 Wine",
        spawnName = "1cupwine",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}


Config.WhiskeyCockTailMenuItems = {
    ["15clwhiskey"] = {
        labelName = "1.5cl Whiskey",
        spawnName = "15clwhiskey",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["3clwhiskeye"] = {
        labelName = "3cl Whiskey",
        spawnName = "3clwhiskey",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["45clwhiskey"] = {
        labelName = "4.5cl Whiskey",
        spawnName = "45clwhiskey",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["6clwhiskey"] = {
        labelName = "6cl Whiskey",
        spawnName = "6clwhiskey",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["75clwhiskey"] = {
        labelName = "7.5cl Whiskey",
        spawnName = "75clwhiskey",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}

Config.WhiskeyDrinksMenuItems = {
    ["1cwhiskey"] = {
        labelName = "🥃 Whiskey",
        spawnName = "1cupwhiskey",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["dead_rabbit_irish"] = {
        labelName = "🥃 Dead Rabbit Irish",
        spawnName = "dead_rabbit_irish",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["tullamoredew"] = {
        labelName = "🥃 Tullamore D.E.W.",
        spawnName = "tullamoredew",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["redbreast15year"] = {
        labelName = "🥃 Redbreast 15 Year",
        spawnName = "redbreast15year",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 1,
                second= 0,
                third = 0},
        outputAmount = 1,
    },
    ["bushmillsoriginal"] = {
        labelName = "🥃 Bushmills Original",
        spawnName = "bushmillsoriginal",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 1,
    },       
}

Config.GinCockTailMenuItems = {
    ["15clgin"] = {
        labelName = "1.5cl gin",
        spawnName = "15clgin",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["3clgin"] = {
        labelName = "3cl gin",
        spawnName = "3clgin",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["45clgin"] = {
        labelName = "4.5cl gin",
        spawnName = "45clgin",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["6clgin"] = {
        labelName = "6cl gin",
        spawnName = "6clgin",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["75clgin"] = {
        labelName = "7.5cl gin",
        spawnName = "75clgin",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    }, 
}

Config.GinDrinksMenuItems = {
    ["1cgin"] = {
        labelName = "🥃 Gin",
        spawnName = "1cupgin",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}



Config.TequilaCockTailMenuItems = {
    ["15cltequila"] = {
        labelName = "1.5cl Tequila",
        spawnName = "15cltequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["3cltequilae"] = {
        labelName = "3cl Tequila",
        spawnName = "3cltequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["45cltequila"] = {
        labelName = "4.5cl Tequila",
        spawnName = "45cltequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["6cltequila"] = {
        labelName = "6cl Tequila",
        spawnName = "6cltequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["75cltequila"] = {
        labelName = "7.5cl Tequila",
        spawnName = "75cltequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    }, 
    ["1ctequila"] = {
        labelName = "1 Cup Tequila",
        spawnName = "1cuptequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}
Config.TequilaDrinksMenuItems = {
    ["1ctequila"] = {
        labelName = "🥃 Tequila",
        spawnName = "1cuptequila",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },  
}

Config.LiqueurMenuItems = {
    ["bananaliqueur"] = {
        labelName = "Banana Liqueur",
        spawnName = "bananaliqueur",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["melonliqueur"] = {
        labelName = "Melon Liqueur",
        spawnName = "melonliqueur",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
    ["appleliqueur"] = {
        labelName = "Apple Liqueur",
        spawnName = "appleliqueur",
        item = {first= '',
                second= '',
                third = ''},
        costs = {first= 0,
                second= 0,
                third = 0},
        outputAmount = 5,
    },
}
Config.CocktailMenuItems = {
    ["TopBanana"] = {
        labelName = "🍸Top Banana",
        spawnName = "topbanana",
        item = {first= '3clvodka',
                second= 'bananaliqueur',
                third = '3clgin'},
        costs = {first= 1,
                second= 1,
                third = 1},
        outputAmount = 2,
    },    
    ["mimosa"] = {
        labelName = "🍸Mimosa",
        spawnName = "mimosa",
        item = {first= '6clwine',
                second= 'orangejuice',
                third = ''},
        costs = {first= 1,
                second= 1,
                third = 0},
        outputAmount = 2,
    }, 
    ["melonball"] = {
        labelName = "🍸 Melon Ball",
        spawnName = "melonball",
        item = {first= '3clvodka',
                second= 'melonliqueur',
                third = 'orangejuice'},
        costs = {first= 1,
                second= 1,
                third = 1},
        outputAmount = 2,
    }, 
    ["appleeden"] = {
        labelName = "🍸 Apple Eden",
        spawnName = "appleeden",
        item = {first= '45clvodka',
                second= 'appleliqueur',
                third = 'waterice'},
        costs = {first= 1,
                second= 1,
                third = 1},
        outputAmount = 2,
    },
    ["junglejim"] = {
        labelName = "🍸 Jungle Jim",
        spawnName = "junglejim",
        item = {first= '3clvodka',
                second= 'bananaliqueur',
                third = 'cocktailcream'},
        costs = {first= 1,
                second= 1,
                third = 1},
        outputAmount = 2,
    }, 
    ["sangria"] = {
        labelName = "🍸 Sangria",
        spawnName = "sangria",
        item = {first= '75clwine',
                second= 'sugar',
                third = 'lime'},
        costs = {first= 1,
                second= 2,
                third = 2},
        outputAmount = 2,
    },
    ["mojito"] = {
        labelName = "🍸 Mojito",
        spawnName = "mojito",
        item = {first= '75clrum',
                second= 'sugar',
                third = 'lime'},
        costs = {first= 1,
                second= 2,
                third = 2},
        outputAmount = 2,
    }, 
    ["margarita"] = {
        labelName = "🍸 Margarita",
        spawnName = "margarita",
        item = {first= '45cltequila',
                second= 'lime',
                third = 'waterice'},
        costs = {first= 1,
                second= 2,
                third = 2},
        outputAmount = 2,
    }, 
    ["sexonthebeach"] = {
        labelName = "🍸 Sex On Beach",
        spawnName = "sexonthebeach",
        item = {first= '6clvodka',
                second= '3cltequila',
                third = 'orangejuice'},
        costs = {first= 1,
                second= 1,
                third = 1},
        outputAmount = 2,
    }, 
    ["julep"] = {
        labelName = "🍸 Julep",
        spawnName = "julep",
        item = {first= '45clwhiskey',
                second= 'sugar',
                third = 'waterice'},
        costs = {first= 1,
                second= 1,
                third = 1},
        outputAmount = 2,
    }, 
}





