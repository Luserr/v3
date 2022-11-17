Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level
Config.RagdollChance = 1
Config.densityMultipliers = {}

ConsumablesEat = {
    --starbucks
     ["breakfastsandwich"] = math.random(40, 60),
     --burgershot
     ["burger-bleeder"] = math.random(34, 54),
     ["burger-moneyshot"] = math.random(37, 56),
     ["burger-heartstopper"] = math.random(45, 65),
     ["burger-meatfree"] = math.random(30, 50),
     ["burger-torpedo"] = math.random(35, 52),
     ["burger-fries"] = math.random(34, 54),
     ["burger-chickennuggets"] = math.random(34, 54),
     ["burger-onionrings"] = math.random(34, 54),
     ["burger-icecream"] = math.random(34,54),
     ["burger-donut"] = math.random(34, 54),
     ["burger-donutchoc"] = math.random(30, 40),
     ["burger-donutcherry"] = math.random(30, 40),
     ["burger-donutlemon"] = math.random(30, 40),
     ["burger-donutglaze"] = math.random(30, 40),
     ["burger-creampie"] = math.random(30, 40),
    ["sandwich"] = math.random(5, 10),
    ["tosti"] = math.random(5, 10),
    ["twerks_candy"] = math.random(5, 10),
    ["snikkel_candy"] = math.random(5, 10),
    ["uwupancake"] = math.random(40, 50),
    ["uwubmochi"] = math.random(30, 40),
    ["uwupmochi"] = math.random(40, 50),
    ["uwugmochi"] = math.random(40, 50),
    ["uwuomochi"] = math.random(40, 50),
    ["uwurmochi"] = math.random(40, 50),
    ["uwuvanillasandwich"] = math.random(40, 50),
    ["uwuhamcheesesandwich"] = math.random(40, 50),
    ["uwuchocolatesandwich"] = math.random(40, 50),
    ["uwustrawberrysandwich"] = math.random(40, 50),
    ["uwumisosoup"] = math.random(40, 50),
    ["uwunekocake"] = math.random(40, 50),
    ["uwubento"] = math.random(40, 50),
    ["uwuriceball"] = math.random(40, 50),
    ["uwumiso"] = math.random(40, 50),
    ["uwucake"] = math.random(40, 50),
    ["uwunekocookie"] = math.random(40, 50),
    ["uwunekodonut"] = math.random(40, 50),
    ["uwupancakes"] = math.random(40, 50),
    ["uwurice"] = math.random(30, 40),
    ["uwublueberry"] = math.random(30, 40),
    ["uwustrawberry"] = math.random(30, 40),
    ["uwuorange"] = math.random(30, 40),
    ["irishsandvic"] = math.random(20, 40), 
    ["apple"] = math.random(10, 20),
    ["beef"] = math.random(35, 50),
    ["slicedpie"] = math.random(10, 20),
    ["corncob"] = math.random(25, 40),
    ["canofcorn"] = math.random(35, 50),
    ["grapes"] = math.random(10, 20),
    ["greenpepper"] = math.random(10, 20),
    ["chillypepper"] = math.random(10, 20),
    ["tomato"] = math.random(10, 20),
    ["tomatopaste"] = math.random(25, 40),
    ["cooked_bacon"] = math.random(35, 50),
    ["cooked_sausage"] = math.random(35, 50),
    ["cooked_pork"] = math.random(35, 50),
    ["cooked_ham"] = math.random(35, 50),
    ["limeysdonut"] = math.random(10, 25),
    ["limeysdonut2"] = math.random(10, 25),
    ["limeysgum"] = math.random(10, 25),
    ["limeyschocolate"] = math.random(10, 25),
    ["limeyschocolate2"] = math.random(10, 25),
    ["lclemonlobster"] = math.random(30, 50),
    ["lccheeseburger"] = math.random(30, 50),
    ["lcsausagedog"] = math.random(30, 50),
    ["lcgumbo"] = math.random(40, 50),
    ["lcoxtails"] = math.random(40, 50),
    ["lcmaccheesy"] = math.random(30, 50),
    ["lchotcakes"] = math.random(30, 50),
    ["lcricebowl"] = math.random(30, 50),
    ["lcramennoodle"] = math.random(30, 50),
    ["lcquickpizza"] = math.random(30, 50),
    ["lcribs"] = math.random(40, 50),
    ["lclegquarter"] = math.random(40, 50),
    ["lcsteak"] = math.random(40, 50),
    ["lcgrillcorn"] = math.random(30, 50),
    ["lcgrillveggies"] = math.random(30, 50),
    ["lctoast"] = math.random(30, 50),
    ["lcpoptart"] = math.random(20, 40),
    ["lcwaffle"] = math.random(30, 50),
    ["lctoasti"] = math.random(30, 50),
    ["lchamtoastie"] = math.random(40, 50),
    ["lcfriedchicken"] = math.random(40, 50),
    ["lccheesesticks"] = math.random(30, 50),
    ["lcfrenchfries"] = math.random(40, 50),
    ["lclambchops"] = math.random(40, 50),
    ["lcfriedfish"] = math.random(40, 50),
    ["lcsalmon"] = math.random(40, 50),
    ["lcbstirfry"] = math.random(40, 50),
    ["lcchickensand"] = math.random(40, 50),
    ["lcbffriedrice"] = math.random(40, 50),
    ["lcckfriedrice"] = math.random(35, 54),
    ["lcapplesauce"] = math.random(20, 40),
    ["lcnanacream"] = math.random(30, 40),
    ["lcberrycream"] = math.random(30, 40),
    ["lcchoccream"] = math.random(30, 40),
    ["lcbpudding"] = math.random(40, 50),
    ["beansontoast"] = math.random(100, 200),
    ["tq_banana_nut"] = math.random(20, 40),
	["tq_chocolatecup"] = math.random(20, 40),
	["tq_strawberrycup"] = math.random(20, 40),
    ["gyoza"] = math.random(40, 50),
    ["sushi"] = math.random(30, 50),
    ["ramen"] = math.random(40, 60),
}

ConsumablesDrink = {
    ["blackcoffee"] = math.random(40, 60),
    ["frappuccino"] = math.random(40, 60),
    ["water_bottle"] = math.random(12, 15),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(12, 25),
    ["nekolatte"] = math.random(20, 40),
    ["bobatea"] = math.random(27, 40),
    ["bbobatea"] = math.random(27, 40),
    ["gbobatea"] = math.random(27, 40),
    ["obobatea"] = math.random(27, 40),
    ["pbobatea"] = math.random(27, 40),
    ["milk"] = math.random(15, 20),
    ["americano"] = math.random(20, 40),
    ['burger-milkshake'] = math.random(41, 50),
    ['burger-softdrink'] = math.random(35, 50),
    ["apple_juice"] = math.random(25, 45),
    ["grapejuice"] = math.random(25, 45),
    ["hotsauce"] = math.random(10, 15),
    ["uwusake"] = math.random(10, 15),
    ["uwubobatea"] = math.random(10, 15),
    ['uwucoffee'] = math.random(20, 30),
    ["cherrydrink"] = math.random(55, 80),
    ["lemondrink"] = math.random(55, 80),
    ["limedrink"] = math.random(55, 80),
    ["orangedrink"] = math.random(55, 80),
    ["watermelondrink"] = math.random(55, 80),
    ["pinacolada"] = math.random(55, 65),
    ["lcgrapejuice"] = math.random(35, 54),
    ["lcapplejuice"] = math.random(35, 54),
    ["lcorangejuice"] = math.random(35, 54),
    ["lcnanasmoothie"] = math.random(35, 54),
    ["lcberrysmoothie"] = math.random(35, 54),
    ["lccuptea"] = math.random(35, 54),
    ["lccupcoffee"] = math.random(35, 54),
    ["lchotcocoa"] = math.random(35, 54),
    ["lcgreentea"] = math.random(35, 54),
    ["lccappucino"] = math.random(35, 54),
    ["uwuhotchocolate"] = math.random(35, 54),
    ["uwubbobatea"] = math.random(35, 54),
    ["uwugbobatea"] = math.random(35, 54),
    ["uwurbobatea"] = math.random(35, 54),
    ["uwuobobatea"] = math.random(35, 54),
    ["uwupbobatea"] = math.random(35, 54),
    ["uwucoffee"] = math.random(35, 54),	
    ["uwusake"] = math.random(35, 54),
    ["uwuhotchocolate"] = math.random(35, 54),
    ["uwurbobatea"] = math.random(35, 54),
    ["uwuuwucapuchino"] = math.random(35, 54),
    ["tq_berry_hydrating"] = math.random(20, 40),
    ["tq_green_dream"] = math.random(20, 40),
    ["tq_island_breeze"] = math.random(20, 40),
    ["tq_just_peachy"] = math.random(20, 40),
    ["tq_watermelon_dream"] = math.random(20, 40),
    ["tq_ban_straw_juice"] = math.random(20, 40),
    ["tq_banana_juice"] = math.random(20, 40),
    ["tq_kiwi_juice"] = math.random(20, 40),
    ["tq_strawberry_juice"] = math.random(20, 40),
    ["tq_orange_juice"] = math.random(20, 40),
    ["sake"] = math.random(31, 40),
    ["greentea"] = math.random(25, 40),
}

ConsumablesAlcohol = {
    ["whiskey"] = math.random(15, 20),
    ["beer"] = math.random(15, 20),
    ["vodka"] = math.random(15, 20),
    ["sake"] = math.random(20, 40),
    ["topbanana"] = math.random(20, 40),
    ["mimosa"] = math.random(20, 40),
    ["melonball"] = math.random(20, 40),
    ["appleeden"] = math.random(20, 40),
    ["junglejim"] = math.random(20, 40),
    ["sangria"] = math.random(20, 40),
    ["mojito"] = math.random(20, 40),
    ["margarita"] = math.random(20, 40),
    ["sexonthebeach"] = math.random(20, 40),
    ["julep"] = math.random(20, 40),
    ["33clbeer"] = math.random(20, 40),
    ["50clbeer"] = math.random(20, 40),
    ["paradisecocktail"] = math.random(75, 100),
    ["cherrycocktail"] = math.random(50, 75),
    ["applecocktail"] = math.random(50, 75),
    ["bananacocktail"] = math.random(50, 75),
    ["kiwicocktail"] = math.random(50, 75),
    ["wine"] = math.random(50, 75),
    --- ###If you using qua-tequilala after this line add only
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
    ['burger-slurry'] = math.random(20, 40),
    ["tq_cocktail"] = math.random(20, 30),
	["tq_coconut_drink"] = math.random(30, 40),
	["tq_island_fantasy"] = math.random(20, 40),
	["tq_kamikaze"] = math.random(20, 40),
	["tq_redhot_daquiri"] = math.random(20, 40),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
    }
}

Config.BlacklistedVehs = {
    ['SHAMAL'] = true,
    ['JET'] = true,
    ['LAZER'] = true,
    ['BUZZARD'] = true,
    ['BUZZARD2'] = true,
    ['ANNIHILATOR'] = true,
    ['SAVAGE'] = true,
    ['TITAN'] = true,
    ['RHINO'] = true,
    ['FIRETRUK'] = true,
    ['MULE'] = true,
    ['MAVERICK'] = true,
    ['BLIMP'] = true,
    ['AIRTUG'] = true,
    ['CAMPER'] = true,
    ['HYDRA'] = true,
    ['OPPRESSOR'] = true,
    ['technical3'] = true,
    ['insurgent3'] = true,
    ['apc'] = true,
    ['tampa3'] = true,
    ['trailersmall2'] = true,
    ['halftrack'] = true,
    ['hunter'] = true,
    ['vigilante'] = true,
    ['akula'] = true,
    ['barrage'] = true,
    ['khanjali'] = true,
    ['caracara'] = true,
    ['blimp3'] = true,
    ['menacer'] = true,
    ['oppressor2'] = true,
    ['scramjet'] = true,
    ['strikeforce'] = true,
    ['cerberus'] = true,
    ['cerberus2'] = true,
    ['cerberus3'] = true,
    ['scarab'] = true,
    ['scarab2'] = true,
    ['scarab3'] = true,
    ['rrocket'] = true,
    ['ruiner2'] = true,
    ['BESRA'] = true,
    ['stromberg'] = true,
    ['cargoplane'] = true,
    ['voltic2'] = true,
    ['Toreador'] = true,
    ['Kosatka'] = true,
    ['technical2'] = true,
    ['technical'] = true,
    ['alkonost'] = true,
    ['chernobog'] = true,
    ['annihilator2'] = true,
    ['minitank'] = true,
    ['bombushka'] = true,
    ['volatol'] = true,
    ['tuga'] = true,
    ['tug'] = true,
    ['patrolboat'] = true,
    ['valkyrie'] = true,
}

Config.BlacklistedPeds = {
    ['s_m_y_ranger_01'] = true,
    ['s_m_y_sheriff_01'] = true,
    ['s_m_y_cop_01'] = true,
    ['s_f_y_sheriff_01'] = true,
    ['s_f_y_cop_01'] = true,
    ['s_m_y_hwaycop_01'] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}


Config.populationDensity = 0.8

Config.antiGhostDebug = false
Config.antiGhostYeetVehicles = true
Config.antiGhostScaleX = 10.0
Config.antiGhostScaleY = 5.0

Config.VendingMachines = {
    ['drinks'] = {
        ['Label'] = 'Drinks',
        ['Items'] = {
            [1] = {
                ['name'] = "kurkakola",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 1,
            },
            [2] = {
                ['name'] = "water_bottle",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 2,
            },
        }
    },
    ['candy'] = {
        ['Label'] = 'Fast Eating',
        ['Items'] = {
            [1] = {
                ['name'] = "twerks_candy",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 1,
            },
            [2] = {
                ['name'] = "snikkel_candy",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 2,
            },
            [3] = {
                ['name'] = "sandwich",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 3,
            },
        }
    },
    ['coffee'] = {
        ['Label'] = 'Coffee',
        ['Items'] = {
            [1] = {
                ['name'] = "coffee",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 1,
            },
        }
    },
    ['water'] = {
        ['Label'] = 'Water',
        ['Items'] = {
            [1] = {
                ['name'] = "water_bottle",
                ['price'] = 4,
                ['amount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 1,
            },
        }
    },
}

Config.Vendings = {
    [1] = {
        ['Model'] = 'prop_vend_coffe_01', -- Model name of prop
        ['Category'] = 'coffee', -- Category from list above
        ['Label'] = 'Coffee', -- Name of vending
        ['Icon'] = 'fas fa-coffee' -- Fontawesome icon
    },
    [2] = {
        ['Model'] = 'prop_vend_water_01',
        ['Category'] = 'water',
        ['Label'] = 'Water Dispenser',
        ['Icon'] = 'fas fa-tint'
    },
    [3] = {
        ['Model'] = 'prop_watercooler',
        ['Category'] = 'water',
        ['Label'] = 'Water Dispenser',
        ['Icon'] = 'fas fa-tint'
    },
    [4] = {
        ['Model'] = 'prop_watercooler_Dark',
        ['Category'] = 'water',
        ['Label'] = 'Water Dispenser',
        ['Icon'] = 'fas fa-tint'
    },
    [5] = {
        ['Model'] = 'prop_vend_snak_01',
        ['Category'] = 'candy',
        ['Label'] = 'Candy Vending',
        ['Icon'] = 'fas fa-candy-cane'
    },
    [6] = {
        ['Model'] = 'prop_vend_snak_01_tu',
        ['Category'] = 'candy',
        ['Label'] = 'Candy Vending',
        ['Icon'] = 'fas fa-candy-cane'
    },
    [7] = {
        ['Model'] = 'prop_vend_fridge01',
        ['Category'] = 'drinks',
        ['Label'] = 'Drinks Vending',
        ['Icon'] = 'fas fa-glass-whiskey'
    },
    [8] = {
        ['Model'] = 'prop_vend_soda_01',
        ['Category'] = 'drinks',
        ['Label'] = 'Drinks Vending',
        ['Icon'] = 'fas fa-glass-whiskey'
    },
    [9] = {
        ['Model'] = 'prop_vend_soda_02',
        ['Category'] = 'drinks',
        ['Label'] = 'Drinks Vending',
        ['Icon'] = 'fas fa-glass-whiskey'
    },
}