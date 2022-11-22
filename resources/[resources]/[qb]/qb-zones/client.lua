local QBCore = exports['qb-core']:GetCoreObject()

exports['qb-target']:AddBoxZone('emsclothing', vector3(298.51882, -598.2253, 43.284057), 1, 1, {
    name='emsclothing',
    heading=57.45,
    debugPoly=false,
    minZ = 41.04,
    maxZ = 45.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'raid_clothes:openClothing',
                icon = 'fas fa-tshirt',
                label = 'Clothing Store',
                job = 'ambulance'
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('luxuryclockin', vector3(-798.0903, -222.6537, 37.253246), 1, 1, {
    name='luxuryclockin',
    heading=57.45,
    debugPoly=false,
    minZ = 34.04,
    maxZ = 38.64,
    }, {
        options = {
            {
                type = 'server',
                event = 'QBCore:ToggleDuty',
                icon = 'fas fa-laptop',
                label = 'Clock In/Off',
                job = 'luxury'
            },
        },
    distance = 1.5
}) 

exports['qb-target']:AddBoxZone('rowsridesclockin', vector3(289.46801, -1153.2, 29.273044), 1, 1, {
    name='rowsridesclockin',
    heading=57.45,
    debugPoly=false,
    minZ = 27.04,
    maxZ = 31.64,
    }, {
        options = {
            {
                type = 'server',
                event = 'QBCore:ToggleDuty',
                icon = 'fas fa-laptop',
                label = 'Clock In/Off',
                job = 'motordealer'
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('voncrastenburgclockin', vector3(-1203.609, -205.4996, 40.166412), 1, 1, {
    name='voncrastenburgclockin',
    heading=57.45,
    debugPoly=false,
    minZ = 38.04,
    maxZ = 42.64,
    }, {
        options = {
            {
                type = 'server',
                event = 'QBCore:ToggleDuty',
                icon = 'fas fa-laptop',
                label = 'Clock In/Off',
                job = 'voncrastenburg'
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('rangerfingerprint', vector3(382.60681, 794.42987, 191.43818), 1, 1, {
    name='rangerfingerprint',
    heading=57.45,
    debugPoly=false,
    minZ = 188.04,
    maxZ = 193.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'police:fingerprint',
                icon = 'fas fa-fingerprint',
                label = 'Scan Fingerprint',
                job = 'police',
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('rangerstash', vector3(386.97451, 799.7467, 187.46159), 1, 1, {
    name='rangerstash',
    heading=57.45,
    debugPoly=false,
    minZ = 185.04,
    maxZ = 189.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'police:stash',
                icon = 'fas fa-archive',
                label = 'Personal Stash',
                job = 'police',
            },
        },
    distance = 1.5
}) 

exports['qb-target']:AddBoxZone('inforequest', vector3(-537.4031, -194.7055, 39.163269), 1, 1, {
    name='inforequest',
    heading=57.45,
    debugPoly=false,
    minZ = 38.04,
    maxZ = 40.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'romoycinfo:client:DataCheck',
                icon = 'fas fa-file',
                label = 'Request Info',
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('rangerarmor', vector3(377.25665, 799.4555, 187.46159), 1, 1, {
    name='rangerarmor',
    heading=57.45,
    debugPoly=false,
    minZ = 185.04,
    maxZ = 189.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'police:armory',
                icon = 'fas fa-shield',
                label = 'Ranger Armory',
            },
        },
    distance = 1.5
})

exports['qb-target']:AddTargetModel('prop_tshirt_shelf_1', {
	options = {
		{
			event = "raid_clothes:openClothing", --event
			icon = "fas fa-tshirt", -- Icon
			label = "Clothing Store", --Text
			job = "police" 
		},
	},
	distance = 1.5,
})

--[[exports['qb-target']:AddBoxZone('policebloodtest', vector3(483.85913, -987.922, 30.689807), 1, 1, {
    name='policebloodtest',
    heading=57.45,
    debugPoly=false,
    minZ = 28.04,
    maxZ = 32.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'police:bloodtest',
                icon = 'fas fa-laptop',
                label = 'Blood Test',
                job = 'police',
            },
        },
    distance = 1.5
})]]--

exports['qb-target']:AddBoxZone('cripstasharea', vector3(-690.6897, -878.8674, 24.712724), 1, 1, {
    name='cripstasharea',
    heading=57.45,
    debugPoly=false,
    minZ = 22.04,
    maxZ = 26.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:CripStash',
                icon = 'fas fa-warehouse',
                label = 'Crip Stash House',
                --gang = 'crip'
                item = 'cripkey'
            },
            {
                type = 'client',
                event = 'venture:gangs:client:StartHack',
                icon = 'fas fa-microchip',
                label = 'Break into warehouse',
            }
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('bnjhouse', vector3(-1098.173, -1678.481, 4.3506388), 1, 1, {
    name='bnjhouse',
    heading=57.45,
    debugPoly=false,
    minZ = 3.04,
    maxZ = 6.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:BNJStash',
                icon = 'fas fa-warehouse',
                label = 'BNJ Warehouse',
                gang = 'bnj'
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('synhouse', vector3(-1351.712, -128.7404, 50.107284), 1, 1, {
    name='synhouse',
    heading=57.45,
    debugPoly=false,
    minZ = 48.04,
    maxZ = 52.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:synstash',
                icon = 'fas fa-warehouse',
                label = 'Syndicate Warehouse',
                gang = 'syn'
            },
        },
    distance = 1.5
}) 

exports['qb-target']:AddBoxZone('dowhouse', vector3(1024.6053, -2508.621, 28.454963), 1, 1, {
    name='dowhouse',
    heading=57.45,
    debugPoly=false,
    minZ = 26.04,
    maxZ = 30.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:dowstash',
                icon = 'fas fa-user',
                label = 'DOW Warehouse',
                gang = "dow"
            },
        },
    distance = 1.5
})

exports['qb-target']:AddTargetModel('a_f_m_eastsa_01', {
	options = {
		{
			event = "qb-shops:marketshop", --event
			icon = "fas fa-camera", -- Icon
			label = "Open Camera Store", --Text
		},
	},
	distance = 2.5,
})

exports['qb-target']:AddTargetModel('a_m_m_soucent_03', {
	options = {
		{
			event = "qb-houserobbery:startrobbing", --event
			icon = "fas fa-people-carry-box", -- Icon
			label = "Get a job", --Text
		},
	},
	distance = 2.5,
})

RegisterCommand('handsuptest', function()
    local player = QBCore.Functions.GetClosestPlayer()
    local ped = GetPlayerPed(player)
 if IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 1)  then 
    print('true')
 else
    print('false')
    end
end)