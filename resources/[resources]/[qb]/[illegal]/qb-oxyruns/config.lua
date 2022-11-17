Config = Config or {}

--- STARTER PED STUFF HERE
Config.PedModel = `a_m_y_indian_01`
Config.PedLocation = vector4(251.7276, 374.7882, 105.61824, 351.01446)
--- END OF STARTER PED STUFF

Config.Dispatch = 'qb-dispatch'  -- ps-dispatch / cd-dispatch  (type of dispatch you use)
Config.AlertChance = 70 --45% chance
Config.CoolDown = 10  -- Cooldown to do until you can do a next delivery/run default time is 10 mintues
Config.Notifications = 'phone' -- phone/qbcore (type of notifications to use on the job)
Config.Phone = 'qb' -- qb / gks
Config.CopsNeeded = 0
Config.BuyerTimer = math.random(1, 3) -- Timer till the buyer spawns default 1-3 minutes

Config.PedDrivingStyle = 786603 -- suggest not changing this tbh
Config.PedDrivingSpeed = 6.0
Config.Packages = math.random(3, 6) -- amount of packages you recieve to deliver

--- REWARD STUFF HERE
Config.UseStartPayment = true -- true/false if you want to use a start payment or not
Config.OxyStartPayment = 1500 -- amount to pay to start if the config is set to true
Config.OxyPackageName = 'oxy-box' -- name of the box package in your shared
Config.MinPay = 400 -- minimum anount of cash you revieve upon handoff
Config.MaxPay = 800 -- maximum anount of cash you revieve upon handoff
Config.ItemName = 'oxy' -- oxy item name in your shared
Config.OxyAmount = math.random(3,6) -- amount of oxy you get if the chance is hit
Config.ItemChance = 20 -- 35% chance to get oxy
Config.RareItem = {
    'advancedlockpick',
    'security_card_02',
    'goldchain',
}
Config.RareItemAmount = math.random(1,4) -- Amount of the rare item you reacieve
Config.RareItemChance = 10 -- 10% chance to get rareitem
--- END OF REWARD STUFF

--- Money Cleaning
Config.MarkedBills = 'markedbills'
Config.CleanChance = 30 -- 30% chance

--- BLIPS STUFF
Config.OxySupplierBlip = 51 -- Blip that is shown where to pickup packages more blips can be found here if you want to change: https://docs.fivem.net/docs/game-references/blips/
Config.OxySupplierBlipScale = 0.60 -- Scale of the blip
Config.OxySupplierBlipRouteColor = 11 -- This is the color or the marking that shows from your location to the location
Config.UseGpsRoute = true -- true/false to turn of the route markings and only show blips

Config.OxyDropBlip = 103
Config.OxyDropBlipScale = 0.65
Config.OxyBlipsColor = 11 -- Color of the all blips oxy
--- END OF BLIP STUFF

--- PED STUFF (FOR COLLECTION OF BOXES BEFORE DELIVERY)
Config.PickUpLocations = {
    vector4(608.79, -459.17, 24.74, 181.92),
    vector4(1250.83, -2562.04, 42.71, 219.28),
    vector4(740.43, -2634.68, 6.47, 189.84),
    vector4(-1161.83, -1250.07, 6.8, 306.16),
    vector4(-2223.13, -365.75, 13.32, 260.99),
    vector4(-2982.84, 1585.71, 23.82, 359.91),
    vector4(-287.47, 2535.68, 75.47, 271.17),
    vector4(1583.08, 3620.96, 38.78, 134.18)
}

Config.SupplierPeds = {
    `a_m_y_skater_01`,
    `a_m_y_vinewood_03`,
    `a_m_y_soucent_02`,
    `a_m_y_soucent_03`,
    `a_m_y_methhead_01`,
    `a_m_m_eastsa_01`,
    `a_m_m_genfat_01`,
    `a_m_m_mexlabor_01`,
}
--- END OF PED STUFF


--- DELIVER STUFF HERE
Config.OxyLocations = {
    [1] = {
        Location = vector4(-221.75, -1485.63, 31.3, 309.41), -- Location of the drop off
        CarSpawn = vector4(-140.39, -1452.1, 33.43, 134.57), -- where the buyer car spawns
        Peds = { -- peds that will be driving the cars 
            `csb_ballasog`,
            `g_m_y_ballasout_01`,
            `g_m_y_ballaeast_01`,
            `g_m_y_ballaorig_01`,
        },
        Vehicles = { -- vehicles the peds will be driving added this so you can have certain peds and vehicles spawn in certain areas if you want
            `chino2`,
            `blade`,
            `clique`,
            `faction2`,
        },
    },
    [2] = {
        Location = vector4(-156.37, -2148.07, 16.7, 289.22),
        CarSpawn = vector4(-153.14, -2187.04, 10.31, 85.08),
        Peds = {
            `csb_ballasog`,
            `g_m_y_ballasout_01`,
            `g_m_y_ballaeast_01`,
            `g_m_y_ballaorig_01`,
        },
        Vehicles = {
            `chino2`,
            `blade`,
            `clique`,
            `faction2`,
        },
    },
    [3] = {
        Location = vector4(225.02, -168.62, 56.45, 72.1),
        CarSpawn = vector4(293.3, -27.38, 74.0, 160.13),
        Peds = {
            `csb_ballasog`,
            `g_m_y_ballasout_01`,
            `g_m_y_ballaeast_01`,
            `g_m_y_ballaorig_01`,
        },
        Vehicles = {
            `chino2`,
            `blade`,
            `clique`,
            `faction2`,
        },
    },
    [4] = {
        Location = vector4(-749.78, 365.39, 87.87, 180.28),
        CarSpawn = vector4(-850.62, 303.02, 85.6, 299.38),
        Peds = {
            `csb_ballasog`,
            `g_m_y_ballasout_01`,
            `g_m_y_ballaeast_01`,
            `g_m_y_ballaorig_01`,
        },
        Vehicles = {
            `chino2`,
            `blade`,
            `clique`,
            `faction2`,
        },
    },
    [5] = {
        Location = vector4(695.05, 226.1, 92.52, 73.42),
        CarSpawn = vector4(579.49, 275.35, 103.04, 163.0),
        Peds = {
            `csb_ballasog`,
            `g_m_y_ballasout_01`,
            `g_m_y_ballaeast_01`,
            `g_m_y_ballaorig_01`,
        },
        Vehicles = {
            `chino2`,
            `blade`,
            `clique`,
            `faction2`,
        },
    },
    [7] = {
        Location = vector4(930.04, -2448.07, 28.54, 357.91),
        CarSpawn = vector4(816.87, -2437.05, 24.06, 180.0),
        Peds = {
            `csb_ballasog`,
            `g_m_y_ballasout_01`,
            `g_m_y_ballaeast_01`,
            `g_m_y_ballaorig_01`,
        },
        Vehicles = {
            `chino2`,
            `blade`,
            `clique`,
            `faction2`,
        },
    },
}
--- END OF DELIVERY STUFF