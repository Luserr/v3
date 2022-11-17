Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 30 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 180 -- time in hours between payment being due
Config.MinimumDown = 50 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = true -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['vans'] = 'Vans',
            ['super'] = 'Super',
            ['sports'] = "Sports"
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-50.0162, -1083.089, 26.890003, 201.27291), -- where the vehicle will spawn on display
                defaultVehicle = 'prairie', -- Default display vehicle
                chosenVehicle = 'prairie', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-47.78192, -1091.387, 26.890428, 204.65061),
                defaultVehicle = 'gladiator',
                chosenVehicle = 'gladiator'
            },
            [3] = {
                coords = vector4(-36.52421, -1093.11, 26.890642, 125.90818),
                defaultVehicle = 'dukes3',
                chosenVehicle = 'dukes3'
            },
            [4] = {
                coords = vector4(-55.01621, -1096.645, 26.891075, 315.92822),
                defaultVehicle = 'sentinel',
                chosenVehicle = 'sentinel'
            },
            [5] = {
                coords = vector4(-42.36839, -1102.05, 26.890449, 5.9397263),
                defaultVehicle = 'kiagt',
                chosenVehicle = 'kiagt'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-755.9841, -239.1408),
                vector2(-765.435, -243.5008),
                vector2(-788.8688, -253.0819),
                vector2(-798.6605, -236.8247),
                vector2(-805.2348, -225.2306),
                vector2(-817.9022, -202.5788),
                vector2(-821.3347, -196.8502),
                vector2(-806.7448, -189.7496),
                vector2(-790.1545, -180.1995),
                vector2(-783.6674, -191.6165),
                vector2(-774.1028, -208.4327),
                vector2(-756.6436, -238.3805)
            },
            ['minZ'] = 33.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 4.75 -- size of the vehicles zones
        },
        ['Job'] = 'luxury', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 530, -- Blip sprite
        ['blipColor'] = 5, -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports',
            ['muscle'] = 'Muscle'
        },
        ['TestDriveTimeLimit'] = 1,
        ['Location'] = vector3(-793.402, -229.2376, 37.253047),
        ['ReturnLocation'] = vector3(-766.5372, -235.4386, 37.237415),
        ['VehicleSpawn'] = vector4(-775.5676, -229.9222, 36.998481, 203.20715),
        ['TestDriveSpawn'] = vector4(-759.0458, -235.8419, 37.283779, 207.33242), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-803.6917, -215.0321, 36.595596, 267.14724),
                defaultVehicle = 'demon',
                chosenVehicle = 'demon'
            },
            [2] = {
                coords = vector4(-795.5812, -229.1322, 36.595764, 232.80471),
                defaultVehicle = 'bdragon',
                chosenVehicle = 'bdragon'
            },
            [3] = {
                coords = vector4(-791.6828, -236.3572, 36.595371, 15.923196),
                defaultVehicle = 'tempesta2',
                chosenVehicle = 'tempesta2'
            },
            [4] = {
                coords = vector4(-787.8353, -242.7414, 36.594894, 245.25938),
                defaultVehicle = 'bbentayga',
                chosenVehicle = 'bbentayga'
            },
            [5] = {
                coords = vector4(-794.4588, -218.6435, 36.595363, 243.26229),
                defaultVehicle = 'm4lb',
                chosenVehicle = 'm4lb'
            },
            [6] = {
                coords = vector4(-785.4847, -223.851, 36.602573, 57.890651),
                defaultVehicle = 'lp610',
                chosenVehicle = 'lp610'
            },
            [7] = {
                coords = vector4(-794.8896, -209.1986, 36.595161, 161.94674),
                defaultVehicle = 'lfa',
                chosenVehicle = 'lfa'
            },
            [8] = {
                coords = vector4(-785.0736, -213.2931, 36.913589, 301.22747),
                defaultVehicle = 'gtrc',
                chosenVehicle = 'gtrc'
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['boats'] = 'Boats'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['helicopters'] = 'Helicopters',
            ['planes'] = 'Planes'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['police'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(451.72113037109, -1027.4052734375),
            vector2(466.52694702148, -1026.2106933594),
            vector2(466.84201049805, -1011.0835571289),
            vector2(451.4697265625, -1013.9250488281)
            },
            ['minZ'] = 28.1, -- min height of the shop zone
            ['maxZ'] = 29.8, -- max height of the shop zone
            ['size'] = 5.75, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'Police Vehicle Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 137, -- Blip sprite
        ['blipColor'] = 23, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['interceptor'] = 'Interceptors',
            ['standard'] = 'Standard Cars',
            ['polbike'] = 'Police Bikes',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(462.11791, -1019.522, 28.099601), -- Blip Location
        ['ReturnLocation'] = vector3(449.81079, -1025.736, 28.58073), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(455.30203, -1023.798, 28.463083, 46.051811), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(446.53112, -1020.658, 28.505844, 85.796295), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(463.12777, -1019.371, 27.0, 92.010543), -- where the vehicle will spawn on display
                defaultVehicle = 'npolchar', -- Default display vehicle
                chosenVehicle = 'npolchar' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(463.23217, -1014.885, 27.0, 91.169265),
                defaultVehicle = 'npolvic',
                chosenVehicle = 'npolvic'
            },
        },
    },
    ['ambulance'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(325.0516, -568.2046),
            vector2(340.37057, -572.2279),
            vector2(333.42004, -592.6365),
            vector2(317.54782, -587.1763)
            },
            ['minZ'] = 28.1, -- min height of the shop zone
            ['maxZ'] = 29.8, -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones 
        },
        ['Job'] = 'ambulance', -- Name of job or none
        ['ShopLabel'] = 'EMS Vehicle Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 40, -- Blip sprite
        ['blipColor'] = 1, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['EMS'] = 'EMS Vehicles'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(325.86672, -576.0149, 28.79832), -- Blip Location
        ['ReturnLocation'] = vector3(322.08859, -574.505, 28.796865), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(332.17849, -579.675, 28.796863, 341.86557), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(323.11074, -586.1121, 28.796865, 335.84289), -- where the vehicle will spawn on display
                defaultVehicle = 'emsnspeedo', -- Default display vehicle
                chosenVehicle = 'emsnspeedo' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(329.49615, -588.921, 28.796869, 331.47222), -- where the vehicle will spawn on display
                defaultVehicle = 'dodgeEMS', -- Default display vehicle
                chosenVehicle = 'dodgeEMS' -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },
    ['RowsRides'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(287.12478, -1141.775),
                vector2(312.96801, -1140.97),
                vector2(313.9689, -1155.603),
                vector2(313.59664, -1167.038),
                vector2(261.74569, -1166.287),
                vector2(261.69305, -1154.569),
                vector2(262.2283, -1140.675)
            },
            ['minZ'] = 20.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 4.75 -- size of the vehicles zones
        },
        ['Job'] = 'motordealer', -- Name of job or none
        ['ShopLabel'] = 'Rows Rides', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 226, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['motorcycles'] = 'Motorcycles',
            ['cycles'] = 'Bicycles'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(283.08322, -1156.921, 29.272972), -- Blip Location
        ['ReturnLocation'] = vector3(260.17227, -1157.054, 29.259576), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(300.4006, -1154.585, 29.273023, 192.01574), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(314.10229, -1157.722, 29.29199, 346.78887), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(270.9714, -1164.818, 28.817697, 322.20654), -- where the vehicle will spawn on display
                defaultVehicle = 'avarus', -- Default display vehicle
                chosenVehicle = 'avarus', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(275.16992, -1162.494, 28.81529, 312.02035),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
        },
    },
    ['tuner'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(168.50222, -3021.91),
                vector2(170.46095, -3040.056),
                vector2(170.12066, -3064.62),
                vector2(114.23769, -3063.388),
                vector2(114.20518, -3043.06),
                vector2(114.19347, -3021.313),
                vector2(114.44706, -3008.16)
            },
            ['minZ'] = 17.0, -- min height of the shop zone
            ['maxZ'] = 30.0, -- max height of the shop zone
            ['size'] = 4.75 -- size of the vehicles zones
        },
        ['Job'] = 'tuner', -- Name of job or none
        ['ShopLabel'] = 'Tuner', -- Blip name
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 226, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['mazda'] = 'Mazda',
            ['nissan'] = 'Nissan',
            ['acura'] = 'Acura',
            ['mitsubishi'] = 'Mitsubishi',
            ['subaru'] = 'Subaru',
            ['toyota'] = 'Toyota',
            ['honda'] = "Honda",
            ['lexus'] = "Lexus",
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(163.27218, -3043.269, 5.0962305), -- Blip Location
        ['ReturnLocation'] = vector4(163.27218, -3043.269, 5.0962305, 90.63742), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(162.71537, -3009.491, 5.1061568, 89.548088), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(162.84681, -3033.778, 5.7669782, 266.89471), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(148.76368, -3044.306, 6.7394819, 321.29016), -- where the vehicle will spawn on display
                defaultVehicle = 'r35', -- Default display vehicle
                chosenVehicle = 'r35', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(144.83073, -3046.812, 6.3632907, 321.82968),
                defaultVehicle = 'razerhycade34',
                chosenVehicle = 'razerhycade34',
            },
        },
    },
}