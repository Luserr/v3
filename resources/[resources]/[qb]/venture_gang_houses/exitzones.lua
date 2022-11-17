local QBCore = exports['qb-core']:GetCoreObject()

exports['qb-target']:AddBoxZone('cripstashexit', vector3(-717.1643, -889.1092, -18.24852), 1, 1, {
    name='cripstashexit',
    heading=57.45,
    debugPoly=false,
    minZ = -20.04,
    maxZ = -16.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:CripStashExit',
                icon = 'fas fa-user',
                label = 'Exit Crip Warehouse',
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('bnjwarehousexit', vector3(-1069.938, -1673.488, -51.42047), 1, 1, {
    name='BoxZoneName',
    heading=57.45,
    debugPoly=false,
    minZ = -53.04,
    maxZ = -49.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:bnjwarehouseexit',
                icon = 'fas fa-user',
                label = 'Exit BNJ Warehouse',
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('synwarehousexit', vector3(-1352.931, -141.2426, 43.279354), 1, 1, {
    name='synwarehousexit',
    heading=57.45,
    debugPoly=false,
    minZ = 41.04,
    maxZ = 45.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:synwarehouseexit',
                icon = 'fas fa-user',
                label = 'Exit Syndicate Warehouse',
                gang = 'syn'
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('dowhousexit', vector3(1023.9901, -2517.623, 17.115222), 1, 1, {
    name='dowhousexit',
    heading=57.45,
    debugPoly=false,
    minZ = 16.04,
    maxZ = 19.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:gangs:client:dowwarehouseexit',
                icon = 'fas fa-user',
                label = 'Exit DOW Warehouse',
                gang = "dow"
            },
        },
    distance = 1.5
})