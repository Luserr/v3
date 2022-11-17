QBCore = nil

Citizen.CreateThread(function()
    while QBCore == nil do
        QBCore = exports['qb-core']:GetCoreObject()
        Citizen.Wait(1000)
    end
end)

RegisterNetEvent('ak47_qb_usablecookiesv2:notify')
AddEventHandler('ak47_qb_usablecookiesv2:notify', function(msg)
    QBCore.Functions.Notify(msg)
end)

RegisterNetEvent('ak47_qb_usablecookiesv2:progress')
AddEventHandler('ak47_qb_usablecookiesv2:progress', function(msg, time)
    QBCore.Functions.Progressbar(msg, msg, time, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function()

    end)
end)

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

GetClosestPlayer = function(coords)
    return GetClosestEntity(GetPlayers(true, true), true, coords, nil)
end

GetClosestEntity = function(entities, isPlayerEntities, coords, modelFilter)
    local closestEntity, closestEntityDistance, filteredEntities = -1, -1, nil

    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        local playerPed = PlayerPedId()
        coords = GetEntityCoords(playerPed)
    end

    if modelFilter then
        filteredEntities = {}

        for k,entity in pairs(entities) do
            if modelFilter[GetEntityModel(entity)] then
                table.insert(filteredEntities, entity)
            end
        end
    end

    for k,entity in pairs(filteredEntities or entities) do
        local distance = #(coords - GetEntityCoords(entity))

        if closestEntityDistance == -1 or distance < closestEntityDistance then
            closestEntity, closestEntityDistance = isPlayerEntities and k or entity, distance
        end
    end

    return closestEntity, closestEntityDistance
end

GetPlayers = function(onlyOtherPlayers, returnKeyValue, returnPeds)
    local players, myPlayer = {}, PlayerId()

    for k,player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)

        if DoesEntityExist(ped) and ((onlyOtherPlayers and player ~= myPlayer) or not onlyOtherPlayers) then
            if returnKeyValue then
                players[player] = ped
            else
                table.insert(players, returnPeds and ped or player)
            end
        end
    end

    return players
end

function tofloat(value)
    return tonumber(string.format("%.2f", value))
end

--If you want to add some effect on smoke then make events like this and add your effect inside
function effectJoint()
    local ped = PlayerPedId()
    AddArmourToPed(ped, 25)
    SetTimecycleModifierStrength(0.0)
    SetTimecycleModifier('spectator6')
    SetPedMotionBlur(PlayerPedId(), true)
    Citizen.Wait(5000)
    SetTimecycleModifierStrength(0.66)
    Citizen.Wait(3000)
    ShakeGameplayCam('DRUNK_SHAKE', 2.5)
    Citizen.Wait(3000)
    RequestClipSet('MOVE_M@DRUNK@SLIGHTLYDRUNK')
    while not HasClipSetLoaded('MOVE_M@DRUNK@SLIGHTLYDRUNK') do
        Citizen.Wait(0)
    end
    SetPedMovementClipset(PlayerPedId(), 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    while effectTime > 0 do
        Citizen.Wait(1000)
    end
    Citizen.Wait(15000)
    ClearTimecycleModifier()
    Citizen.Wait(15000)
    ShakeGameplayCam('DRUNK_SHAKE', 0.0)
    SetPedMotionBlur(PlayerPedId(), false)
    Citizen.Wait(15000)
    ResetPedMovementClipset(PlayerPedId(), 0)
end

--On Smoke Joint Events
AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:cake_mix_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:cereal_milk_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:cheetah_piss_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:gary_payton_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:gelatti_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:georgia_pie_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:jefe_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:snow_man_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:white_runtz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:blueberry_cruffin_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:whitecherry_gelato_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:fine_china_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:pink_sandy_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:zushi_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:apple_gelato_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:biscotti_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:collins_ave_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:marathon_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:oreoz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:pirckly_pear_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:runtz_og_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:blue_tomyz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:ether_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:froties_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:gmo_cookies_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:ice_cream_cake_pack_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:khalifa_kush_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:la_confidential_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:marshmallow_og_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:moon_rock_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:sour_diesel_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookiesv2:onsmoke:tahoe_og_joint', function()
    effectJoint()
end)

--On Smoke Vape Events
AddEventHandler('ak47_qb_usablecookiesv2:onvape:blueberry_jam_cookie', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:butter_cookie', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:get_figgy', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:key_lime_cookie', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:marshmallow_crisp', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:no_99', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:paris_fog', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:pogo', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:pumpkin_cookie', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:shamrock_cookie', function()
    
end)

AddEventHandler('ak47_qb_usablecookiesv2:onvape:strawberry_jam_cookie', function()
    
end)

