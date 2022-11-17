-- Food Menu
exports['qb-target']:AddBoxZone('aokifoodmenu', vector3(-172.7783, 301.38354, 97.459938), 1, 1, {
    name='aokifoodmenu',
    heading=57.45,
    debugPoly=false,
    minZ = 95.04,
    maxZ = 99.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_aoki_ceo:client:client:Menu',
                icon = 'fas fa-user',
                label = 'Make Food',
                job = 'aoki'
            },
        },
    distance = 1.5
})

-- Bill Zone

exports['qb-target']:AddBoxZone('aokibillzone', vector3(-172.0425, 295.13342, 93.762115), 1, 1, {
    name='aokibillzone',
    heading=57.45,
    debugPoly=false,
    minZ = 91.04,
    maxZ = 95.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_aoki_ceo:client:Bill',
                icon = 'fas fa-user',
                label = 'Bill Customer',
                job = 'aoki'
            },
        },
    distance = 1.5
})

-- Wash Hands Zone

exports['qb-target']:AddBoxZone('aokihandswashing', vector3(-176.3134, 304.72341, 97.459938), 1, 1, {
    name='BoxZoneName',
    heading=57.45,
    debugPoly=false,
    minZ = 95.04,
    maxZ = 99.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_aoki_ceo:client:washHands',
                icon = 'fas fa-user',
                label = 'Wash Hands',
                job = 'aoki'
            },
        },
    distance = 1.5
})

-- Shop Zone

exports['qb-target']:AddBoxZone('aokishop', vector3(-177.7174, 305.8973, 97.459991), 1, 1, {
    name='aokishop',
    heading=57.45,
    debugPoly=false,
    minZ = 95.04,
    maxZ = 99.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_aoki_ceo:client:Store',
                icon = 'fas fa-shop',
                label = 'Open Ingredient Shop',
                job = 'aoki'
            },
        },
    distance = 1.5
})

-- Tray1 Zone

exports['qb-target']:AddBoxZone('aokitray1', vector3(-171.3465, 292.52346, 94.800704), 1, 1, {
    name='aokitray1',
    heading=57.45,
    debugPoly=false,
    minZ = 91.04,
    maxZ = 96.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_aoki_ceo:client:Tray1',
                icon = 'fas fa-user',
                label = 'Tray 1',
            },
        },
    distance = 1.5
})