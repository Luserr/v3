QBCore = exports['qb-core']:GetCoreObject()
local medBag = nil
local npc = nil
local pedSpawned = false
local grandmaSpawned = false
local grandma = nil
local isShot = false
local isMeleed = false
local isBurned = false
local curWound = nil
local PlayerJob = {}

-- Functions
local function CheckForVehicles()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetEntityCoords(PlayerPed)
    local veh = 0
    for k, v in pairs(Config.AllowedStretcherVehicles) do
        vehicle = QBCore.Functions.GetClosestVehicle(PlayerPos)
        local modelName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()
        if modelName == v then
            veh = vehicle
            break
        end
    end
    return veh
end

local function LayOnStretcher()
    local onStretcher = true
    CreateThread(function()
        local ped = PlayerPedId()
        while onStretcher do
            Wait(0)
            -- If they press E get off the strecther
            if IsControlJustReleased(0, 38) then
                onStretcher = false
                DetachEntity(ped)
                ClearPedTasks(ped)
                Wait(1000)
            end
        end
    end)
end

local function dropDaBag()
    DetachEntity(medBag)
    PlaceObjectOnGroundProperly(medBag)
end

local function iHasDaBag()
    local hasBag = true
    CreateThread(function()
        while hasBag do
            Wait(0)
            -- If they press E drop the fucking bag
            if IsControlJustReleased(0, 38) then
                hasBag = false
                dropDaBag()
                Wait(1000)
            end
        end
    end)
end

-- Events
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

-- Create Stretcher (qb-radialmenu)
RegisterNetEvent('qb-radialmenu:client:TakeStretcher', function()
    TriggerEvent('gl-ambulance:useStretcher')
end)

-- Remove Stretcher (qb-radialmenu)
RegisterNetEvent('qb-radialmenu:client:RemoveStretcher', function()
    TriggerEvent('gl-ambulance:delStretcher')
end)

-- Create Stretcher
RegisterNetEvent('gl-ambulance:useStretcher', function()
    local PlayerPed = PlayerPedId()
    local PlayerPos = GetOffsetFromEntityInWorldCoords(PlayerPed, 0.0, 3.0, 0.5)
    local hash = GetHashKey('prop_ld_binbag_01')
    
    QBCore.Functions.LoadModel(hash)
    local stretcher = CreateObjectNoOffset(hash, PlayerPos.x, PlayerPos.y, PlayerPos.z, true, false)
    if stretcher ~= nil or stretcher ~= 0 then
        SetModelAsNoLongerNeeded(hash)
        QBCore.Functions.RequestAnimDict("anim@heists@box_carry@")
        SetEntityAsMissionEntity(stretcher, true, false)
        PlaceObjectOnGroundProperly(stretcher)
    end
end)

-- Remove Stretcher (Networked)
RegisterNetEvent('gl-ambulance:delStretcher', function(netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end)

-- Push Stretcher
RegisterNetEvent('gl-ambulance:pushstretcher', function()
    local PlayerPed = PlayerPedId()
    local pedCoords = GetEntityCoords(PlayerPed)
    local closestObject = GetClosestObjectOfType(pedCoords, 1.0, GetHashKey("prop_ld_binbag_01"), false)
    local objCoords = GetEntityCoords(closestObject)
    QBCore.Functions.RequestAnimDict("anim@heists@box_carry@")
    
    AttachEntityToEntity(closestObject, PlayerPed, GetPedBoneIndex(PlayerPed, 28422), 0.0, -0.9, -0.52, 195.0, 180.0,
        180.0, 0.0, false, false, false, false, 2, false)
    
    while IsEntityAttachedToEntity(closestObject, PlayerPed) do
        Wait(5)
        
        if not IsEntityPlayingAnim(PlayerPed, 'anim@heists@box_carry@', 'idle', 3) then
            TaskPlayAnim(PlayerPed, 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
        end
        
        if IsPedDeadOrDying(PlayerPed) then
            DetachEntity(closestObject, false, false)
        end
        
        if IsControlJustPressed(0, 38) then
            DetachEntity(closestObject, false, false)
            FreezeEntityPosition(closestObject, true)
            PlaceObjectOnGroundProperly(closestObject)
            ClearPedTasks(PlayerPed)
        end
    end
end)

-- Get On Stretcher
RegisterNetEvent('gl-ambulance:putOnStretcher', function()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local closestObject = GetClosestObjectOfType(pedCoords, 1.0, GetHashKey("prop_ld_binbag_01"), false)
    if DoesEntityExist(closestObject) then
        local objCoords = GetEntityCoords(closestObject)
        QBCore.Functions.RequestAnimDict("anim@gangops@morgue@table@")
        TaskPlayAnim(ped, "anim@gangops@morgue@table@", "body_search", 8.0, 8.0, -1, 33, 0, 0, 0, 0)
        AttachEntityToEntity(ped, closestObject, 0, 0, 0.0, 1.0, 195.0, 0.0, 180.0, 0.0, false, false, false, false, 2, true)
        LayOnStretcher()
    end
end)

-- Laydown On Stretcher
RegisterNetEvent('gl-ambulance:LayDown', function()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local closestObject = GetClosestObjectOfType(pedCoords, 1.0, GetHashKey("prop_ld_binbag_01"), false)
    local objCoords = GetEntityCoords(closestObject)
    QBCore.Functions.RequestAnimDict("anim@gangops@morgue@table@")
    TaskPlayAnim(ped, "anim@gangops@morgue@table@", "body_search", 8.0, 8.0, -1, 33, 0, 0, 0, 0)
    AttachEntityToEntity(ped, closestObject, 0, 0, 0.0, 1.0, 195.0, 0.0, 180.0, 0.0, false, false, false, false, 2, true)
    LayOnStretcher()
end)

-- Pickup Med Bag
RegisterNetEvent('gl-ambulance:pickUpBag', function()
        -- Do Animation Later Dummy
        local pedCoords = GetEntityCoords(PlayerPedId())
        local closestObject = GetClosestObjectOfType(pedCoords, 3.0, GetHashKey("xm_prop_x17_bag_med_01a"), false)
        local objCoords = GetEntityCoords(closestObject)
        if PlayerJob.name == 'ambulance' or PlayerJob.name == 'police' then
            TriggerServerEvent('gl-ambulance:getItemForEMS', 'medbag')
            TriggerServerEvent("gl-ambulance:deleteBag", ObjToNet(closestObject))
        else
            TriggerServerEvent('gl-ambulance:getItemForEMS', 'bandage')
        end
end)

-- Use Med Bag
RegisterNetEvent('gl-ambulance:useMedBag', function()
    local hash = GetHashKey('xm_prop_x17_bag_med_01a')
    local ped = PlayerPedId()
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 3.0, 0.5))
    QBCore.Functions.LoadModel(hash)
    medBag = CreateObjectNoOffset(hash, x, y, z, true, false)
    SetModelAsNoLongerNeeded(hash)
    AttachEntityToEntity(medBag, ped, GetPedBoneIndex(ped, 57005), 0.42, 0, -0.05, 0.10, 270.0, 60.0, true, true, false,
        true, 1, true)
    iHasDaBag()
end)

-- Interact with Med Bag
RegisterNetEvent('gl-ambulance:interactBag', function()
    if PlayerJob.name == 'ambulance' or PlayerJob.name == 'police' then
        print(ff)
        exports['qb-menu']:openMenu({{
            header = 'Medical Bag',
            txt = 'Stored Items',
            isMenuHeader = true
        }, {
            header = 'Tweezers',
            txt = 'Used to Remove Bullets',
            params = {
                event = "gl-ambulance:getItem",
                args = {
                    item = 'tweezers'
                }
            }
        }, {
            header = 'Suture Kit',
            txt = 'Used to Stitch Up Wounds',
            params = {
                event = "gl-ambulance:getItem",
                args = {
                    item = 'suturekit'
                }
            }
        }, {
            header = 'Burn Cream',
            txt = 'Your moms gonna need it',
            params = {
                event = "gl-ambulance:getItem",
                args = {
                    item = 'burncream'
                }
            }
        }, {
            header = 'Defibrillator',
            txt = 'For Restoring a Heart Beat',
            params = {
                event = "gl-ambulance:getItem",
                args = {
                    item = 'defib'
                }
            }
        }, {
            header = 'Sedative',
            txt = 'Go Night Night',
            params = {
                event = "gl-ambulance:getItem",
                args = {
                    item = 'sedative'
                }
            }
        }, {
            header = 'Foldable Stretcher',
            txt = 'Stretcher',
            params = {
                event = "gl-ambulance:getItem",
                args = {
                    item = 'stretcher'
                }
            }
        }})
    end
end)

-- Use Item
RegisterNetEvent('gl-ambulance:useItem', function(itemName)
    exports['qb-menu']:closeMenu()
    
    if itemName == 'medikit' then
        local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01'
        local playerPed = PlayerPedId()
        
        QBCore.Functions.RequestAnimDict(lib)
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
        
        Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Wait(0)
            DisableAllControlActions(0)
        end
        
        TriggerEvent('gl-ambulance:heal', 'full', true)
        QBCore.Functions.Notify('You have used 1x MediKit', 'success', 2000)
    end
end)

-- Get Item From Med Bag
RegisterNetEvent('gl-ambulance:getItem', function(data)
    TriggerServerEvent('gl-ambulance:getItemForEMS', data.item)
end)

-- Delete Med Bag (Networked)
RegisterNetEvent('gl-ambulance:deleteBag', function(netId)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end)

-- Player Pulse Callback
RegisterNetEvent('gl-ambulance:sendPulseBack', function(target)
    local sendToWhom = target
    local minPulse = 60
    local maxPulse = 80
    local status = 'They seem fine'
    QBCore.Functions.TriggerCallback('gl-ambulance:isPlayerDead', function(isdead)
        if isdead then
            minPulse = 0
            maxPulse = 0
            status = 'No heartbeat'
        else
            if isShot then
                minPulse = 120
                maxPulse = 200
                status = 'Bleeding from apparent gunshot wounds'
            end
            if isMeleed then
                minPulse = 90
                maxPulse = 115
                status = 'Has deep lacerations/bruising'
            end
            if isBurned then
                minPulse = 20
                maxPulse = 50
                status = 'Burns all over their body'
            end
        end
        local pulse = math.random(minPulse, maxPulse)
        TriggerServerEvent('gl-ambulance:reportPulseBack', sendToWhom, pulse, status)
    end, GetPlayerServerId(PlayerId()))
end)

-- Check Player Wounds
RegisterNetEvent('gl-ambulance:checkPlayerWounds', function(player, wound)
    if curWound == wound then
        TriggerServerEvent('gl-ambulance:treatPlayerWounds', player, curWound)
    end
end)

-- Treating Player Wounds
RegisterNetEvent('gl-ambulance:tryTreatingPlayer', function(wound)
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance <= 3.0 then
        playerID = GetPlayerServerId(player)
        TriggerServerEvent('gl-ambulance:checkPlayerWounds', playerID, wound)
    end
end)

-- Treating Target Wounds
RegisterNetEvent('gl-ambulance:treatTargetWound', function(wound)
    if wound == 'bullet' then
        TriggerEvent('gl-ambulance:treatBulletWound')
    elseif wound == 'stitch' then
        TriggerEvent('gl-ambulance:treatDeepWound')
    elseif wound == 'burn' then
        TriggerEvent('gl-ambulance:treatBurnWound')
    end
end)

RegisterNetEvent('gl-ambulance:treatBulletWound', function()
    if isShot then
        -- Add Animation Stuff
        isShot = false
        curWound = nil
    end
end)

RegisterNetEvent('gl-ambulance:treatDeepWound', function()
    if isMeleed then
        -- Add Animation Stuff
        isMeleed = false
        curWound = nil
    end
end)

RegisterNetEvent('gl-ambulance:treatBurnWound', function()
    if isBurned then
        -- Add Animation Stuff
        isBurned = false
        curWound = nil
    end
end)

-- Treating Player Wounds Animations
RegisterNetEvent('gl-ambulance:treatAnimations', function(wound)
    local ped = PlayerPedId()
    -- Change Animations later
    if wound == 'bullet' then
        QBCore.Functions.RequestAnimDict("mini@repair")
        TaskPlayAnim(ped, "mini@repair", "fixing_a_ped", 8.0, 1.0, -1, 17, 0, 0, 0, 0)
        Wait(3000)
        ClearPedTasks(ped)
    elseif wound == 'stitch' then
        QBCore.Functions.RequestAnimDict("mini@repair")
        TaskPlayAnim(ped, "mini@repair", "fixing_a_ped", 8.0, 1.0, -1, 17, 0, 0, 0, 0)
        Wait(3000)
        ClearPedTasks(ped)
    elseif wound == 'burn' then
        QBCore.Functions.RequestAnimDict("mini@repair")
        TaskPlayAnim(ped, "mini@repair", "fixing_a_ped", 8.0, 1.0, -1, 17, 0, 0, 0, 0)
        Wait(3000)
        ClearPedTasks(ped)
    end
end)

-- Use Sedative
RegisterNetEvent('gl-ambulance:useSedative', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance <= 3.0 then
        TriggerServerEvent('gl-ambulance:goNightNight', GetPlayerServerId(player))
    end
end)

-- Night Night Bitch
RegisterNetEvent('gl-ambulance:goNightNight', function()
    local ped = PlayerPedId()
    QBCore.Functions.RequestAnimDict('mini@cpr@char_b@cpr_def')
    TaskPlayAnim(ped, 'mini@cpr@char_b@cpr_def', 'cpr_pumpchest_idle', 8.0, 8.0, -1, 33, 0, 0, 0, 0)
    FreezeEntityPosition(ped, true)
    Wait(20000)
    FreezeEntityPosition(ped, false)
end)

-- Put Player Into Vehicle
RegisterNetEvent('gl-ambulance:putInVehicle', function(vehid)
    local ped = PlayerPedId()
    local vehicle = NetworkGetEntityFromNetworkId(vehid)
    if DoesEntityExist(vehicle) then
        if IsVehicleSeatFree(vehicle, 1) then
            TaskWarpPedIntoVehicle(ped, vehicle, 1)
        else
            TaskWarpPedIntoVehicle(ped, vehicle, 2)
        end
    end
end)

-- Take Player Out Of Vehicle
RegisterNetEvent('gl-ambulance:getOutVehicle', function()
    local player = PlayerId()
    local ped = PlayerPedId()
    if not IsPedSittingInAnyVehicle(ped) then
        return
    end
    local vehicle = GetVehiclePedIsIn(ped, false)
    TaskLeaveVehicle(ped, vehicle, 16)
    Wait(500)
    TriggerServerEvent('gl-ambulance:putOnStretcher', GetPlayerServerId(player))
end)

--  -- Spawn Nancy
--  RegisterNetEvent('gl-ambulance:spawnPed', function(coords, heading)
--      local hash = GetHashKey('s_f_y_scrubs_01')
--      QBCore.Functions.LoadModel(hash)
  
--      npc = CreatePed(5, hash, coords, heading, false, false)
--      FreezeEntityPosition(npc, true)
--      SetEntityInvincible(npc, true)
--      SetBlockingOfNonTemporaryEvents(npc, true)
--      SetModelAsNoLongerNeeded(hash)
--      exports['qb-target']:AddEntityZone('nancy', npc, {
--          name = "nancy",
--          heading = GetEntityHeading(npc),
--          debugPoly = false
--      }, {
--          options = {{
--              action = function(entity)
--                  TriggerServerEvent('gl-ambulance:revivePlayer', GetPlayerServerId(PlayerId()), 'nancy')
--              end,
--              icon = "fas fa-clipboard-list",
--              label = "Check In"
--          }},
--          distance = 2.5
--      })
--  end)
--  -- Interact With Nancy
--  RegisterNetEvent('gl-ambulance:checkInNancy', function()
--      local ped = PlayerPedId()
--      local bed = Config.BedLocs[math.random(#Config.BedLocs)]
--      QBCore.Functions.Notify('You have been moved to a bed for Treatment.', 'success')
--      SetEntityCoords(ped, bed.x, bed.y, bed.z + 1)
--      QBCore.Functions.RequestAnimDict('anim@gangops@morgue@table@')
--      TaskPlayAnim(ped, 'anim@gangops@morgue@table@', 'body_search', 8.0, -8.0, -1, 1, 0, false, false, false)
--      SetEntityHeading(ped, bed.w - 180.0)
--      Wait(20000)
--      TriggerEvent("hospital:client:HealInjuries", "full")
--      TriggerEvent('hospital:client:Revive')
--      SetEntityHealth(ped, 200)
--      ClearPedTasks(ped)
--      QBCore.Functions.Notify('You are good now, stop getting in trouble.', 'success')
--  end)

-- Spawn Grandma
RegisterNetEvent('gl-ambulance:spawnGrandmaPed', function(coords, heading)
    local hash = GetHashKey('ig_mrs_thornhill')
    QBCore.Functions.LoadModel(hash)
    
    grandma = CreatePed(5, hash, coords, heading, false, false)
    FreezeEntityPosition(grandma, true)
    SetEntityInvincible(grandma, true)
    SetBlockingOfNonTemporaryEvents(grandma, true)
    SetModelAsNoLongerNeeded(hash)
    exports['qb-target']:AddEntityZone('grandma', grandma, {
        name = "grandma",
        heading = GetEntityHeading(grandma),
        debugPoly = false,
        useZ = true
    }, {
        options = {{
            event = "gl-ambulance:useGrandmas",
            icon = "fas fa-heart",
            label = "Revive"
        }},
        distance = 2.5
    })
end)

-- Interact With Grandma
RegisterNetEvent('gl-ambulance:useGrandmas', function()
    QBCore.Functions.Notify('I\'ll take care of you sonny', 'primary', 5000)
    Wait(5000)
    TriggerServerEvent('gl-ambulance:revivePlayer', GetPlayerServerId(PlayerId()), 'grandma')
end)

-- Body Bag
RegisterNetEvent('gl-ambulance:bodyBag', function()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local pedRotation = GetEntityRotation(ped)
    local hash = GetHashKey('xm_prop_body_bag')
    QBCore.Functions.LoadModel(hash)
    SetEntityCollision(ped, false, false)
    SetEntityVisible(ped, false, false)
    bodyBag = CreateObject(hash, pedCoords, true, true, true)
    SetModelAsNoLongerNeeded(hash)
    AttachEntityToEntity(bodyBag, ped, 0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, false, false, true, true, 0, false)
    FreezeEntityPosition(ped, true)
    while not IsEntityAttached(bodyBag) do
        Wait(0)
    end
    SetEntityCoords(ped, pedCoords.x, pedCoords.y, pedCoords.z - 2.0, false, false, false, false)
end)

-- Revive Player
RegisterNetEvent('gl-ambulance:tryRevivePlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance <= 3.0 then
        if PlayerJob.name == 'ambulance' or PlayerJob.name == 'police' then
            playerID = GetPlayerServerId(player)
            QBCore.Functions.TriggerCallback('gl-ambulance:isPlayerDead', function(isdead)
                if isdead then
                    QBCore.Functions.RequestAnimDict('anim@gangops@facility@servers@bodysearch@')
                    TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@", "player_search", 8.0, -8.0,
                        -1, 48, 0, false, false, false)
                    Wait(5000)
                    TriggerServerEvent('gl-ambulance:revivePlayer', playerID)
                end
            end, playerID)
        
        else
            playerID = GetPlayerServerId(player)
            QBCore.Functions.TriggerCallback('gl-ambulance:isPlayerDead', function(isdead)
                if isdead then
                    local doMath = math.random(1, 100)
                    if doMath <= 20 then
                        QBCore.Functions.RequestAnimDict('anim@gangops@facility@servers@bodysearch@')
                        TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@", "player_search", 8.0,
                            -8.0, -1, 48, 0, false, false, false)
                        Wait(5000)
                        TriggerServerEvent('gl-ambulance:revivePlayer', playerID)
                    else
                        QBCore.Functions.Notify('You failed to work the defibrillator and broke it.', 'error')
                    end
                    TriggerServerEvent('gl-ambulance:removeDefib')
                end
            end, playerID)
        end
    end
end)

-- WheelChair
RegisterNetEvent('gl-ambulance:useWheelChair', function()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    QBCore.Functions.SpawnVehicle('wheelchair', function(veh)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(ped, veh, -1)
        Entity(veh).state.ignoreLocks = true
    end, pedCoords)
end)

-- Use Bed
RegisterNetEvent('gl-ambulance:useTheBed', function()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local closestObject = GetClosestObjectOfType(pedCoords, 1.0, GetHashKey("v_med_bed1"), false)
    local objCoords = GetEntityCoords(closestObject)
    local objHeading = GetEntityHeading(closestObject)
    QBCore.Functions.Notify('You have been moved to a bed for Treatment.')
    SetEntityCoords(ped, objCoords.x, objCoords.y, objCoords.z + 1)
    QBCore.Functions.RequestAnimDict('anim@gangops@morgue@table@')
    TaskPlayAnim(ped, 'anim@gangops@morgue@table@', 'body_search', 8.0, -8.0, -1, 1, 0, false, false, false)
    SetEntityHeading(ped, objHeading - 180.0)
    Wait(20000)
    TriggerEvent("hospital:client:HealInjuries", "full")
    ClearPedTasks(ped)
    QBCore.Functions.Notify('You are good now, stop getting in trouble.', 'success')
end)

-- Set Wound
RegisterNetEvent('gl-ambulance:setWound', function(wound)
    if wound == "bullet" then
        curWound = 'bullet'
        isShot = true
    end
    
    if wound == "stitch" then
        curWound = 'stitch'
        isMeleed = true
    end
    
    if wound == "burn" then
        curWound = 'burn'
        isBurned = true
    end
end)

-- Remove Wounds
RegisterNetEvent('gl-ambulance:removeWounds', function()
    curWound = nil
    isShot = false
    isMeleed = false
    isBurned = false
end)

RegisterNetEvent('gl-ambulance:SetPlayerOutWheelchair', function(vehicle)
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        TriggerServerEvent("police:server:SetPlayerOutVehicle", playerId)
    else
        QBCore.Functions.Notify(Lang:t("error.none_nearby"), "error")
    end
end)

-- Main Thread
CreateThread(function()
    local medical = {'xm_prop_x17_bag_med_01a'}
    local stretch = {'prop_ld_binbag_01'}
    local bodybag = {'xm_prop_body_bag'}
    
    -- Medical Bag
    exports['qb-target']:AddTargetModel(medical, {
        options = {{
            event = "gl-ambulance:pickUpBag",
            icon = "fas fa-hand-paper",
            label = 'Pick Up'
        }, {
            event = "gl-ambulance:interactBag",
            icon = "fas fa-hand-paper",
            label = 'Interact',
            job = {
                ["ambulance"] = 0,
                ["police"] = 0
            }
        }},
        distance = 1.5
    })
    
    -- Body Bag
    exports['qb-target']:AddTargetModel(bodybag, {
        options = {{
            icon = "fas fa-heartbeat",
            label = "Remove Bodybag",
            action = function(entity)
                if IsEntityAttachedToAnyPed(entity) then
                    local netid = NetworkGetNetworkIdFromEntity(entity)
                    local ped = GetEntityAttachedTo(entity)
                    local pedCoords = GetEntityCoords(ped)
                    FreezeEntityPosition(ped, false)
                    SetEntityCoords(ped, pedCoords.x, pedCoords.y, pedCoords.z + 2.0, false, true, false, false)
                    SetEntityCollision(ped, true, true)
                    DetachEntity(ped)
                    TriggerServerEvent('gl-ambulance:deleteBag', netid)
                end
            
            end,
            job = "ambulance",
        }},
        distance = 1.5
    })
    
    -- Vehicle
    exports['qb-target']:AddGlobalVehicle({
        options = {{
            icon = "fas fa-ambulance",
            label = 'Take Player from vehicle',
            job = 'ambulance',
            canInteract = function(entity)
                if IsEntityAVehicle(entity) then
                    local vehicle = CheckForVehicles()
                    if vehicle ~= 0 then
                        if GetPedInVehicleSeat(entity, 1) ~= 0 then
                            return true
                        elseif GetPedInVehicleSeat(entity, 2) ~= 0 then
                            return true
                        end
                    end
                end
                return false
            end,
            action = function(entity)
                local coords = GetEntityCoords(entity)
                local player, distance = QBCore.Functions.GetClosestPlayer(coords)
                if player ~= -1 and distance <= 5.0 then
                    TriggerServerEvent('gl-ambulance:getOutVehicle', GetPlayerServerId(player))
                end
            end
        }, {
            icon = "fas fa-ambulance",
            label = 'Put Player Inside Vehicle',
            job = 'ambulance',
            canInteract = function(entity)
                local player, distance = QBCore.Functions.GetClosestPlayer()
                if player ~= -1 and distance <= 3.0 then
                    local vehicle = CheckForVehicles()
                    if vehicle ~= 0 then
                        local ped = GetPlayerPed(player)
                        if not IsPedInAnyVehicle(ped, true) then
                            return true
                        end
                    end
                end
                return false
            end,
            action = function(entity)
                if IsEntityAVehicle(entity) then
                    local player, distance = QBCore.Functions.GetClosestPlayer()
                    if player ~= -1 and distance <= 3.0 then
                        local vehicle = CheckForVehicles()
                        if vehicle ~= 0 then
                            local ped = GetPlayerPed(player)
                            local playerid = GetPlayerServerId(player)
                            local vehicleid = NetworkGetNetworkIdFromEntity(vehicle)
                            if IsEntityAttachedToAnyObject(ped) then
                                local EntityAttachedTo = GetEntityAttachedTo(ped)
                                local EntityModel = GetEntityModel(EntityAttachedTo)
                                if EntityModel == GetHashKey("prop_ld_binbag_01") then
                                    local strecherid = NetworkGetNetworkIdFromEntity(EntityAttachedTo)
                                    TriggerServerEvent('gl-ambulance:putInVehicle', playerid, vehicleid)
                                    Wait(500)
                                    DetachEntity(ped)
                                    ClearPedTasks(ped)
                                    TriggerServerEvent('gl-ambulance:delStretcher', strecherid)
                                end
                            else
                                TriggerServerEvent('gl-ambulance:putInVehicle', playerid, vehicleid)
                            end
                        end
                    end
                end
            end
        }, {
            icon = "fas fa-hand-holding",
            label = 'Collect',
            canInteract = function(entity)
                if IsEntityAVehicle(entity) then
                    local EntityModel = GetEntityModel(entity)
                    if EntityModel == GetHashKey("wheelchair") then
                        return true
                    end
                end
                return false
            end,
            action = function(entity)
                local playerInWheelChair = GetPedInVehicleSeat(entity, -1)
                if playerInWheelChair == 0 then
                    while not NetworkHasControlOfEntity(entity) do
                        NetworkRequestControlOfEntity(entity)
                        Wait(0)
                    end
                    if DoesEntityExist(entity) then
                        QBCore.Functions.DeleteVehicle(entity)
                        TriggerServerEvent('gl-ambulance:giveWheelchair')
                    end
                end
            end
        }},
        distance = 2
    })
    
    -- Player
    exports['qb-target']:AddGlobalPlayer({
        options = {{
            event = "gl-ambulance:PutInVehicletarget",
            icon = "fas fa-shopping-cart",
            label = 'Put in vehicle',
            canInteract = function(entity)
                local vehicle = CheckForVehicles()
                if vehicle ~= 0 then
                    return true
                end
                return false
            end
        }, {
            icon = "fas fa-shopping-cart",
            label = 'Put on Stretcher',
            canInteract = function(entity)
                local coords = GetEntityCoords(entity)
                local closestObject = GetClosestObjectOfType(coords, 3.0, GetHashKey("prop_ld_binbag_01"), false)
                local distance = #(GetEntityCoords(closestObject) - coords)
                if distance <= 2 then
                    return true
                end
                return false
            end,
            action = function(entity)
                if IsPedAPlayer(entity) then
                    TriggerServerEvent('gl-ambulance:putOnStretcher',
                        GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity)))
                end
            end
        }, {
            icon = "fas fa-heartbeat",
            label = "Put In Body Bag",
            canInteract = function(entity)
                local p = promise.new()
                QBCore.Functions.TriggerCallback('gl-ambulance:isPlayerDead', function(isdead)
                    p:resolve(isdead)
                end, GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity)))
                return Citizen.Await(p)
            end,
            action = function(entity)
                TriggerServerEvent('gl-ambulance:bodyBag', GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity)))
            end,
            job = 'ambulance'
        }, {
            icon = "fas fa-heartbeat",
            label = "Check Pulse",
            action = function(entity)
                if IsPedAPlayer(entity) then
                    TriggerServerEvent('gl-ambulance:checkPulse',
                        GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity)))
                end
            end,
            job = 'ambulance'
        }},
        distance = 2.0
    })
    
    -- Stretcher
    exports['qb-target']:AddTargetModel(stretch, {
        options = {{
            event = "gl-ambulance:pushstretcher",
            icon = "fas fa-ambulance",
            label = 'Push'
        }, {
            icon = "fas fa-hand-holding",
            action = function(entity)
                -- local obj = GetObjectIndexFromEntityIndex(entity)
                local netid = NetworkGetNetworkIdFromEntity(entity)
                if not IsEntityAttachedToAnyPed(entity) then
                    TriggerServerEvent('gl-ambulance:delStretcher', netid)
                end
            end,
            label = 'Collect'
        }, {
            event = "gl-ambulance:LayDown",
            icon = "fas fa-bed",
            label = 'Lay Down'
        }, {
            icon = "fas fa-arrow-up",
            label = 'Set Straight',
            action = function(entity)
                PlaceObjectOnGroundProperly(entity)
            end
        }},
        distance = 2.5
    })
    
    -- Beds
    if Config.UseBeds then
        local pillboxBeds = {'v_med_bed1'}
        
        exports['qb-target']:AddTargetModel(pillboxBeds, {
            options = {{
                event = "gl-ambulance:useTheBed",
                icon = "fas fa-bed",
                label = "Lay in Bed"
            }},
            distance = 2.5
        })
    end
    
    -- Spawn NPC When you get close, delete when you leave
    while true do
        Wait(1000)
        local pedCoords = GetEntityCoords(PlayerPedId())
       -- local NPCspawnCoords = Config.NancyPos
        --local dst = #(NPCspawnCoords - pedCoords)
        
       -- if dst < 100 and pedSpawned == false then
         --   TriggerEvent('gl-ambulance:spawnPed', NPCspawnCoords, 66.08)
         --   pedSpawned = true
        --end
        --if dst >= 101 then
        --    pedSpawned = false
        --    DeleteEntity(npc)
        --end
        
        if Config.Grandmas then
            local pedCoords = GetEntityCoords(PlayerPedId())
            local grandmasCoords = Config.GrandmaCoords
            local dst = #(grandmasCoords - pedCoords)
            
            if dst < 100 and grandmaSpawned == false then
                TriggerEvent('gl-ambulance:spawnGrandmaPed', grandmasCoords, 134.07)
                grandmaSpawned = true
            end
            if dst >= 101 then
                grandmaSpawned = false
                DeleteEntity(grandma)
            end
        end
    end
end)
