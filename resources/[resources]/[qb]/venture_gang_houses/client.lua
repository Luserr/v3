local QBCore = exports['qb-core']:GetCoreObject()

local cspot = vector3(-717.4725, -883.4114, -19.37256)

local access = false

local currentcrips = 0

function TeleportToInterior(x, y, z, h)
    CreateThread(function()
        SetEntityCoords(PlayerPedId(), x, y, z, 0, 0, 0, false)
        SetEntityHeading(PlayerPedId(), h)

        Wait(100)

        DoScreenFadeIn(1000)
    end)
end

--[[exports('accessCheck', function(bool)
    if bool == true then
        access = true
    else
        if bool == false then
            access = false
        end
    end
end)

exports('accessCheck', accessCheck)]]--

function createShell(shell, shellcoords, shellname, shellentercoords, shelleh)
    local objects = {}
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end

    RequestModel(shell)
    while not HasModelLoaded(shell) do
        print('Waiting for shell model')
        Wait(1000)
    end
    local shellname = CreateObject(shell, shellcoords.x, shellcoords.y, shellcoords.z, false, false, false)
    FreezeEntityPosition(shellname, true)
    objects[#objects+1] = shellname
    TeleportToInterior(shellentercoords.x, shellentercoords.y, shellentercoords.z, shelleh)
    return {objects}
end

RegisterNetEvent('venture:gangs:createShell', function()
    shellinput = exports['qb-input']:ShowInput({
        header = 'Create Shell',
        inputs = {
            {
                text = 'Shell Model',
                name = 'Shell',
                type = 'text',
                isRequired = true
            },
            {
                text = 'Shell Coordinates(vector3)',
                name = ShellCoords,
                type = 'text',
                isRequired = true
            },
            {
                text = 'Name the Shell',
                name = ShellName,
                type = 'text',
                isRequired = true
            },
            {
                text = 'Coordinates entering shell(vector3)',
                name = ShellECoords,
                type = 'text',
                isRequired = true
            },
            {
                text = 'Shell Enter Heading(H Value)',
                name = ShellEH,
                type = 'number',
                isRequired = true
            }
        }
    })
    if shellinput == nil then
        return
    end
    createShell(shellinput.Shell, shellinput.ShellCoords, shellinput.ShellName, shellinput.ShellECoords, shellinput.ShellEH)
end)

RegisterCommand('createshell', function()
    QBCore.Functions.TriggerCallback('qb-admin/server/get-permission', function(result)
        if result == 'admin' or 'god' then
            TriggerEvent('venture:gangs:createShell')
        else
            QBCore.Functions.Notify('Access Denied', 'error')
        end
    end)
end)

RegisterNetEvent('venture:gangs:client:CripStash', function()
    local entercoords = vector3(-717.2722, -889.0111, -18.24851)
    local objects = {}
    local POIOffsets = {}
    POIOffsets.exit = json.decode('{"x": 4.693, "y": -6.015, "z": 1.11, "h":358.634}')
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
    RequestModel('container2_shell')
    while not HasModelLoaded('container2_shell') do
        Wait(1000)
    end
    local cripStash = CreateObject('container2_shell', cspot.x, cspot.y, cspot.z, false, false, false)
    FreezeEntityPosition(cripStash, true)
    objects[#objects+1] = cripStash
    TeleportToInterior(entercoords.x, entercoords.y, entercoords.z, 5.9589233)
    return {objects, POIOffsets}
end) --vector3(-1098.173, -1678.481, 4.3506388)

RegisterNetEvent('venture:gangs:client:BNJStash', function()
    local bnjspot = vector3(-1069.841, -1667.862, -52.54451) --vector3(-1098.173, -1678.481, 4.3506388)
    local enterspot = vector4(-1070.005, -1673.382, -51.42048, 353.99679)
    local objects = {}
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
    RequestModel('container2_shell')
    while not HasModelLoaded('container2_shell') do
        Wait(1000)
    end
    local bnjspot = CreateObject('container2_shell', bnjspot.x, bnjspot.y, bnjspot.z, false, false, false)
    FreezeEntityPosition(bnjspot, true)
    objects[#objects+1] = bnjspot
    TeleportToInterior(enterspot.x, enterspot.y, enterspot.z, 353.99679)
    return {objects}
end) --vector3(-1351.917, -128.7208, 50.110607)

RegisterNetEvent('venture:gangs:client:synstash', function()
    local synspot = vector3(-1353.092, -135.5007, 42.15533)
    local enterspot = vector3(-1352.968, -140.784, 43.279354)
    local objects = {}
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
    RequestModel('container2_shell')
    while not HasModelLoaded('container2_shell') do
        Wait(1000)
    end
    local synstash = CreateObject('container2_shell', synspot.x, synspot.y, synspot.z, false, false, false)
    FreezeEntityPosition(synstash, true)
    objects[#objects+1] = synspot
    TeleportToInterior(enterspot.x, enterspot.y, enterspot.z, 43.279354)
    return {objects}
end)

RegisterNetEvent('venture:gangs:client:dowstash', function()
    local synspot = vector3(1023.8797, -2511.881, 15.991188)
    local enterspot = vector3(1023.9484, -2517.371, 17.115222)
    local objects = {}
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
    RequestModel('container2_shell')
    while not HasModelLoaded('container2_shell') do
        Wait(1000)
    end
    local synstash = CreateObject('container2_shell', synspot.x, synspot.y, synspot.z, false, false, false)
    FreezeEntityPosition(synstash, true)
    objects[#objects+1] = synspot
    TeleportToInterior(enterspot.x, enterspot.y, enterspot.z, 43.279354)
    return {objects}
end)

RegisterNetEvent('venture:gangs:client:Shell2Test', function()
    local testspot = vector3(1490.0003, 1101.4865, 194.46803)
    --local enterspot = 
    local objects = {}
    RequestModel('stashhouse1_shell')
    while not HasModelLoaded('stashhouse1_shell') do
        print('waiting for model')
        Wait(1000)
    end
    local testshell = CreateObject('stashhouse1_shell', testspot.x, testspot.y, testspot.z, false, false, false)
    FreezeEntityPosition(testshell, true)
    print('Model loaded shell created')
    objects[#objects+1] = testshell
    --TeleportToInterior(enterspot.x enterspot.y, enterspot.z)
    return {objects}
end)

RegisterNetEvent('venture:gangs:client:Hacking', function()
    local Players = QBCore.Functions.GetPlayers()
    for i=1, #Players do
        local xPlayers = QBCore.Functions.GetPlayerData(Players[i])
        if xPlayers.gang.name == 'crip' then
            currentcrips = currentcrips + 1
        end
    end
end)

function unlockStash()
    exports['qb-target']:AddBoxZone('cripstasharea', vector3(-690.6897, -878.8674, 24.712724), 1, 1, {
        name='cripstasharea',
        heading=57.45,
        debugPoly=false,
        minZ = 6.04,
        maxZ = 7.64,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'venture:gangs:client:CripStash',
                    icon = 'fas fa-warehouse',
                    label = 'Crip Stash House',
                },
            },
        distance = 1.5
    })
end

RegisterNetEvent('venture:gangs:client:StartHack', function(amount)
    TriggerEvent('venture:gangs:client:Hacking')
    print('Gang Heist Starting')
    Wait(1000)
    local PlayerData = QBCore.Functions.GetPlayerData()
    if currentcrips >= 0 then
        print('Gang Heist Started')
        exports['hacking']:OpenHackingGame(20, 5, 5, function(Success)
            print(Success)
            if Success then
                exports['qb-target']:RemoveZone('cripstasharea')
                QBCore.Functions.Notify('Unlocking Stash', 'success')
                Wait(1000)
                unlockStash()
            else
               QBCore.Functions.Notify('YOU FAILED', 'error')
            end
    end)
    end
end)

RegisterNetEvent('venture:gangs:client:CripStashExit', function()
    --vector4(-689.6996, -878.8312, 24.498628, 266.88824)
    local ped = PlayerPedId()
    SetEntityCoords(ped, -689.6996, -878.8312, 24.498628, false, false, false, true)
end)

RegisterNetEvent('venture:gangs:client:bnjwarehouseexit', function()
    local ped = PlayerPedId()
    SetEntityCoords(ped, -1099.135, -1678.082, 4.3746795, false, false, false, true)
end)

RegisterNetEvent('venture:gangs:client:synwarehouseexit', function()
    local ped = PlayerPedId()
    SetEntityCoords(ped, -1351.837, -127.8387, 50.159317, false, false, false, true)
end)

RegisterNetEvent('venture:gangs:client:dowwarehouseexit', function()
    local ped = PlayerPedId()
    SetEntityCoords(ped, 1025.0485, -2508.377, 28.455192, false, false, false, true)
end)