-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(461.45, -986.2, 30.73),
    },
    ['ambulance'] = {
        vector3(335.46, -594.52, 43.28),
    },
    ['realestate'] = {
        vector3(-716.11, 261.21, 84.14),
    },
    ['taxi'] = {
        vector3(907.24, -150.19, 74.17),
    },
    ['cardealer'] = {
        vector3(805.19, -829.41, 26.34),
    },
    ['mechanic'] = {
        vector3(-339.53, -156.44, 44.59),
    },
    ['tuner'] = {
        vector3(125.4, -3014.79, 7.04),
    },
    ['hayesauto'] = {
        vector3(-1427.635, -458.2952, 35.909709),
    },
    ['vanilla'] = {
        vector3(95.673805, -1293.922, 29.263528),
    },
    ['cardshop'] = {
        vector3(-162.7, 218.78, 95.12),
    },
    ['burgershot'] = {
        vector3(-1177.857, -895.3328, 13.984732),
    },
    ['motordealer'] = {
        vector3(278.122, -1151.349, 30.200782),
    },
    ['luxury'] = {
        vector3(-809.9376, -206.1027, 37.97232),
    },
} 

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(461.32086, -986.5699, 31.638044), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 32.88 } ,
    },
    ['ambulance'] = {
        { coords = vector3(335.46, -594.52, 43.28), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['realestate'] = {
        { coords = vector3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(907.24, -150.19, 74.17), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords =  vector3(805.19, -829.41, 26.34), length = 0.6, width = 1.0, heading = 0, minZ = 22.74, maxZ = 26.74 },
    },
    ['mechanic'] = {
        { coords = vector3(-339.53, -156.44, 44.59), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['tuner'] = {
        { coords = vector3(125.4, -3014.79, 7.04), length = 0.35, width = 0.35, heading = 0.0, minZ = 6.84, maxZ = 7.14 },
    },
    ['hayesauto'] = {
        { coords = vector3(-1427.34, -458.78, 35.91), length = 2.6, width = 2.2, heading = 32.0, minZ = 34.91, maxZ = 37.51 },
    },
    ['vanilla'] = { 
        { coords = vector3(96.27, -1292.72, 29.26), length = 0.45, width = 0.5, heading = 30.0, minZ = 29.06, maxZ = 29.66 },
    },
    ['cardshop'] = {
        { coords = vector3(-162.7, 218.78, 95.12), length = 0.5, width = 0.5, heading = 189.0, minZ = 95.02, maxZ = 95.22 },
    },
    ['burgershot'] = {
        { coords = vector3(-1178.07, -896.11, 13.984732), length = 0.35, width = 0.45, heading = 351.0, minZ = 12.58, maxZ = 14.68 }, -- DONE
    },
    ['motordealer'] = {
        { coords = vector3(278.122, -1151.349, 30.200782), length = 0.5, width = 0.45, heading = 351.0, minZ = 28.5, maxZ = 31.2},
    },
    ['cookies'] = {
        { coords = vector3(-934.9163, -1168.373, 5.8156414), length = 0.5, width = 0.45, heading = 351.0, minZ = 4.1, maxZ = 6.15},
    },
    ['luxury'] = {
        { coords = vector3(-804.3206, -207.1906, 38.137985), length = 0.5, width = 0.45, heading = 351.0, minZ = 35, maxZ = 39},
    },
    ['billiards'] = {
        { coords = vector3(-1577.607, -983.3492, 13.923696), length = 0.5, width = 0.45, heading = 351.0, minZ = 11, maxZ = 15},
    }, 
    ['voncrastenburg'] = {
        { coords = vector3(-1203.574, -211.386, 40.20869), length = 0.5, width = 0.45, heading = 351.0, minZ = 38, maxZ = 42},
    }, 
    ['uwu'] = {
        { coords = vector3(-595.9929, -1052.982, 22.344194), length = 0.5, width = 0.45, heading = 351.0, minZ = 20, maxZ = 24},
    }, 
    ['casino'] = {
        { coords = vector3(1007.5409, 61.359146, 75.860588), length = 0.5, width = 0.45, heading = 351.0, minZ = 73, maxZ = 77},
    },
    ['pizzathis'] = {
        { coords = vector3(797.69708, -751.5205, 32.100429), length = 0.5, width = 0.45, heading = 351.0, minZ = 30, maxZ = 34},
    },
    ['starbucks'] = {
        { coords = vector3(-634.4249, 228.11135, 81.881446), length = 0.5, width = 0.45, heading = 351.0, minZ = 80, maxZ = 83},
    },
}

Config.GangMenus = {
    ['lostmc'] = {
        vector3(988.72, -135.66, 74.06),
    },
    ['ballas'] = {
        vector3(0,0, 0),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },
    ['syn'] = {
        vector3(-1498.23, 42.639881, 49.939762),
    },
    ['dow'] = {
        vector3(1036.5189, -2542.278, 33.204784),
    }
}

Config.GangMenuZones = {
    
    ['lostmc'] = {
        { coords = vector3(988.72, -135.66, 74.06), length = .06, width = 0.6, heading = 330, minZ = 73.66, maxZ = 74.62 },
    },
    ['syn'] = {
        {coords = vector3(-1498.23, 42.639881, 49.939762), length = 0.6, width = 0.6, heading = 33, minZ = 47, maxZ = 51},
    },
    ['crip'] = {
        {coords = vector3(-707.6612, -893.9108, 20.344417), length = 0.6, width = 0.6, heading = 33, minZ = 18, maxZ = 21}
    },
    ['dow'] = {
        {coords = vector3(1036.5189, -2542.278, 33.204784), length = 0.6, width = 0.6, heading = 33, minZ = 29, maxZ = 34}
    },
    ['bnj'] = {
        {coords = vector3(-1130.951, -1601.188, 5.1791739), length = 0.6, width = 0.6, heading = 33, minZ = 3, maxZ = 6}
    },
    ['ballas'] = {
        {coords = vector3(-8.812295, -1810.685, 21.139019), length = 0.6, width = 0.6, heading = 33, minZ = 18, maxZ = 22}
    },
    --[[ ['ballas'] = {
        { coords = vector3(988.72, -135.66, 74.06), length = .06, width = 0.6, heading = 330, minZ = 73.66, maxZ = 74.62 },
    },
    ['vagos'] = {
        { coords = vector3(988.72, -135.66, 74.06), length = .06, width = 0.6, heading = 330, minZ = 73.66, maxZ = 74.62 },
    },
    ['cartel'] = {
        { coords = vector3(988.72, -135.66, 74.06), length = .06, width = 0.6, heading = 330, minZ = 73.66, maxZ = 74.62 },
    },
    ['families'] = {
        { coords = vector3(988.72, -135.66, 74.06), length = .06, width = 0.6, heading = 330, minZ = 73.66, maxZ = 74.62 },
    }, ]]
   
}

  
