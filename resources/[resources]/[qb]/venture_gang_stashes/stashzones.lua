local QBCore = exports['qb-core']:GetCoreObject()

exports['qb-target']:AddBoxZone('rrccripstash', vector3(-717.5794, -879.1491, -18.24849), 1, 1, {
    name='rrccripstash',
    heading=57.45,
    debugPoly=false,
    minZ = -20.04,
    maxZ = -16.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_crips:stash',
                icon = 'fas fa-warehouse',
                label = 'Crip Gang Stash',
                gang = 'crip'
            },
        },
    distance = 1.5
})


exports['qb-target']:AddBoxZone('bnjstash', vector3(-1069.847, -1663.544, -51.42047), 1, 1, {
    name='bnjstash',
    heading=57.45,
    debugPoly=false,
    minZ = -53.04,
    maxZ = -49.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_bnj:stash',
                icon = 'fas fa-user',
                label = 'BNJ Stash',
                gang = 'bnj'
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('synstash', vector3(-1353.127, -131.1947, 43.279354), 1, 1, {
    name='synstash',
    heading=57.45,
    debugPoly=false,
    minZ = 41.04,
    maxZ = 45.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_syn:stash',
                icon = 'fas fa-user',
                label = 'Syndicate Stash',
            },
        },
    distance = 1.5
})

exports['qb-target']:AddBoxZone('dowstash', vector3(1023.7333, -2515.287, 17.115249), 1, 1, {
    name='dowstash',
    heading=57.45,
    debugPoly=false,
    minZ = 16.04,
    maxZ = 19.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_dow:stash',
                icon = 'fas fa-user',
                label = 'DOW Stash',
            },
        },
    distance = 1.5
})