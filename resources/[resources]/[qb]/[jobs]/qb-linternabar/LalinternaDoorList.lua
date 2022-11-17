

-- linterna-money created by Quarentin
Config.DoorList['Lalinterna-linterna-money'] = {
    objYaw = 69.999961853027,
    doorRate = 1.0,
    objCoords = vec3(386.603851, -312.287476, 43.105709),
    fixText = true,
    pickable = true,
    objName = 631614199,
    locked = true,
    authorizedJobs = { ['lalinterna'] = 0 },
    items = { ['lockpick'] = 1 },
    doorType = 'door',
    distance = 2,
}

-- linterna-prison created by Quarentin
Config.DoorList['Lalinterna-linterna-prison'] = {
    pickable = true,
    authorizedJobs = { ['lalinterna'] = 0 },
    objName = 631614199,
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    objCoords = vec3(381.557068, -319.151215, 43.106380),
    objYaw = 340.0,
    items = { ['lockpick'] = 1 },
    fixText = false,
    distance = 2,
}

-- linterna-kitchen created by Quarentin
Config.DoorList['Lalinterna-linterna-kitchen'] = {
    pickable = true,
    authorizedJobs = { ['lalinterna'] = 0 },
    objName = 1443843183,
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    objCoords = vec3(376.516602, -308.771973, 47.105888),
    objYaw = 340.0,
    items = { ['lockpick'] = 1 },
    fixText = false,
    distance = 2,
}

-- linterna-boss created by Quarentin
Config.DoorList['Lalinterna-linterna-boss'] = {
    pickable = true,
    authorizedJobs = { ['lalinterna'] = 0 },
    objName = -1821777087,
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    objCoords = vec3(387.722961, -323.776031, 51.209091),
    objYaw = 250.00003051758,
    items = { ['lockpick'] = 1 },
    fixText = false,
    distance = 2,
}

-- linterna-doubledoor created by Quarentin
Config.DoorList['Lalinterna-linterna-doubledoor'] = {
    distance = 2,
    pickable = true,
    doorRate = 1.0,
    locked = false,
    doors = {
        {objName = 982993682, objYaw = 159.99998474121, objCoords = vec3(378.709778, -321.626404, 47.135983)},
        {objName = 982993682, objYaw = 340.0, objCoords = vec3(376.926361, -320.977325, 47.135983)}
    },
    authorizedJobs = { ['lalinterna'] = 0 },
    doorType = 'double',
    items = { ['lockpick'] = 1 },
}



-- linterna-door2 created by Quarentin
Config.DoorList['Lalinterna-linterna-door2'] = {
    doors = {
        {objName = 982993682, objYaw = 159.99998474121, objCoords = vec3(387.441895, -324.809021, 47.149479)},
        {objName = 982993682, objYaw = 340.0, objCoords = vec3(385.656769, -324.159302, 47.149479)}
    },
    doorRate = 1.0,
    pickable = true,
    distance = 2,
    locked = false,
    doorType = 'double',
    authorizedJobs = { ['lalinterna'] = 0 },
    items = { ['lockpick'] = 1 },
}