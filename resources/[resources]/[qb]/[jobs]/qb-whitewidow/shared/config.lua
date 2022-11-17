----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core settings you can ignore these if you have not renamed your core
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    MenuName = 'qb-menu', -- The name of your menu. Default; qb-menu
    InputName = 'qb-input', -- The name of your input menu for billing. Default; qb-input
    SkillBarName = 'qb-skillbar', -- The name of your skillbar. Default; qb-skillbar
    ItemCheckEvent = 'QBCore:HasItem', -- The name of your item check event. Default; 'QBCore:HasItem'
    MetaDataEvent = 'QBCore:Server:SetMetaData', -- The name of your set metadata event. Default; 'QBCore:Server:SetMetaData'
    DutyEvent = 'QBCore:ToggleDuty', -- The name of your duty event. Default; 'QBCore:ToggleDuty'
    AddStressEvent = 'hud:server:GainStress', -- Event to remove stress from player. Default; 'hud:server:GainStress'
    RemoveStressEvent = 'hud:server:RelieveStress', -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
    BossMenuEvent = 'qb-bossmenu:client:OpenMenu', -- Name of your boss menu event. Default; 'qb-bossmenu:client:OpenMenu'
    PhoneEvent = 'qb-phone:RefreshPhone', -- The name of your phone event this is needed for billing. Default; 'qb-phone:RefreshPhone'
    ClothingEvent = 'qb-clothing:client:openOutfitMenu', -- The name of your clothing event this is needed to open outfit menu. Default; 'qb-clothing:client:OpenOutfitMenu'
    FuelEvent = 'LegacyFuel' -- The name of your fuel event. Default; LegacyFuel
}
-- Blips
Config.UseBlips = true -- Enable blips
Config.Blips = {
	{title='White Widow', colour=52, id=469, x = 193.24, y = -244.53, z = 54.07, scale = 0.6},
}
-- MLO version toggle
Config.MLOVersion = 'v2' -- MLO Version options; 'v1' or 'v2' -- 'v2' = https://mosbaekdesign.com/vare/white-widow-cannabis-cafe-shop-mlo-v2-update/
-- Job settings
Config.JobSettings = {
    JobName = 'whitewidow', -- Name of your job in your `qb-core/shared/jobs.lua`
    MenuItem = 'wwmenu', -- Name of your menu item
    Locations = {
        Duty = {{name = 'ww_duty', coords = vector3(180.33, -252.43, 54.15), length = 1.0, width = 1.0, heading = 160.41, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.5}},
        Boss = {{name = 'ww_bossmenu', coords = vector3(183.38, -251.06, 54.07), length = 1.0, width = 1.0, heading = 340.54, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.5}},
        JobStorage = {{name = 'ww_jobstorage', coords = vector3(180.44, -243.72, 54.07), length = 2.0, width = 2.0, heading = 67.01, debugPoly = false, minZ = 53.25, maxZ = 55.50, distance = 1.5}},
        BossStorage = {{name = 'ww_bossstorage', coords = vector3(184.12, -244.58, 54.07), length = 1.2, width = 1.2, heading = 340.54, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.5}},
        EPOS = {
            {name = 'ww_epos1', coords = vector3(187.96, -243.55, 54.07), length = 1.0, width = 1.0, heading = 249.50, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.5},
            {name = 'ww_epos2', coords = vector3(188.92, -241.06, 54.07), length = 1.0, width = 1.0, heading = 249.50, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.5},
            {name = 'ww_epos3', coords = vector3(197.98, -235.74, 54.07), length = 1.0, width = 1.0, heading = 112.51, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.5}
        },
        Tray = {{name = 'ww_tray', coords = vector3(188.65, -239.85, 55.02), length = 1.0, width = 1.0, heading = 341.51, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.0}},
        Rolling = {{name = 'ww_rolling', coords = vector3(185.48, -242.34, 54.07), length = 0.8, width = 2.8, heading = 69.90, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.0}},
        JobStore = {{name = 'ww_jobshop', coords = vector3(195.09, -233.35, 54.07), length = 1.0, width = 2.8, heading = 341.90, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.0}},
        SnackTable = {{name = 'ww_snacktable', coords = vector3(187.23, -247.67, 54.07), length = 1.0, width = 2.8, heading = 69.90, debugPoly = false, minZ = 53.25, maxZ = 54.50, distance = 1.0}},
        Clothing = {
            {name = 'ww_wardrobe1', coords = vector3(184.36, -242.07, 54.07), length = 1.0, width = 2.0, heading = 250.65, debugPoly = false, minZ = 53.25, maxZ = 55.50, distance = 2.0},
            {name = 'ww_wardrobe2', coords = vector3(173.96, -235.16, 50.06), length = 2.0, width = 2.0, heading = 342.10, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 2.0},
            {name = 'ww_wardrobe3', coords = vector3(182.55, -243.77, 49.66), length = 1.0, width = 2.0, heading = 250.65, debugPoly = false, minZ = 48.25, maxZ = 50.50, distance = 2.0}
        },
        Trimming = {
            {name = 'ww_trim1', coords = vector3(166.78, -232.44, 50.06), length = 1.0, width = 2.0, heading = 341.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            {name = 'ww_trim2', coords = vector3(164.48, -233.41, 50.06), length = 1.0, width = 2.0, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            {name = 'ww_trim3', coords = vector3(165.30, -235.57, 50.06), length = 1.0, width = 2.0, heading = 161.51, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5}
        },
        Harvest = {
            Strain1 = {
                {name = 'ww_strain1_1', coords = vector3(166.29, -238.20, 50.03), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain1_2', coords = vector3(165.46, -238.00, 50.03), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain1_3', coords = vector3(164.80, -237.68, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain1_4', coords = vector3(164.16, -237.35, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain1_5', coords = vector3(163.46, -237.09, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain2 = {
                {name = 'ww_strain2_1', coords = vector3(165.60, -240.15, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain2_2', coords = vector3(164.88, -239.82, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain2_3', coords = vector3(164.12, -239.50, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain2_4', coords = vector3(163.31, -239.27, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain2_5', coords = vector3(162.80, -238.91, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain3 = {
                {name = 'ww_strain3_1', coords = vector3(169.62, -239.41, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain3_2', coords = vector3(170.40, -239.70, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain3_3', coords = vector3(171.13, -239.97, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain3_4', coords = vector3(171.87, -240.23, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain3_5', coords = vector3(172.62, -240.51, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain4 = {
                {name = 'ww_strain4_1', coords = vector3(168.94, -241.27, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain4_2', coords = vector3(169.69, -241.55, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain4_3', coords = vector3(170.42, -241.81, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain4_4', coords = vector3(171.20, -242.10, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain4_5', coords = vector3(171.94, -242.37, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain5 = {
                {name = 'ww_strain5_1', coords = vector3(170.07, -244.97, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain5_2', coords = vector3(169.64, -246.17, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain5_3', coords = vector3(169.17, -247.46, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain5_4', coords = vector3(168.72, -248.67, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain5_5', coords = vector3(168.33, -249.76, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain6 = {
                {name = 'ww_strain6_1', coords = vector3(167.60, -244.07, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain6_2', coords = vector3(167.15, -245.29, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain6_3', coords = vector3(166.68, -246.62, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain6_4', coords = vector3(166.27, -247.73, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain6_5', coords = vector3(165.85, -248.89, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain7 = {
                {name = 'ww_strain7_1', coords = vector3(164.95, -243.12, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain7_2', coords = vector3(164.51, -244.32, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain7_3', coords = vector3(164.06, -245.56, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain7_4', coords = vector3(163.63, -246.74, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain7_5', coords = vector3(163.22, -247.88, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            },
            Strain8 = {
                {name = 'ww_strain8_1', coords = vector3(162.41, -242.21, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain8_2', coords = vector3(161.96, -243.43, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain8_3', coords = vector3(161.52, -244.62, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain8_4', coords = vector3(161.08, -245.85, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
                {name = 'ww_strain8_5', coords = vector3(160.68, -246.97, 50.06), length = 0.6, width = 0.6, heading = 69.50, debugPoly = false, minZ = 49.25, maxZ = 51.50, distance = 1.5},
            }
        },
        BongTables = {
            {name = 'ww_bongtable1', coords = vector3(180.28, -247.74, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable2', coords = vector3(199.54, -247.01, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable3', coords = vector3(188.09, -252.81, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable4', coords = vector3(197.35, -253.10, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable5', coords = vector3(195.73, -257.55, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable6', coords = vector3(186.01, -258.53, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable7', coords = vector3(193.71, -263.11, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable8', coords = vector3(183.75, -264.74, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
            {name = 'ww_bongtable9', coords = vector3(192.02, -267.75, 53.31), length = 2.5, width = 2.5, heading = 69.00, debugPoly = false, minZ = 53.11, maxZ = 54.50, distance = 1.5},
        },
        Edibles = {
            {name = 'ww_ediblestable', coords = vector3(172.00, -234.50, 49.06), length = 2.0, width = 2.0, heading = 69.00, debugPoly = false, minZ = 49.11, maxZ = 51.50, distance = 1.5},
        },
        V1Garage = {
            {name = 'ww_garage', coords = vector3(197.51, -268.58, 50.03), length = 6.0, width = 6.0, heading = 246.46, debugPoly = false, minZ = 49.11, maxZ = 53.50, distance = 6.0},
        }
    },
    Raid = {
        JobName = 'police', -- Name of your police job in your `qb-core/shared/
        ForceEntryTime = math.random(8,15), -- Time in (s) for police to force entry into storages
        ForceEntryAnimationDict = 'mini@safe_cracking',
        ForceEntryAnimation = 'door_open_succeed_stand',
        ForceEntryFlags = 49,
    },
    Stores = {
        JobStore = {
            [1] = { name = 'lighter',           price = 1,  amount = 2000, info = {}, type = 'item', slot = 1 }, -- Required
            [2] = { name = 'rollingpapers',     price = 1,  amount = 1000, info = {}, type = 'item', slot = 2 }, -- Required
            [3] = { name = 'drug_grinder',      price = 1,  amount = 1000, info = {}, type = 'item', slot = 3 }, -- Required
            [4] = { name = 'empty_weed_bag',    price = 1,  amount = 1000, info = {}, type = 'item', slot = 4 }, -- Required
            [5] = { name = 'drug_shears',       price = 50, amount = 1000, info = {}, type = 'item', slot = 5 }, -- Required
			[6] = { name = 'gelatine',       	price = 1, amount = 1000, info = {}, type = 'item', slot = 6 }, -- Required
			[7] = { name = 'rawhoney',       	price = 1, amount = 1000, info = {}, type = 'item', slot = 7 }, -- Required
			[8] = { name = 'wwmenu',       	    price = 0, amount = 1000, info = {}, type = 'item', slot = 8 }, -- Required
        },
        SnackTable = { -- Example food items not required for script to function change these to whatever food your city uses
            [1] = { name = 'water',       	price = 5,  amount = 100,  info = {}, type = 'item', slot = 1 },
            [2] = { name = 'cocacola',      price = 5, 	amount = 100,  info = {}, type = 'item', slot = 2 },
			[3] = { name = 'pepsi',      		price = 5, 	amount = 100,  info = {}, type = 'item', slot = 3 },
            [4] = { name = 'mountaindew',      		price = 5, 	amount = 100,  info = {}, type = 'item', slot = 4 },
            [5] = { name = 'drpepper',      		price = 5, 	amount = 100,  info = {}, type = 'item', slot = 5 },
            [6] = { name = 'hersheysbar',      		price = 5, 	amount = 100,  info = {}, type = 'item', slot = 6 },
            [7] = { name = 'peanutmandms',      		price = 5, 	amount = 100,  info = {}, type = 'item', slot = 7 },
        }
    },
    Harvest = {
        HarvestItem = 'drug_shears', -- Item required to harvest plants
        ProgressAnimationDict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@', -- Animation dictionary for progress bar
        ProgressAnimation = 'weed_crouch_checkingleaves_idle_01_inspector', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Prop = 'v_ret_gc_scissors',
        Bone =  18905,
        Coords = vector3(0.13, 0.1, -0.03),
        Rotation = vector3(-15.0, 34.0, -30.0),
        SkillBarAnimationDict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@',
        SkillBarAnimation = 'weed_spraybottle_crouch_idle_01_inspector',
        Strain1 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_skunk_cbd_crop',   label = 'CBD Skunk Crop',    amount = 3},
            }
        },
        Strain2 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_og-kush_cbd_crop',   label = 'CBD OG-Kush Crop',    amount = 3},
            }
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_white-widow_cbd_crop',   label = 'CBD White-Widow Crop',    amount = 3},
            }
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_ak47_cbd_crop',   label = 'CBD AK47 Crop',    amount = 3},
            }
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to harvest
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest
            SkillBarDuration = math.random(2,4), -- Duration of skill bar
            SkillBarPosistion = math.random(10, 30), -- Start position of skill bar
            SkillBarWidth = math.random(10, 20), -- Width of skill bar
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_amnesia_cbd_crop',   label = 'CBD Amnesia Crop',    amount = 3},
            }
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to harvest skunk crops
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest skunk crops
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_purple-haze_cbd_crop',   label = 'CBD Purple-Haze Crop',    amount = 3},
            }
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to harvest skunk crops
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest skunk crops
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_gelato_cbd_crop',   label = 'CBD Gelato Crop',    amount = 3},
            }
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to harvest skunk crops
            SkillBarAttempts = 2, -- Amount of successful skillbar attempts to harvest skunk crops
            SkillBarDuration = math.random(2,4),
            SkillBarPosistion = math.random(10, 30),
            SkillBarWidth = math.random(10, 20),
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_zkittlez_cbd_crop',   label = 'CBD Zkittlez Crop',    amount = 3},
            }
        }
    },
    Trimming = {
        ProgressAnimationDict = 'amb@prop_human_parking_meter@female@base',
        ProgressAnimation = 'base_female',
        ProgressFlags = 49,
        ProgressProp = 'h4_prop_h4_weed_bud_02b',
        ProgressBone =  28422,
        ProgressCoords = vector3(0.09, -0.075, 0.0),
        ProgressRotation = vector3(-90.0, 0.0, 0.0),
        Strain1 = {
            Time = math.random(6,11), -- Time in (s) to trim skunk crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_skunk_cbd',   label = 'CBD Skunk: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_skunk_cbd_crop',     label = 'CBD Skunk Crop',   amount = 3},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain2 = {
            Time = math.random(6,11), -- Time in (s) to trim kush crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_og-kush_cbd',   label = 'CBD OG-Kush: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_og-kush_cbd_crop',   label = 'CBD OG-Kush Crop',   amount = 4},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to trim white-widow crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_white-widow_cbd',   label = 'CBD White-Widow: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_white-widow_cbd_crop',   label = 'CBD White-Widow Crop',   amount = 6},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_ak47_cbd',   label = 'CBD AK47: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_ak47_cbd_crop',      label = 'CBD AK47 Crop',   amount = 8},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_amnesia_cbd',   label = 'CBD Amnesia: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',             label = 'Trimming Shears'},
                ['2'] = { name = 'weed_amnesia_cbd_crop',   label = 'CBD Amnesia Crop',   amount = 3},
                ['3'] = { name = 'empty_weed_bag',          label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_purple-haze_cbd',   label = 'CBD Purple-Haze: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_purple-haze_cbd_crop',   label = 'CBD Purple-Haze Crop',   amount = 5},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_gelato_cbd',   label = 'CBD Gelato: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_gelato_cbd_crop',        label = 'CBD Gelato Crop',   amount = 5},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to trim ak47 crops
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that! Client will return the same as the amount of `empty_weed_bag` required
                ['1'] = { name = 'weed_zkittlez_cbd',   label = 'CBD Zkittlez: 2g'},
            },
            RequiredItems = { -- Do not exceed 3 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_shears',                 label = 'Trimming Shears'},
                ['2'] = { name = 'weed_zkittlez_cbd_crop',      label = 'CBD Zkittlez Crop',   amount = 5},
                ['3'] = { name = 'empty_weed_bag',              label = 'Resealable Bags',  amount = 14},
            }
        }
    },
    JointRolling = {
        ProgressAnimationDict = 'amb@prop_human_parking_meter@female@base', -- Animation dictionary for progress bar
        ProgressAnimation = 'base_female', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Prop = 'p_cs_papers_02',
        Bone =  57005,
        Coords = vector3(0.08, 0.0, -0.01),
        Rotation = vector3(182.0, -9.0, 56.0),
        Strain1 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_skunk_cbd_joint',   label = 'CBD Skunk: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain2 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_og-kush_cbd_joint',   label = 'CBD OG-Kush: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain3 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_white-widow_cbd_joint',   label = 'CBD White-Widow: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain4 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_ak47_cbd_joint',   label = 'CBD AK47: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain5 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_amnesia_cbd_joint',   label = 'CBD Amnesia: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain6 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_purple-haze_cbd_joint',   label = 'CBD Purple-Haze: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain7 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_gelato_cbd_joint',   label = 'CBD Gelato: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        },
        Strain8 = {
            Time = math.random(2,5), -- Time in (s) to roll joints
            RemoveAmount = 1, -- Amount of bags to remove when rolling joints
            ReturnAmount = 2, -- Amount of joint to return when rolling
            ReturnItem = { -- Do not exceed 1 item the server side is not coded for that!
                ['1'] = { name = 'weed_zkittlez_cbd_joint',   label = 'CBD Zkittlez: Joint', amount = 2},
            },
            RequiredItems = { -- Do not exceed 2 items or change the order the server side is not coded for that!
                ['1'] = { name = 'drug_grinder',    label = 'Grinder'},
                ['2'] = { name = 'rollingpapers',   label = 'Rolling Papers', amount = 2},
            },
        }
    },
    Edibles = {
        ProgressAnimationDict = 'amb@prop_human_bbq@male@idle_a',
        ProgressAnimation = 'idle_b',
        ProgressFlags = 49,
        Strain1 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 1
            ReturnItem = {
                ['1'] = { name = 'gummy_skunk_cbd',   label = 'CBD Gummybear: Skunk', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain2 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 2
            ReturnItem = {
                ['1'] = { name = 'gummy_og-kush_cbd',   label = 'CBD Gummybear: OG-Kush', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 1},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 1},
            },
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 3
            ReturnItem = {
                ['1'] = { name = 'gummy_white-widow_cbd',   label = 'CBD Gummybear: White-Widow', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 4
            ReturnItem = {
                ['1'] = { name = 'gummy_ak47_cbd',   label = 'CBD Gummybear: AK47', amount = 4},
            },
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 5
            ReturnItem = {
                ['1'] = { name = 'gummy_amnesia_cbd',   label = 'CBD Gummybear: Amnesia', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 6
            ReturnItem = {
                ['1'] = { name = 'gummy_purple-haze_cbd',   label = 'CBD Gummybear: Purple-Haze', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 7
            ReturnItem = {
                ['1'] = { name = 'gummy_gelato_cbd',   label = 'CBD Gummybear: Gelato', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to prepare edibles
            RemoveAmount = 1, -- Amount of crops to remove when preparing edibles will remove harvest return item for strain 8
            ReturnItem = {
                ['1'] = { name = 'gummy_zkittlez_cbd',   label = 'CBD Gummybear: Zkittlez', amount = 4},
            },
            RequiredItems = {
                ['1'] = { name = 'gummybearmould',   label = 'Gummy Bear Mould'},
                ['2'] = { name = 'gelatine',   label = 'Gelatine', amount = 2},
                ['3'] = { name = 'rawhoney',   label = 'Raw Honey', amount = 2},
            },
        },
    },
    Garage = {
        MoneyType = 'bank', -- Money type used for vehicle deposits
        Vehicle = 'speedo', -- White widow company vehicle use any vehicle you want here
        Deposit = 100, -- Price to take out company van will return 50%
        Heading = 246.68, -- Vehicle spawn heading
        Spawn = vector4(198.13, -269.06, 49.99, 246.68), -- Vehicle spawn location
        --<!>-- ONLY USED IF USING MLO VERSION V2 OTHERWISE IGNORE --<!>--
        V2Garage = {
            Heading = 68.78, -- Vehicle spawn heading for v2 garage
            Spawn = vector4(190.45, -252.89, 49.54, 68.78), -- Vehicle spawn location for v2 garage
            Peds = {
                {name = 'Garage', x = 192.73, y = -250.05, z = 49.66, h = 113.97, hash = 0xF06B849D, model = 's_m_m_autoshop_02', scenario = 'WORLD_HUMAN_CLIPBOARD'} -- Garage ped for Whitewidow MLO v2
            },
        }
    }
}
-- Drug settings
Config.DrugSettings = {
    Joints = {
        ScreenEffects = true, -- Toggle screen effects; true = enabled, false = disabled
        EffectTime = 1, -- Amount of time in (mins) for drug effects to last
        SmokeItem = 'lighter', -- Item required to smoke joints
        ProgressAnimationDict = 'timetable@gardener@smoking_joint', -- Animation dictionary for progress bar
        ProgressAnimation = 'smoke_idle', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Prop = 'prop_sh_joint_01',
        Bone =  57005,
        Coords = vector3(0.12, 0.03, -0.05),
        Rotation = vector3(0.0, 10.0, 70.0),
        Strain1 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        }, 
        Strain2 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain3 = { 
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(50,50), -- Amount of armour to gain by smoking joints
        },
        Strain4 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain5 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = 10, -- Amount of stress relived by smoking joints 
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain6 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain7 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = math.random(5,10), -- Amount of armour to gain by smoking joints
        },
        Strain8 = {
            Time = math.random(2,5), -- Time in (s) to smoke joints
            StessTime = 30000, -- 30 seconds
            Stress = math.random(5,10), -- Amount of stress relived by smoking joints
            ArmourTime = 30000, -- 30 seconds
            Armour = 25, -- Amount of armour to gain by smoking joints
        }
    },
    BongTables = {
        ScreenEffects = true, -- Toggle screen effects; true = enabled, false = disabled
        EffectTime = 1, -- Amount of time in (mins) for drug effects to last
        SmokeItem = 'lighter', -- Item required to smoke bongs
        ProgressAnimationDict = 'anim@safehouse@bong', -- Animation dictionary for progress bar
        ProgressAnimation = 'bong_stage3', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Prop = 'prop_bong_01',
        Bone =  18905,
        Coords = vector3(0.1, -0.2, 0.08),
        Rotation = vector3(256.0, 0.0, 0.0),
        Strain1 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain2 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain3 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain4 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain5 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain6 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain7 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        },
        Strain8 = {
            Time = math.random(8,15), -- Time in (s) to hit the bong
            Stress = math.random(5,13), -- Amount of stress relived by smoking bongs
            Armour = math.random(5,13), -- Amount of armour to gain by smoking bongs
        }
    },
    Edibles = {
        ScreenEffects = true, -- Toggle screen effects; true = enabled, false = disabled
        EffectTime = 1, -- Amount of time in (mins) for drug effects to last
        ProgressAnimationDict = 'mp_suicide', -- Animation dictionary for progress bar
        ProgressAnimation = 'pill', -- Animation for progress bar
        ProgressFlags = 49, -- Animation flags for progress bar
        Strain1 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain2 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain3 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain4 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain5 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain6 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain7 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        },
        Strain8 = {
            Time = math.random(2,3), -- Time in (s) to consume edibles
            StessTime = 300000, -- 30 seconds
            Stress = math.random(2,5), -- Amount of stress relived by smoking joints
            ArmourTime = 60000, -- 30 seconds
            Armour = 3, -- Amount of armour to gain by smoking joints
        }
    }
}
