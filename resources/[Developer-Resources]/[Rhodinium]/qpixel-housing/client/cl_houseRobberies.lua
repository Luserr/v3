--[[

    Variables

]]

Housing.housingBeingRobbedClient = {}
Housing.housingRobTargets = {}
Housing.currentlyRobInside = false

Housing.staticObjectRobPoints = nil
Housing.robPosLocations = nil

Housing.currentClosestSelected = nil
Housing.currentlyDisplayingPickup = false
Housing.destroyedObjects = {}
Housing.alarm = {}

Housing.attackedTarget = nil
Housing.lockpicking = false

Housing.lockout = false

local failedAlarm = false
local insideGame = false
local daytime = true

--[[

    Functions

]]

function isInRobbery()
    if Housing.currentlyRobInside ~= nil and Housing.currentlyRobInside ~= 0 then
        return true
    else
        return false
    end
end

function attemptToLockPickHouse(skipPicking)
    local isComplete, propertyID, dist, zone = Housing.func.findClosestProperty()
    if not isComplete then return end
    if not isPropertyActive(propertyID) then return end

    if dist > 2.0 then return end

    local player = GetEntityCoords(PlayerPedId())
    local finished, housingInformation, currentHousingLocks, isResult, housingLockdown, housingRobbed, robTargets = RPC.execute("getCurrentSelected", propertyID)

    if type(housingLockdown) == "table" then
        Housing.currentHousingLockdown = housingLockdown
    end

    if type(currentHousingLocks) == "table" then
        Housing.currentHousingLocks = currentHousingLocks
    end

    if type(housingRobbed) == "table" then
        Housing.housingBeingRobbedClient = housingRobbed
    end

    if not canRobProperty() then
        TriggerEvent("DoLongHudText", "I don't think it's a good choice to mess around here this early, it can go to shit", 2)
        return
    end

    if type(robTargets) == "table" then
        Housing.housingRobTargets = robTargets
    end

    local lockpicked, housingRobbed, robTargets, alarm = false, {}, {}, false

    local pickedToOpen = false
    if not skipPicking then
        if not Housing.housingBeingRobbedClient[propertyID] then
            lockpickDoor()
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 3.0, "lockpick", 0.4)

            local finished = exports["qpixel-taskbar"]:taskBar(math.random(5000, 10000), "Breaking in")

            local failed = false
            if math.random(100) < 30 then
                failed = true
            end

            ClearPedTasks(PlayerPedId())

            if finished ~= 100 or failed then
                TriggerEvent("inventory:removeItem","lockpick", 1)
                TriggerEvent("Evidence:StateSet",26,1200)
                TriggerEvent("evidence:bleeding",false)
                Housing.lockpicking = false
                return
            end

            lockpicked, housingRobbed, robTargets, alarm = RPC.execute("housing:robbery:pickedLock", propertyID)

            if type(housingRobbed) == "table" then
                Housing.housingBeingRobbedClient = housingRobbed
            end

            if type(robTargets) == "table" then
                Housing.housingRobTargets = robTargets
            end

            Housing.alarm = alarm
            pickedToOpen = true
        else
            TriggerEvent("DoLongHudText","You can move the door.",2)
            return
        end
    end

    if pickedToOpen and not skipPicking then
        TriggerEvent("civilian:alertPolice", 10.0, "housing")
    end

    if lockpicked then
        Housing.lockout = false
        Housing.attackedTarget = propertyID
        Housing.currentlyRobInside = propertyID
        Housing.func.enterBuilding(propertyID,nil,false)
    else
        if Housing.attackedTarget == nil then
            Housing.lockout = false
            Housing.attackedTarget = propertyID
        end
        Housing.lockpicking = false
        Housing.currentlyRobInside = propertyID
        Housing.func.enterBuilding(propertyID,nil,true)
    end
end

function canRobProperty()
    local myjob = exports['isPed']:isPed("myJob")
    if myjob == "police" or myjob == "judge" then
        return true
    end

    if daytime == false then
        return true
    end

    return false
end

function lockpickDoor()
    if Housing.lockpicking then return end
    Housing.lockpicking = true
    Citizen.CreateThread(function()
        local lPed = PlayerPedId()
        RequestAnimDict("veh@break_in@0h@p_m_one@")
        while not HasAnimDictLoaded("veh@break_in@0h@p_m_one@") do
            Citizen.Wait(0)
        end

        while Housing.lockpicking do
            TaskPlayAnim(lPed, "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0, 1.0, 1.0, 16, 0.0, 0, 0, 0)
            Citizen.Wait(2500)
        end
        ClearPedTasks(lPed)
    end)
end

function buildRobLocations(model, propertyID)
    local robLocations = {}

    local index1 = 1
    for k, v in pairs(Housing.staticObjectRobPoints) do
        robLocations[index1] = v
        robLocations[index1].model = robLocations[index1].id
        robLocations[index1].id = getIdfromObjectName(model,robLocations[index1].id)
        index1 = index1 + 1
    end

    local buildingVector = exports["qpixel-build"]:getModule("func").currentBuildingVector()
    for i, v in ipairs(Housing.housingRobTargets.pos) do
        local vector = Housing.robInformation.staticLocations[model].staticPositions[i].pos

        robLocations[index1] = {["pos"] = getGlobalVector(vector,buildingVector) ,["id"] = i, ["model"] = "none"}
        index1 = index1 + 1
    end

    local finished, locations = RPC.execute("housing:robbery:robLocationsGenerated", robLocations, propertyID)
    Housing.robPosLocations = locations
    alarm(false)
end

function getIdfromObjectName(model,objectName)
    if Housing.robInformation.dynamic[objectName] ~= nil then
        return Housing.robInformation.dynamic[objectName]
    end

    return Housing.robInformation.staticLocations[model].staticObjects[objectName]
end

function getGlobalVector(vector,buildingVector)
    local vec3 = vec3FromVec4(vector)
    return (vec3 + buildingVector)
end

function alarm(clearAlarm)
    if Housing.alarm then
        local alarmOffset = exports["qpixel-build"]:getModule("func").getAlarm()

        if alarmOffset ~= false then
            TriggerEvent("InteractSound_CL:playAlarm", alarmOffset, clearAlarm)
        end
    else
        TriggerEvent("InteractSound_CL:playAlarm", false, true)
    end
end

function displayPickup(force,itemName)
    if force and Housing.currentlyDisplayingPickup == true then
        Housing.currentlyDisplayingPickup = false
        exports["qpixel-textui"]:hideInteraction()
    end

    if Housing.currentlyDisplayingPickup == false and not force then
        Housing.currentlyDisplayingPickup = true
        if type(itemName) == "string" then
            exports["qpixel-textui"]:showInteraction("[E] Take Object")
        else
            exports["qpixel-textui"]:showInteraction("[E] Look for some belongings.")
        end
    end
end

function interactRob()
    if not Housing.currentlyDisplayingPickup then return end
    if Housing.currentClosestSelected == nil then return end

    local item = Housing.robPosLocations[Housing.currentClosestSelected].id
    local vec3 = Housing.robPosLocations[Housing.currentClosestSelected].pos
    local model = Housing.robPosLocations[Housing.currentClosestSelected].model

    local targetObject = GetClosestObjectOfType(vec3.x,vec3.y,vec3.z, 5.0,GetHashKey(model), 0, 0, 0)
    if targetObject == 0 and type(item) == "string" then return end

    if type(item) == "string" then
        local weight = exports["qpixel-inventory"]:getCurrentWeight()
        if weight + 200 >= 250 then
            TriggerEvent("DoLongHudText","You are carrying too much weight.",2)
            return
        end
    end

    local finished, message = RPC.execute("housing:robbery:searchedPoint", Housing.currentlyRobInside, Housing.currentClosestSelected)
    if not finished then
        Housing.robPosLocations[Housing.currentClosestSelected].completed = true
        return
    end

    if Housing.alarm == true and math.random(1, 100) > 90 then
        TriggerEvent("alert:houseRobbery", true)
        RPC.execute("property:alarmDisabled", Housing.attackedTarget, true)
    end

    local player = PlayerPedId()
    if type(item) == "string" then
        local timer = 10000

        if Housing.WaitTimes[item] then
            timer = Housing.WaitTimes[item]
        end

        TaskTurnPedToFaceCoord(player,vec3.x,vec3.y,vec3.z,0.1)
        TriggerEvent("animation:PlayAnimation","search")
        local finished = exports["qpixel-taskbar"]:taskBar(timer,"Securing Item")
        ClearPedTasks(PlayerPedId())
        if finished ~= 100 then
            return
        end
        TriggerEvent("doAnim","pickup")
        Wait(2000)
        ClearPedTasks(PlayerPedId())
    else
        TriggerEvent("animation:PlayAnimation","search")
        local finished = exports["qpixel-taskbar"]:taskBar(15000,"Procurando")
        ClearPedTasks(PlayerPedId())
        if finished ~= 100 then
            return
        end
    end

    if finished then
        if type(item) == "string" then
            DeleteEntity(targetObject)
            local complete,message = RPC.execute("housing:robbery:destroyedObject", Housing.currentlyRobInside, model, vec3)
            if complete then
                TriggerEvent("player:receiveItem", item, 1)
            end
        else
            local euemeusmanosodiamosoartmike = math.random(1, 100)
            local items = {}

            if euemeusmanosodiamosoartmike >= 90 then
                TriggerServerEvent("qpixel-heists:complete", math.random(30, 50))
            elseif euemeusmanosodiamosoartmike >= 76 then
                items = {"stolenrolexwatch", "stolen10ctchain", "stolenring", "stolenlaptop"}
            elseif euemeusmanosodiamosoartmike >= 66 then
                items = {"codein", "sprunk", "femaleseed", "rollingpaper"}
            elseif euemeusmanosodiamosoartmike >= 59 then
                items = {"mobilephone", "camera"}
            elseif euemeusmanosodiamosoartmike >= 47 then
                items = {"water", "sandwich", "ciggy"}
            elseif euemeusmanosodiamosoartmike >= 36 then
                items = {"lockpick"}
            elseif euemeusmanosodiamosoartmike >= 21 then
                items = {"joint", "lean", "1gcocaine", "1gmeta"}
            elseif euemeusmanosodiamosoartmike >= 14 then
                TriggerEvent("DoLongHudText", "You didn't find anything")
            elseif euemeusmanosodiamosoartmike >= 7 then
                TriggerServerEvent("qpixel-heists:complete", math.random(30, 50))
            elseif euemeusmanosodiamosoartmike >= 1 then
                items = {"3638508604", "-1024456158"}
            --[[
            elseif euemeusmanosodiamosoartmike >= 1 then
                local _items = {"148457251", "-2012211169"}
                local information = {
                    ["ammo"] = math.random(5, 15)
                }

                TriggerEvent("player:receiveItem", _items[math.random(#_items)], 1, true, information)
            ]]--
            end

            if #items > 0 then
                TriggerEvent("player:receiveItem", items[math.random(#items)], 1)
            end
        end

        local complete,destroyedTable = RPC.execute("getDestroyedTable", Housing.currentlyRobInside)
        if type(destroyedTable) == "table" then
            Housing.destroyedObjects = destroyedTable
        end

        Housing.robPosLocations[Housing.currentClosestSelected].completed = true
    end
end

function isBeingRobbed(pPropertyId)
    if Housing.housingBeingRobbedClient and Housing.housingBeingRobbedClient[pPropertyId] then
        return true
    else
        return false
    end
end

--[[

    Exports

]]

exports("isInRobbery", isInRobbery)
exports("isBeingRobbed", isBeingRobbed)

--[[

    Events

]]

RegisterNetEvent("qpixel-weathersync:currentTime", function(pHour, pMinute)
    if (pHour > 19 or pHour < 7) and daytime then
		daytime = false
	elseif (pHour <= 19 and pHour >= 7) and not daytime then
		daytime = true
    else
        daytime = true
	end
end)

RegisterCommand("housing:attemptToLockPick", function()
    attemptToLockPickHouse()
end)
RegisterNetEvent("housing:attemptToLockPick")
AddEventHandler("housing:attemptToLockPick", function()
    attemptToLockPickHouse()
end)

RegisterNetEvent("qpixel-housing:alarmFail")
AddEventHandler("qpixel-housing:alarmFail", function()
    if not insideGame then
        TriggerEvent("alert:houseRobbery", true)
        RPC.execute("property:alarmDisabled", Housing.attackedTarget, true)
    end
    failedAlarm = true
end)

RegisterNetEvent("qpixel-housing:alarmEnter")
AddEventHandler("qpixel-housing:alarmEnter", function()
    insideGame = true
    local successevrp
    if not Housing.alarm then return end

    for i = 1, 6 do
        local unitygordolamamaco = {5000, 15}

        if i == 2 then
            unitygordolamamaco = {4500, 13}
        elseif i == 3 then
            unitygordolamamaco = {4000, 13}
        elseif i == 4 then
            unitygordolamamaco = {3500, 10}
        elseif i == 5 then
            unitygordolamamaco = {3000, 10}
        elseif i == 6 then
            unitygordolamamaco = {3000, 7}
        end
        exports['ld-lockpick']:OpenLockpickGame(function(success)
            successevrp = success
          end, unitygordolamamaco[2])
          
          if not successevrp then
            failedAlarm = true
            break
          end
    end

    if failedAlarm then
        TriggerEvent("alert:houseRobbery", true)
        RPC.execute("property:alarmDisabled", Housing.attackedTarget, true)
    else
        RPC.execute("property:alarmDisabled", Housing.attackedTarget)
    end

    failedAlarm = false
    insideGame = false
end)

RegisterNetEvent("property:updateAlarms")
AddEventHandler("property:updateAlarms", function(alarmPass)
    Housing.alarm = alarmPass
    if not Housing.alarm then
        alarm(true)
    end
end)

RegisterNetEvent("housing:exitFrontDoor")
AddEventHandler("housing:exitFrontDoor", function()
    TriggerEvent("housing:robbery:clearRobbery")
    TriggerServerEvent("qpixel-housing:leftHouse", Housing.currentHousingInteractions.id)

    DoScreenFadeOut(1)
    exports["qpixel-build"]:getModule("func").exitCurrentRoom(Housing.info[Housing.currentHousingInteractions.id]["pos"])
    exitingBuilding()
    DoScreenFadeIn(1900)
end)

RegisterNetEvent("housing:robbery:clearRobbery")
AddEventHandler("housing:robbery:clearRobbery", function()
    Housing.housingBeingRobbedClient = {}
    Housing.housingRobTargets = {}
    Housing.currentlyRobInside = false

    Housing.staticObjectRobPoints = nil
    Housing.robPosLocations = nil

    Housing.currentClosestSelected = nil
    Housing.currentlyDisplayingPickup = false
    Housing.destroyedObjects = {}

    Housing.attackedTarget = nil
    Housing.lockout = false
end)

RegisterNetEvent("qpixel-housing:alarm")
AddEventHandler("qpixel-housing:alarm", function(pHouseId)
    if pHouseId == Housing.currentlyRobInside then
        local gameTimer = GetGameTimer() + 30000


        while true do
            local alarmOffset = exports["qpixel-build"]:getModule("func").currentBuildingVector()

            if GetGameTimer() > gameTimer or alarmOffset == false then
                break
            end

            TriggerEvent("InteractSound_CL:PlayAudioAtPosition", alarmOffset, 70.0, "vault-alarm", 0.2, false, 20.0, 0.1)
            Citizen.Wait(3000)
        end
    end
end)

RegisterNetEvent("qpixel-housing:beingRobbed", function(pPropertyId)
    if type(pPropertyId) == "table" then
        Housing.housingBeingRobbedClient = pPropertyId
    else
        Housing.housingBeingRobbedClient[pPropertyId] = true
    end
end)

--[[

    Threads

]]

Citizen.CreateThread(function()
    while true do
        if Housing.attackedTarget ~= nil then
            local playerCoords = GetEntityCoords(PlayerPedId())

            if Housing.currentlyRobInside ~= false then
                if Housing.robPosLocations ~= nil then
                    local closestDist = 999
                    local closest = nil

                    for i=1, #Housing.robPosLocations do
                        if not Housing.robPosLocations[i].completed then
                            local pos = Housing.robPosLocations[i].pos
                            local dist = #(pos-playerCoords)
                            if dist <= 1.3 and dist < closestDist then
                                closestDist = dist
                                closest = i
                            end
                        end
                    end

                    Housing.currentClosestSelected = closest

                    local item = 0
                    if Housing.robPosLocations[Housing.currentClosestSelected] ~= nil then
                        item = Housing.robPosLocations[Housing.currentClosestSelected].id
                    end

                    if Housing.currentClosestSelected ~= nil then
                        displayPickup(false, item)
                    else
                        displayPickup(true)
                    end
                end
            end

            local propertyPos = vec3FromVec4(Housing.info[Housing.attackedTarget]["pos"])
            if propertyPos ~= nil and Housing.currentlyRobInside == false and not Housing.lockout then
                local dist = #(playerCoords-propertyPos)
                if dist > 100 then
                    Housing.lockout = true
                    RPC.execute("housing:robbery:targetRemovePlayer", Housing.attackedTarget)
                end
            end

            Wait(500)
        else
            Wait(20000)
        end
    end
end)