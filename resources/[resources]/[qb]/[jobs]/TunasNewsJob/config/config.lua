--[[
___________                ___________                        
\__    ___/_ __  ____ _____\__    ___/________________  ______
  |    | |  |  \/    \\__  \ |    |_/ __ \_  __ \____ \/  ___/
  |    | |  |  /   |  \/ __ \|    |\  ___/|  | \/  |_> >___ \ 
  |____| |____/|___|  (____  /____| \___  >__|  |   __/____  >
                    \/     \/           \/      |__|       \/
-- TunasNewsJob V1 --If you enjoyed, go ahead and check out some of my other work ! 
https://github.com/Tuna-Terps
https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw ]]

CFG = {}
-- ><><><><><><><><><><><><><><><><><><><> | FRAMEWORKS | ><><><><><><><><><><><><><><><><><><><>
--
CFG.ESX = false -- set to true to enable use with ESX 
CFG.QB = true -- set to true to enable use with QBCORE ** MUST set CFG.ESX to false**
--CFG.STANDALONE = false -- set to true to enable use with own resources **WIP**
-- ===== KEYS ======
--
CFG.qb_keys = true -- set to enable if you use qb-vehiclekeys
CFG.cd_keys = false -- set to true to enable use w/ cd_garage
-- if no key system used, set both values to false
--
-- ><><><><><><><><><><><><><><><><><><><> | MAIN | ><>><><><><><><><><><><><><><><><><><><><>
--
CFG.JobRequired = true -- toggle whether youd like to require a job for this script || default value is true
CFG.JobName = 'reporter' -- set job name here if you wish to require jobs || default value is 'news'
CFG.MultiUpload = true -- enable if you want to upload at closest of 2 points, or 1

--
CFG.debug = false -- mainly used for debugging client side data, see config.js for news - server side 
--
CFG.loadAnims = true -- for sync issues - true will load anim dicts for all clients
CFG.loadVehicles = false -- for sync issues - true will load vehicle models for all clients
--
-- ><><><><><><><><><><><><><><><><><><><> | PAYMENT | ><><><><><><><><><><><><><><><><><><><>
--
CFG.Reward = 250 -- base pay, | level 0 - 1x | level 1 - 1.5x | level 2 - 2x | level 3 - 3x | level 4 - 4x |  
CFG.Penalty = 0.2 -- percent to reduce each reward by for every submission, 0.2 = 20% (Competitive mode must be enabled !)
CFG.isCompetitive = true -- if false, every reporter will receive the same amount
--
-- ><><><><><><><><><><><><><><><><><><><> | FOOTAGE | ><><><><><><><><><><><><><><><><><><><>
--
-- LOS SANTOS
CFG.lsHQ = vector3(-599.63,-930.02,22.90) -- job menu location - Los Santos
CFG.lsUpload = vector3(-575.04, -942.05, 23.86) -- upload location for Los Santos
--
-- BLAINE COUNTY
CFG.bcHQ = vector3(-267.37, 6250.17, 30.51) -- Job menu location - Blaine County 
CFG.bcUpload = vector3(-257.62, 6247.86, 31.46) -- upload location for blaine county
--
CFG.useProgressBars = true -- set to false to enable your own progressbar resource
CFG.isItemNeeded = false -- check if you have the required item in your inventory
CFG.Item = 'news_camera' -- item name for video camera

CFG.Webhook = ' ' -- optional webhoook option for news notifications
CFG.enableScreenShot = false

CFG.eventRadius = 35 -- Distance that reporter can view the marker; Change w/ caution
CFG.recordRadius = 20 -- Distance reporter can begin recording

CFG.recordProp = 'prop_v_cam_01' -- camera for user animation
CFG.recordDict = 'missfinale_c2mcs_1' -- anim dict for user animation
CFG.recordName = 'fin_c2_mcs_1_camman' -- anim name for user animation

CFG.upProp = 'hei_prop_hst_laptop' -- prop for upload animation
CFG.upDict = 'anim@heists@ornate_bank@hack'
CFG.upName = 'hack_loop'

-- ><><><><><><><><><><><><><><><><><><><>| JOB MENU | ><><><><><><><><><><><><><><><><><><><>
CFG.Rental = 500
CFG.NewsVan = 'rumpo' -- model name 
CFG.onlyVans = false -- set to true to require news reporters to rent a rumpo and bring it to the scene
CFG.vanLivery = 2 -- set the livery of the van if you use something other than rumpo
CFG.vanRadius = 50 -- distance van must be from the scene
CFG.VanSpawns = {
    -- LOS SANTOS
    [1]= {
        ['spawn'] = vector3(-617.18, -912.0, 24.06),
        ['heading'] = 287.01
    },
    -- BLAINE COUNTY
    [2]= {
        ['spawn'] = vector3(-257, 6250.25, 31.49),
        ['heading'] = 43.2
    },
}

CFG.skinChanger = false -- set to true to enable use of skinchanger

CFG.UniformM = { 
    -- male uniform
    ['tshirt_1'] = 65,  ['tshirt_2'] = 0,
    ['torso_1'] = 90,   ['torso_2'] = 0,
    ['decals_1'] = 0,   ['decals_2'] = 0,
    ['arms'] = 16,
    ['pants_1'] = 43,   ['pants_2'] = 0,
    ['shoes_1'] = 4,   ['shoes_2'] = 1,
    ['helmet_1'] = -1,  ['helmet_2'] = 0,
    ['chain_1'] = 17,    ['chain_2'] = 0,
    ['bproof_1'] = 0,  ['bproof_2'] = 0							
}
CFG.UniformF = {  
    --female uniform
    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
    ['torso_1'] = 87,   ['torso_2'] = 0,
    ['decals_1'] = 0,   ['decals_2'] = 0,
    ['arms'] = 1,
    ['pants_1'] = 44,   ['pants_2'] = 0,
    ['shoes_1'] = 3,   ['shoes_2'] = 4,
    --['helmet_1'] = 0,  ['helmet_2'] = 0,
    ['chain_1'] = 0,    ['chain_2'] = 0,
    --['bproof_1'] = 5,   ['bproof_2'] = 2
}
CFG.menuAlign = 'top-right' -- job menu 
-- TRANSLATION 
CFG.Words = {
    ['wzl'] = 'Weazel News',
    ['prompt1'] = 'Press ',
    ['input'] = '~INPUT_CONTEXT~',
    ['prompt2'] = 'to record the scene!',
    ['upload1'] = 'Upload the footage at Weazel News in ',
    ['upload3'] = ' to upload the footage ',
    ['prog_up'] = 'Uploading submission to the Network . . .',
    ['prog_rec'] = 'Recording Footage . . .',
    ['rented'] = 'Van Rented !',
    ['deposit'] = ' - Deposit Collected',
    ['depot'] = 'Depot',
    ['succ'] = 'Returned the van  successfully... +$',
    ['nearby'] = 'Your company vehicle is awaiting nearby  . . -$',
    ['e1'] = 'Van Not Rented . . . There is a vehicle blocking it!',
    ['e2'] = 'No Vehicle Found . . .',
    ['e3'] = 'Van Not Rented . . .',
    ['e4'] = 'Something else happened', 
    ['e5'] = 'Depot Error',
    ['e6'] = 'No vehicle in the pool, Weazel News kept your deposit',
    ['e7'] = 'Your van is not close enough !',
}

--
-- BLIPS
--
CFG.enableBlip = true -- toggle whether youd like to use these blips or your own :) || default value is true
--><><><><><><><><>><><><><><><><><>
if CFG.enableBlip then
--><><><><><><><><>><><><><><><><><>
    CFG.startBlips = {			
        [1] = {
            blip = nil, 
            name = "Weazel News - HQ",  
            coords = CFG.lsHQ,
            sprite = 135, 
            color = 8,
            scale = 0.8, 
            sr = true  -- short range Y/N
        },
        [2] = {
            blip = nil, 
            name = "Weazel News - HQ",  
            coords = CFG.bcHQ,
            sprite = 135,
            color = 8,
            scale = 0.8,
            sr = true,  -- short range Y/N
        },
        [3] = {
            blip = nil, 
            name = "Weazel Upload Point",  
            coords = CFG.lsUpload,
            sprite = 459,
            color = 8,
            scale = 0.70,
            sr = true -- short range Y/N
        },
        [4] = {
            blip = nil, 
            name = "Weazel Upload Point",  
            coords = CFG.bcUpload,
            sprite = 459,
            color = 8,
            scale = 0.70,
            sr = true -- short range Y/N
        }
    }
--><><><><><><><><>><><><><><><><><>><><><><><><><><>
end
--

-- ><><><><><><><><><><><><><><><><><><><>| NPC EVENTS | ><><><><><><><><><><><><><><><><><><><>

CFG.isCustomPed = false -- specify if you want to use generic peds, or custom ones w/ streamed clothing
CFG.interval = 10 -- In minutes - interval when server will decide if a random NPC event will be added to the list 
CFG.intervalChance = 100 -- Percentage whether a random event will happen on interval (EVENT WILL NOT HAPPEN IF ONE IS ONGOING)


if CFG.loadVehicles == true then 

    CFG.loadTheseInMemory = {
            -- TRAFFIC_1
        [1] = {['model'] = 'bus'},
        --  PLANE_1
        [2] = {['model'] = 'shamal'},
        -- CRIME_1 (HOMICIDE)
        [3] = {['model'] = 'police3'},
        -- CRIME_2 (DRUG RAID)
        [4] = {['model'] = 'riot'},  
        -- HELI
        [5] = {['model'] = 'frogger'},
        -- BIGFOOT
        [6] = {['model'] = 'pranger' }, 
        -- ALIEN_PARTY
        [7] = {['model'] = 'dune2' } 
    }

end

CFG.Vehicles ={
    -- TRAFFIC_1
    [1] = {   
        ['model'] = 'bus',
        ['spawn'] = vector3(192.77, -1116.57, 29.21),
        ['heading'] = 134.21,
    },
    --  PLANE_1
    [2] = {   
        ['model'] = 'shamal',
        ['spawn'] = vector3(-1223.11,64.75,53.73),
        ['heading'] = 74.88,
    },
    -- CRIME_1 (HOMICIDE)
    [3] = {   
        ['model'] = 'police3',
        ['spawn'] = vector3(267.46, -2069.76, 17.33),
        ['heading'] = 197.81,
    },
    -- CRIME_2 (DRUG RAID)
    [4] = {   
        ['model'] = 'riot',
        ['spawn'] = vector3(1372.77, -584.0, 74.3),
        ['heading'] = 315.58,
    },  
    -- HELI
    [5] = {   
        ['model'] = 'frogger',
        ['spawn'] = vector3(-749.71,-1430.05, 5.5),
        ['heading'] = 287.01,
    },
    -- BIGFOOT
    [6] = {   
        ['model'] = 'pranger',
        ['spawn'] = vector3(-1657.58, 4572.02, 42.27),
        ['heading'] = 5.58,
    }, 
    -- ALIEN_PARTY
    [7] = {   
        ['model'] = 'dune2',
        ['spawn'] = vector3(2524.8, 3792.72, 54.97),
        ['heading'] = 351.5,
    },
    -- TRAFFIC_2
    [8] = {
        ['model'] = 'bus',
        ['spawn'] = vector3(343.54, 125.28, 29.21),
        ['heading'] = 201.24,
    },
    -- CRIME - bust
    [9] = {
        ['model'] = 'police3',
        ['spawn'] = vector3(-1235.65, -1370.9, 3.93),
        ['heading'] = 135.91,
    },
     -- CRIME - bust_2
    [10] = {
        ['model'] = 'police3',
        ['spawn'] = vector3(962.66, -1745.7, 31.21),
        ['heading'] = 352.86,
    },
}

-- animDict for any npc anims you plan on using, add with caution !
CFG.ANIMS = {

    [1] = { ['animDict'] = 'amb@code_human_police_investigate@idle_a' },
    [2] = {['animDict'] = 'gestures@f@standing@casual'},
    [3] = {['animDict'] = 'mini@cpr@char_b@cpr_def'},
    [4] = {['animDict'] = 'misscarsteal2peeing'},
    [5] = {['animDict'] = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@'},
    [6] = {['animDict'] = 'anim@heists@ornate_bank@hostages@ped_c@'},
    [7] = {['animDict'] = 'random@arrests@busted' },
    --[0] = { ['animDict'] = '' },
}


CFG.NPC = {
    [1] = {
        -- TRAFFIC
            pos = vector3(192.77, -1116.57, 29.21),
            label = 'Traffic Delays in Downtown',
            scenario = 'TRAFFIC', -- do not change
            level = 0,
            timeout = 240,
            submissions = 2,
            peds = {
                    [1] = {
                    -- driver
                    -- location
                    ['pedPos'] = vector3(187.59, -1118.13, 29.44),
                    ['pedHead'] = 61.82,
                    ['isCustom'] = false,
                    ['hashModel'] = 's_m_y_airworker', -- if CFG.isCustomPed is false, defaults to this ped
                    -- meta
                    ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                    ['animName'] = 'idle_a',
                    ['propModel'] = 'prop_v_cam_01',
                    -- charactor
                    ['hair_1'] = 50, ['hair_2'] = 1,    
                    ['face_1'] = 50, ['face_2'] = 1,
                    -- also need to specify sex, hair, skin, etc
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 269,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 50,
                    ['pants_1'] = 48,   ['pants_2'] = 3,
                    ['shoes_1'] = 66,   ['shoes_2'] = 0,
                    ['helmet_1'] = 64,  ['helmet_2'] = 6,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['bproof_1'] = 21,  ['bproof_2'] = 1,
                    ['mask_1'] = 145,  ['mask_2'] = 0,
                    ['bag_1'] = 0,  ['bag_2'] = 0
                },
                [2] = {
                    -- officer
                    ['pedPos'] = vector3(185.99, -1121.48, 29.23),
                    ['pedHead'] = 113.57,
                    ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                    -- meta
                    ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                    ['animName'] = 'idle_b',
                    ['propModel'] = 'prop_v_cam_01',
                    ['isCustom'] = true,
                    -- charactor
                    ['hair_1'] = 50, ['hair_2'] = 1,    
                    ['face_1'] = 50, ['face_2'] = 1,
                    --
                    ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                    ['torso_1'] = 342,   ['torso_2'] = 14,
                    ['decals_1'] = 28,   ['decals_2'] = 2,
                    ['arms'] = 50,
                    ['pants_1'] = 69,   ['pants_2'] = 0,
                    ['shoes_1'] = 40,   ['shoes_2'] = 0,
                    ['helmet_1'] = 50,  ['helmet_2'] = 0,
                    ['chain_1'] = 66,    ['chain_2'] = 0,
                    ['bproof_1'] = 47,     ['bproof_2'] = 0,
                    ['mask_1'] = 145,     ['mask_2'] = 1,
                    ['bags_1'] = 57,     ['bags_2'] = 0
                },
                [3] = {
                    -- officer 2
                    -- location
                    ['pedPos'] = vector3(183.36, -1121.26, 29.24),
                    ['pedHead'] = 179.97,
                    ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                    -- meta
                    ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                    ['animName'] = 'idle_a',
                    ['propModel'] = 'prop_v_cam_01',
                    ['isCustom'] = true,
                    -- charactor
                    ['hair_1'] = 50, ['hair_2'] = 1,    
                    ['face_1'] = 50, ['face_2'] = 1,
                    --
                    ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                    ['torso_1'] = 342,   ['torso_2'] = 14,
                    ['decals_1'] = 28,   ['decals_2'] = 2,
                    ['arms'] = 50,
                    ['pants_1'] = 69,   ['pants_2'] = 0,
                    ['shoes_1'] = 40,   ['shoes_2'] = 0,
                    ['helmet_1'] = 50,  ['helmet_2'] = 0,
                    ['chain_1'] = 66,    ['chain_2'] = 0,
                    ['bproof_1'] = 47,     ['bproof_2'] = 0,
                    ['mask_1'] = 145,     ['mask_2'] = 1,
                    ['bags_1'] = 57,     ['bags_2'] = 0
                },
            }
        },
    [2] = {
        -- PLANE CRASH
        ['pos'] = vector3(-1223.11,64.75,52.93),
        label = 'Emergency Landing',
        scenario = 'PLANE', -- do not change
        level = 2,        
        timeout = 360,
        submissions = 4,
        -- potentially add toggle distance from event
        peds = {
            -- pilot
            [1] = {
                -- location
                ['pedPos'] = vector3(-1228.24, 63.36, 53.01),
                ['pedHead'] = 140.63,
                ['hashModel'] = 's_m_m_pilot_01', -- if CFG.isCustomPed is false, defaults to this ped
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                ['isCustom'] = false,
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- outfit
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            --passenger male
            [2] = {
                -- location
                ['pedPos'] = vector3(-1242.11,62.75,53.73),
                ['pedHead'] = 293.63,
                ['hashModel'] = 'a_m_m_golfer_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['animDict'] = 'anim@heists@ornate_bank@hostages@ped_c@',
                ['animName'] = 'flinch_loop',
                ['propModel'] = 'prop_v_cam_01',
                ['isCustom'] = false,
                --
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            -- passenger female
            [3] = {
                -- location
                ['pedPos'] = vector3(-1226.06,77.32,54.73),
                ['pedHead'] = 149.63,
                ['hashModel'] = 'a_f_y_golfer_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'anim@heists@ornate_bank@hostages@ped_c@',
                ['animName'] = 'flinch_loop',
                ['propModel'] = 'prop_v_cam_01',
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
        }
    },
    [3] = {
        -- HOMICIDE
        ['pos'] = vector3(272.13,-2073.78,17.05),
        label = 'Homicides on the Rise',
        scenario = 'CRIME_1', -- do not change
        level = 1,
        timeout = 300,
        submissions = 3,
        peds = {
            [1] = {
                -- police patrolman
                -- location
                ['pedPos'] = vector3(272.71,-2077.58,16.79),
                ['pedHead'] = 100.65,
                ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
            [2] = {
                -- police detective
                -- location
                ['pedPos'] = vector3(272.65,-2069.48,17.18),
                ['pedHead'] = 135.64,
                ['hashModel'] = 's_m_m_ciasec_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_c',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 50, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,    
                ['face_1'] = 50, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 180,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 89,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 68,    ['chain_2'] = 0,
                ['bproof_1'] = 65,     ['bproof_2'] = 0,
                ['mask_1'] = 8,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
                -- police patrolman
            [3] = {
                -- location
                ['pedPos'] = vector3(270.54,-2078.2,16.77),
                ['pedHead'] = 346.83,
                ['hashModel'] = 's_f_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                --meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_b',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 1,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
                -- victim
            [4] = {
                -- location
                ['pedPos'] = vector3(271.53,-2071.3,17.09),
                ['pedHead'] = 225.82,
                ['hashModel'] = 'u_m_y_militarybum', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'mini@cpr@char_b@cpr_def',
                ['animName'] = 'cpr_pumpchest_idle',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- clothes
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
        }
        
    },
    [4] = {
        -- DRUG RAID
        ['pos'] = vector3(1372.77, -584.0, 74.3),
        label = 'Police Raid Suburban Home',
        scenario = 'CRIME_2', -- do not change
        level = 3,
        timeout = 600,
        submissions = 4,
        peds = {
            [1] = {
                -- SWAT 1 left
                -- location
                ['pedPos'] = vector3(1371.27,-581.45, 74.38),
                ['pedHead'] = 146.65,
                ['hashModel'] = 's_m_y_swat_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 16,  ['tshirt_2'] = 0,
                ['torso_1'] = 307,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 21,
                ['pants_1'] = 80,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 63,  ['helmet_2'] = 0,
                ['chain_1'] = 64,    ['chain_2'] = 0,
                ['bproof_1'] = 9,     ['bproof_2'] = 0,
                ['mask_1'] = 101,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
            [2] = {
                -- SWAT 2 middle
                -- location
                ['pedPos'] = vector3(1370.55,-583.04, 74.9),
                ['pedHead'] = 53.91,
                ['hashModel'] = 's_m_y_swat_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_c',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 50, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,    
                ['face_1'] = 50, ['face_2'] = 0,
                --
                ['tshirt_1'] = 16,  ['tshirt_2'] = 0,
                ['torso_1'] = 307,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 21,
                ['pants_1'] = 80,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 63,  ['helmet_2'] = 0,
                ['chain_1'] = 64,    ['chain_2'] = 0,
                ['bproof_1'] = 9,     ['bproof_2'] = 0,
                ['mask_1'] = 101,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
            [3] = {
                -- SWAT 3 right
                -- location
                ['pedPos'] = vector3(1369.16,-583.78, 74.9),
                ['pedHead'] = 320.65,
                ['hashModel'] = 's_m_y_swat_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                --meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_b',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                --
                ['tshirt_1'] = 16,  ['tshirt_2'] = 0,
                ['torso_1'] = 307,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 21,
                ['pants_1'] = 80,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 63,  ['helmet_2'] = 0,
                ['chain_1'] = 64,    ['chain_2'] = 0,
                ['bproof_1'] = 9,     ['bproof_2'] = 0,
                ['mask_1'] = 101,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
            [4] = {
                -- SWAT 4 back
                -- location
                ['pedPos'] = vector3(1368.67,-587.23,74.9),
                ['pedHead'] = 150.82,
                ['hashModel'] = 'mp_m_fibsec_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_c',
                ['propModel'] = 'prop_v_cam_01',
               --
               -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
               -- clothes
                ['tshirt_1'] = 16,  ['tshirt_2'] = 0,
                ['torso_1'] = 307,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 21,
                ['pants_1'] = 80,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 63,  ['helmet_2'] = 0,
                ['chain_1'] = 64,    ['chain_2'] = 0,
                ['bproof_1'] = 9,     ['bproof_2'] = 0,
                ['mask_1'] = 101,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
        }
    },
    [5] = {
        -- HELI CRASH
        ['pos'] = vector3(-749.71,-1430.05, 5.5),
        label = 'La Puerta Heliport Crash',
        scenario = 'HELI', -- do not change
        level = 2,        
        timeout = 300,
        submissions = 3,
        peds = {
            -- pilot
            [1] = {
                -- location
                ['pedPos'] = vector3(-751.71,-1430.05, 5.5),
                ['pedHead'] = 157.63,
                ['hashModel'] = 's_m_m_pilot_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- outfit
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            [2] = {
                -- bystander
                -- location
                ['pedPos'] = vector3(-739.71,-1420.05, 5.5),
                ['pedHead'] = 157.63,
                ['hashModel'] = 's_m_m_dockwork_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_c',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            [3] = {
                -- bystander
                -- location
                ['pedPos'] = vector3(-745.71,-1425.05, 5.5),
                ['pedHead'] = 149.63,
                ['hashModel'] = 's_m_y_pilot_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'gestures@f@standing@casual',
                ['animName'] = 'gesture_point',
                ['propModel'] = 'prop_v_cam_01',
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
        }
    },
    [6] = {
        -- BIG FOOT
        ['pos'] = vector3(-1643.61,4578.57,40.67),
        label = 'Bigfoot Sighting Confirmed(?)',
        scenario = 'BIGFOOT', -- do not change
        level = 4,        
        timeout = 400,
        submissions = 2,
        -- potentially add toggle distance from event
        peds = {
            [1] = {
                -- bigfoot
                -- location
                ['pedPos'] = vector3(-1643.61,4578.57,42.67),
                ['pedHead'] = 282.74,
                ['hashModel'] = 'cs_orleans', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'misscarsteal2peeing',
                ['animName'] = 'peeing_loop',
                ['propModel'] = 'prop_v_cam_01',
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- outfit
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            [2] = {
                -- ranger
                -- location
                ['pedPos'] = vector3(-1654.15,4574.57,42.21),
                ['pedHead'] = 314.03,
                ['hashModel'] = 's_m_y_ranger_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_b',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            [3] = {
                -- bystander
                -- location
                ['pedPos'] = vector3(-1657.19,4580.06,42.75),
                ['pedHead'] = 266.01,
                ['hashModel'] = 'a_m_y_hiker_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'gestures@f@standing@casual',
                ['animName'] = 'gesture_point',
                ['propModel'] = 'prop_v_cam_01',
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
        }
    },
    [7] = {
        -- ALIEN LANDING
        ['pos'] = vector3(2517.29,3789.28,54.7),
        label = 'E.T Phoned Home(?)',
        scenario = 'ALIEN_PARTY', -- do not change
        level = 4,        
        timeout = 400,
        submissions = 3,
        peds = {
            [1] = {
                -- alien center
                -- location
                ['pedPos'] = vector3(2517.29,3789.28,54.7),
                ['pedHead'] = 95.88,
                ['hashModel'] = 's_m_m_movalien_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@',
                ['animName'] = 'high_center',
                ['propModel'] = 'prop_v_cam_01',
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- outfit
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            [2] = {
                -- alien left
                -- location
                ['pedPos'] = vector3(2519.89,3793.14,55.81),
                ['pedHead'] = 182.51,
                ['hashModel'] = 's_m_m_movalien_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@',
                ['animName'] = 'high_center',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
            [3] = {
                -- alien right
                -- location
                ['pedPos'] = vector3(2520.26,3783.36,53.62),
                ['pedHead'] = 53.62,
                ['hashModel'] = 's_m_m_movalien_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = false,
                -- meta
                ['animDict'] = 'misscarsteal2peeing',
                ['animName'] = 'peeing_loop',
                ['propModel'] = 'prop_v_cam_01',
                -- character
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
        }
    },
    [8] = {
    -- TRAFFIC
        pos = vector3(343.54, 125.28, 102.21),
        label = 'Traffic Delay on Vinewood Blvd.',
        scenario = 'TRAFFIC', -- do not change
        level = 0,
        timeout = 240,
        submissions = 3,
        peds = {
            [1] = {
            -- driver
            -- location
            ['pedPos'] = vector3(341.89, 116.23, 102.83),
            ['pedHead'] = 153.83,
            ['isCustom'] = false,
            ['hashModel'] = 's_m_y_airworker', -- if CFG.isCustomPed is false, defaults to this ped
            -- meta
            ['animDict'] = 'amb@code_human_police_investigate@idle_a',
            ['animName'] = 'idle_a',
            ['propModel'] = 'prop_v_cam_01',
            -- charactor
            ['hair_1'] = 50, ['hair_2'] = 1,    
            ['face_1'] = 50, ['face_2'] = 1,
            -- also need to specify sex, hair, skin, etc
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 269,   ['torso_2'] = 1,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 50,
            ['pants_1'] = 48,   ['pants_2'] = 3,
            ['shoes_1'] = 66,   ['shoes_2'] = 0,
            ['helmet_1'] = 64,  ['helmet_2'] = 6,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['bproof_1'] = 21,  ['bproof_2'] = 1,
            ['mask_1'] = 145,  ['mask_2'] = 0,
            ['bag_1'] = 0,  ['bag_2'] = 0
        },
        [2] = {
            -- officer
            ['pedPos'] = vector3(339.43, 114.89, 102.73),
            ['pedHead'] = 309.20,
            ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
            -- meta
            ['animDict'] = 'amb@code_human_police_investigate@idle_a',
            ['animName'] = 'idle_b',
            ['propModel'] = 'prop_v_cam_01',
            ['isCustom'] = true,
            -- charactor
            ['hair_1'] = 50, ['hair_2'] = 1,    
            ['face_1'] = 50, ['face_2'] = 1,
            --
            ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
            ['torso_1'] = 342,   ['torso_2'] = 14,
            ['decals_1'] = 28,   ['decals_2'] = 2,
            ['arms'] = 50,
            ['pants_1'] = 69,   ['pants_2'] = 0,
            ['shoes_1'] = 40,   ['shoes_2'] = 0,
            ['helmet_1'] = 50,  ['helmet_2'] = 0,
            ['chain_1'] = 66,    ['chain_2'] = 0,
            ['bproof_1'] = 47,     ['bproof_2'] = 0,
            ['mask_1'] = 145,     ['mask_2'] = 1,
            ['bags_1'] = 57,     ['bags_2'] = 0
        },
        [3] = {
            -- officer 2
            -- location
            ['pedPos'] = vector3(341.24, 113.31, 102.68),
            ['pedHead'] = 339.09,
            ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
            -- meta
            ['animDict'] = 'amb@code_human_police_investigate@idle_a',
            ['animName'] = 'idle_a',
            ['propModel'] = 'prop_v_cam_01',
            ['isCustom'] = true,
            -- charactor
            ['hair_1'] = 50, ['hair_2'] = 1,    
            ['face_1'] = 50, ['face_2'] = 1,
            --
            ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
            ['torso_1'] = 342,   ['torso_2'] = 14,
            ['decals_1'] = 28,   ['decals_2'] = 2,
            ['arms'] = 50,
            ['pants_1'] = 69,   ['pants_2'] = 0,
            ['shoes_1'] = 40,   ['shoes_2'] = 0,
            ['helmet_1'] = 50,  ['helmet_2'] = 0,
            ['chain_1'] = 66,    ['chain_2'] = 0,
            ['bproof_1'] = 47,     ['bproof_2'] = 0,
            ['mask_1'] = 145,     ['mask_2'] = 1,
            ['bags_1'] = 57,     ['bags_2'] = 0
        },
    }
    },
    [9] = {
    -- CRIME
        pos = vector3(-1235.65, -1370.9, 3.93),
        label = 'Local Crime On The Rise.',
        scenario = 'CRIME_1', -- do not change
        level = 1,
        timeout = 300,
        submissions = 3,
        peds = {
            [1] = {
                -- police patrolman
                -- location
                ['pedPos'] = vector3(-1241.58, -1369.9, 4.08),
                ['pedHead'] = 265.14,
                ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
            [2] = {
                -- police detective
                -- location
                ['pedPos'] = vector3(-1241.22, -1367.92, 4.08),
                ['pedHead'] = 218.33,
                ['hashModel'] = 's_m_m_ciasec_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_c',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 50, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,    
                ['face_1'] = 50, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 180,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 89,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 68,    ['chain_2'] = 0,
                ['bproof_1'] = 65,     ['bproof_2'] = 0,
                ['mask_1'] = 8,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
                -- police patrolman
            [3] = {
                -- location
                ['pedPos'] = vector3(-1239.36, -1366.79, 4.08),
                ['pedHead'] = 199.83,
                ['hashModel'] = 's_f_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                --meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_b',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 1,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
                -- victim
            [4] = {
                -- location
                ['pedPos'] = vector3(-1238.9,-1369.3,4.08),
                ['pedHead'] = 240.27,
                ['hashModel'] = 'u_m_y_militarybum', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'random@arrests@busted',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- clothes
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
        }

    },
    [10] = {
        -- CRIME
        pos = vector3(960.05, -1746.92, 31.22),
        label = 'Crime Wave in LS.',
        scenario = 'CRIME_1', -- do not change
        level = 1,
        timeout = 300,
        submissions = 3,
        peds = {
            [1] = {
                -- police patrolman
                -- location
                ['pedPos'] = vector3(955.05, -1742.85, 31.03),
                ['pedHead'] = 84.33,
                ['hashModel'] = 's_m_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 75, ['hair_2'] = 0,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 35, ['face_2'] = 0,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 50,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
            [2] = {
                -- police detective
                -- location
                ['pedPos'] = vector3(953.05, -1740.85, 31.03),
                ['pedHead'] = 175.33,
                ['hashModel'] = 's_m_m_ciasec_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_c',
                ['propModel'] = 'prop_v_cam_01',
                -- 
                -- charactor
                ['hair_1'] = 50, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,    
                ['face_1'] = 50, ['face_2'] = 0,
                --
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 180,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 89,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 68,    ['chain_2'] = 0,
                ['bproof_1'] = 65,     ['bproof_2'] = 0,
                ['mask_1'] = 8,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0
            },
                -- police patrolman
            [3] = {
                -- location
                ['pedPos'] = vector3(953.05, -1744.85, 31.03),
                ['pedHead'] = 50.89,
                ['hashModel'] = 's_f_y_cop_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                --meta
                ['animDict'] = 'amb@code_human_police_investigate@idle_a',
                ['animName'] = 'idle_b',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                --
                ['tshirt_1'] = 29,  ['tshirt_2'] = 0,
                ['torso_1'] = 342,   ['torso_2'] = 14,
                ['decals_1'] = 28,   ['decals_2'] = 2,
                ['arms'] = 1,
                ['pants_1'] = 69,   ['pants_2'] = 0,
                ['shoes_1'] = 40,   ['shoes_2'] = 0,
                ['helmet_1'] = 50,  ['helmet_2'] = 0,
                ['chain_1'] = 66,    ['chain_2'] = 0,
                ['bproof_1'] = 47,     ['bproof_2'] = 0,
                ['mask_1'] = 145,     ['mask_2'] = 1,
                ['bags_1'] = 57,     ['bags_2'] = 0
            },
                -- victim
            [4] = {
                -- location
                ['pedPos'] = vector3(952.08,-1742.3,31.24),
                ['pedHead'] = 80.27,
                ['hashModel'] = 'a_m_m_fatlatin_01', -- if CFG.isCustomPed is false, defaults to this ped
                ['isCustom'] = true,
                -- meta
                ['animDict'] = 'random@arrests@busted',
                ['animName'] = 'idle_a',
                ['propModel'] = 'prop_v_cam_01',
                --
                -- charactor
                ['hair_1'] = 52, ['hair_2'] = 1,
                ['h_color_1'] = 50, ['h_color_2'] = 0,        
                ['face_1'] = 50, ['face_2'] = 1,
                -- clothes
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 269,   ['torso_2'] = 1,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 50,
                ['pants_1'] = 48,   ['pants_2'] = 3,
                ['shoes_1'] = 66,   ['shoes_2'] = 0,
                ['helmet_1'] = 64,  ['helmet_2'] = 6,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['bproof_1'] = 21,  ['bproof_2'] = 1
            },
        }

    },

}
