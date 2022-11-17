-- Make Food Zone
exports['qb-target']:AddBoxZone('vonmakefood', vector3(-627.5883, 223.59078, 81.881546), 1, 1, {
    name='vonmakefood',
    heading=57.45,
    debugPoly=false,
    minZ = 80.04,
    maxZ = 83.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:client:Menu',
                icon = 'fas fa-user',
                label = 'Make Food',
                job = 'starbucks'
            },
        },
    distance = 1.5
})

-- Food Ingredients Zone
exports['qb-target']:AddBoxZone('prepzone', vector3(-631.3059, 223.52622, 81.881561), 1, 1, {
    name='prepzone',
    heading=57.45,
    debugPoly=false,
    minZ = 80.04,
    maxZ = 83.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:client:PrepMenu',
                icon = 'fas fa-user',
                label = 'Prep Menu',
                job = 'starbucks'
            },
        },
    distance = 1.5
})

-- Start Delivery
exports['qb-target']:AddBoxZone('vondelivery', vector3(-631.4912, 224.87507, 81.881546), 1, 1, {
    name='vondelivery',
    heading=57.45,
    debugPoly=false,
    minZ = 80.04,
    maxZ = 83.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:client:Delivery',
                icon = 'fas fa-user',
                label = 'Start Delivery',
                job = 'starbucks'
            },
        },
    distance = 3.5
})

-- Billing Area
exports['qb-target']:AddBoxZone('vonbilling', vector3(-635.9193, 234.46485, 81.881553), 1, 1, {
    name='vonbilling',
    heading=57.45,
    debugPoly=false,
    minZ = 79.04,
    maxZ = 83.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:client:Bill',
                icon = 'fas fa-user',
                label = 'Charge Customer',
                job = 'starbucks'
            },
        },
    distance = 1.5
})

-- Tray 1
exports['qb-target']:AddBoxZone('starbuckstray1', vector3(-634.3325, 235.18409, 83.117515), 1, 1, {
    name='starbuckstray1',
    heading=57.45,
    debugPoly=false,
    minZ = 81.04,
    maxZ = 85.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:Tray1',
                icon = 'fas fa-eye',
                label = 'Tray 1',
                job = "starbucks"
            },
        },
    distance = 1.5
})

-- Store

exports['qb-target']:AddBoxZone('starbucksstore', vector3(-631.5878, 225.04972, 81.881546), 1, 1, {
    name='starbucksstore',
    heading=57.45,
    debugPoly=false,
    minZ = 80.04,
    maxZ = 83.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:client:Store',
                icon = 'fas fa-market',
                label = 'Open Store',
                job = 'starbucks'
            },
        },
    distance = 1.5
})

--[[
    -- Tray 2    
exports['qb-target']:AddBoxZone('starbuckstray2', vector3(123.52724, -1033.591, 30.26506), 1, 1, {
    name='starbuckstray2',
    heading=57.45,
    debugPoly=false,
    minZ = 29.04,
    maxZ = 31.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture:vonceo:Tray2',
                icon = 'fas fa-eye',
                label = 'Tray 2',
                job = "starbucks"
            },
        },
    distance = 1.5
})]]--