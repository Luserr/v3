--[[

    Variables

]]

Housing.ClosestObject = {}
Housing.plyCoords = nil

local runDebugLocations = false
local cleaning = false
local addition = {}
local targetProperty = 0

local _i, _f, _v, _r, _ri, _rf, _rl, _s, _rv, _ro, _in, _ii, _fi =
Citizen.PointerValueInt(), Citizen.PointerValueFloat(), Citizen.PointerValueVector(),
Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger(), Citizen.ResultAsFloat(), Citizen.ResultAsLong(), Citizen.ResultAsString(), Citizen.ResultAsVector(), Citizen.ResultAsObject(),
Citizen.InvokeNative, Citizen.PointerValueIntInitialized, Citizen.PointerValueFloatInitialized

local string_len = string.len
local inv_factor = 1.0 / 370.0

--[[

    Functions

]]

function generateZoneList()
    for k,v in pairs(Housing.info) do
        local zone = GetZoneAtCoords(v["pos"])
        local zoneName = GetNameOfZone(v["pos"])

        if Housing.zone[zoneName] == nil then
            Housing.zone[zoneName] = {
                locations = {},
                zoneName = zoneName
            }
        end

        Housing.zone[zoneName].locations[k] = vec3FromVec4(v["pos"])
    end

    local shouldSend = RPC.execute("housingShouldSetZoneLocations")
    if shouldSend then
        RPC.execute("setZoneLocations", Housing.zone)
    end
end

function vec3FromVec4(vec4)
    return vector3(vec4.x,vec4.y,vec4.z)
end

function Draw3DText(x,y,z, text)
    local factor = string_len(text) * inv_factor
    local onScreen,_x,_y = _in(0x34E82F05DF2974F5, x, y, z, _f, _f, _r) -- GetScreenCoordFromWorldCoord

    if onScreen then
        _in(0x07C837F9A01C34C9, 0.35, 0.35) -- SetTextScale
        _in(0x66E0276CC5F6B9DA, 4) -- SetTextFont
        _in(0x038C1F517D7FDCF8, 1) -- SetTextProportional
        _in(0xBE6B23FFA53FB442, 255, 255, 255, 215) -- SetTextColour
        _in(0x25FBB336DF1804CB, "STRING") -- SetTextEntry
        _in(0xC02F4DBFB51D988B, 1) -- SetTextCentre
        _in(0x6C188BE134E074AA, text) -- AddTextComponentString, assumes "text" is of type string
        _in(0xCD015E5BB0D96A57, _x, _y) -- DrawText
        _in(0x3A618A217E5154F0, _x,_y+0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68) -- DrawRect
    end
end

function buildPropertyListAddition(model)
    local addonProperty = {}
    local missingZones = {}
    local index = #Housing.info

    for k, v in pairs(addition) do
        local streetName , crossingRoad = GetStreetNameAtCoord(v[2].x,v[2].y,v[2].z)
        result = ""..GetStreetNameFromHashKey(streetName).." "..GetStreetNameFromHashKey(crossingRoad)
        addonProperty[index] = {
            [1] = v[2],
            [2] = vector4(0.0, 0.0, 0.0, 0.0),
            ["model"] = model,
            ["Street"] = result,
            ["enabled"] = true
        }
        index = index + 1
    end

    for k, v in pairs(Housing.info) do
        local zone = GetZoneAtCoords(v["pos"])
        local zoneName = GetNameOfZone(v["pos"])

        if Housing.zoningPrices[zoneName] == nil then
            missingZones[zoneName] = zoneName
        end
    end

    TriggerServerEvent("saveNewProperty", addonProperty, missingZones)
end

function playerInRangeOfProperty(propertyID)
    if propertyID == nil or propertyID == 0 then
        return false
    end

    local playerCoords = GetEntityCoords(PlayerPedId())
    local distance = #(playerCoords - vec3FromVec4(Housing.info[propertyID]["pos"]))

    if distance <= Housing.ranges.editRange then
        return true
    end

    if distance <= 600 and Housing.currentlyInsideBuilding then
        return true
    end

    return false
end

function Raycast()
    local start = GetEntityCoords(PlayerPedId())
    local target = vector3(start.x,start.y,start.z - 1.5)

    local ray = StartShapeTestRay(start, target, -1, PlayerPedId(), 1)
    local a, b, c, d, ent = GetShapeTestResult(ray)
    return {
        Hit = b,
        SurfaceNormal = d,
    }
end

function isLocked(propertyID,hideText)
    if Housing.currentHousingLocks == nil or Housing.currentHousingLocks[propertyID] == nil then
        if not hideText then
            TriggerEvent("DoLongHudText","Propriedade trancada",2)
        end
        return true
    end

    if Housing.currentHousingLocks[propertyID] == true then
        if not hideText then
            TriggerEvent("DoLongHudText","Propriedade trancada",2)
        end
        return true
    else
        return false
    end
end

function isPropertyActive(propertyID)
    return Housing.info[propertyID]["enabled"]
end

function fixHousingLockdownIndexing(currentHousingLockdown)
    local newTable = {}
    local index1 = 1

    for k,v in pairs(currentHousingLockdown) do
        newTable[index1] = {}
        newTable[index1].housing_id = k
        newTable[index1].state = v
    end

    return newTable
end

function fixHousingLocksIndexing(currentHousingLocks)
    local newTable = {}
    local index1 = 1

    for k,v in pairs(currentHousingLocks) do
        newTable[index1] = {}
        newTable[index1].housing_id = k
        newTable[index1].state = v
    end

    return newTable
end

function fixOwnedIndexing(ownedHousing)
    local newTable = {}
    local index1 = 1

    for k,v in pairs(ownedHousing) do
        newTable[index1] = v
        newTable[index1].id = k

        local index2 = 1
        local newkeyTable = {}

        for i,u in pairs(newTable[index1].housingKeys) do
            newkeyTable[index2] = {}
            newkeyTable[index2].id = u.id and u.id or i
            newkeyTable[index2].character_id = u.cid and u.cid or u.character_id
            newkeyTable[index2].first_name = u.first_name
            newkeyTable[index2].last_name = u.last_name
            index2 = index2 + 1
        end

        newTable[index1].housingKeys = newkeyTable
        index1 = index1 + 1
    end

    return newTable
end

function fixKeyIndexing(keyTable)
    local newKeyTable = {}
    local index1 = 1

    for k,v in pairs(keyTable) do
        newKeyTable[index1] = {}
        newKeyTable[index1].housing_id = k
        newKeyTable[index1].street = v.information.housingName
        newKeyTable[index1].name = v.information.name

        local index2 = 1
        newKeyTable[index1].keys = {}

        for u,i in pairs(v) do
            if u ~= "information" then
                newKeyTable[index1].keys[index2] = {
                    key_id = u,
                    cid = i,
                }
                index2 = index2 + 1

            end
        end

        index1 = index1 + 1
    end

    return newKeyTable
end

function isNearProperty(isOwned)
    local isComplete, propertyId, dist, zone = Housing.func.findClosestProperty()

    if isComplete and dist <= 3.0 then
        if Housing.typeInfo[Housing.info[propertyId].model].cat == "buisness" then
            return false, nil
        end

        if isOwned then
            if Housing.currentOwned[propertyId] == nil and Housing.currentKeys[propertyId] == nil and Housing.currentHousingLocks[propertyId] == nil then
                return false, nil
            end
            return true, propertyId
        end

        return true, propertyId
    end

    return false, nil
end

function canRent()
    local isComplete, propertyId, dist, zone = Housing.func.findClosestProperty()

    if isComplete and dist <= 3.0 then
        if Housing.typeInfo[Housing.info[propertyId].model].cat == "buisness" then
            return false
        end

        local canRent = RPC.execute("qpixel-housing:canRent", propertyId)
        if canRent == false then
            return false
        end

        return true
    end

    return false
end

function hasCorrectFlags(flag,propertyID)
    local cat = getHousingCatFromPropertID(propertyID)
    local max = Housing.max[cat]
    if Housing.info[propertyID].bypass and Housing.info[propertyID].bypass[flag] then return true end
    if max[flag] then return true else return false end
end

function hasKey(propertyID)
    local job = exports['isPed']:isPed("myjob")
    if job == "police" or job == "judge" then
        return true
    end

    if Housing.currentHousingLockdown[propertyID] ~= nil then
        TriggerEvent("DoLongHudText", "Propriedade bloqueada, você não pode entrar", 2)
        return false
    end

    if Housing.currentOwned[propertyID] == nil and Housing.currentKeys[propertyID] == nil then
        return false
    end

    return true
end

--[[

    Exports

]]

exports("isNearProperty", isNearProperty)
exports("hasKey", hasKey)
exports("canRent", canRent)

--[[

    Events

]]

RegisterNetEvent("property:menuAction")
AddEventHandler("property:menuAction", function(pData)
    local action = pData.action
    local isComplete, propertyID, dist, zone = Housing.func.findClosestProperty()

    if isComplete and dist <= 3.0 then
        if Housing.typeInfo[Housing.info[propertyID].model].cat == "buisness" then return false end
        if action == "lockdown" then
            RPC.execute("property:clientLockdown",propertyID)
        elseif action == "checkOwner" then
            RPC.execute("property:getOwner",propertyID)
        elseif action == "forfeit" then
            targetProperty = propertyID
            exports["caue-context"]:showContextMenu(MenuData["property_check"])
        end
    else
        TriggerEvent("apartments:menuAction",action)
    end
end)

AddEventHandler("qpixel-housing:handler", function(data, cb)
    local eventData = data.key
    local eventType = eventData.type

    if eventType == "forfeit" then
        if targetProperty == nil or targetProperty == 0 then cb({ data = {}, meta = { ok = false, message = "Error" } }) end

        if eventData.forfeit then
            seizeProperty(targetProperty)
        end

        targetProperty = 0
    end

    if eventType == "removeInv" then

        if eventData.remove then
            local success, message = placeBench(true)
            TriggerEvent("DoLongHudText", message)
        end

    end

    if eventType == "removeCraft" then
        if eventData.remove then
            setInventory()
        end
    end

    cb({ data = {}, meta = { ok = true, message = "done" } })
end)

--[[

    Threads

]]

Citizen.CreateThread(function()
    Wait(2000)

    generateZoneList()

    while true do
        if runDebugLocations then
            Housing.plyCoords = GetEntityCoords(PlayerPedId())
            cleaning = false

            for k, v in pairs(Housing.info) do
                local vec3 = vector3(v["pos"].x, v["pos"].y, v["pos"].z)
                local dist = #(vec3-Housing.plyCoords)

                if dist < 500 then
                    Housing.ClosestObject[#Housing.ClosestObject+1] = {i}
                end
            end

            Wait(5000)

            cleaning = true
            Housing.ClosestObject = {}
        else
            Wait(20000)
        end
    end
end)

Citizen.CreateThread(function()
    exports["qpixel-keybinds"]:registerKeyMapping("","Housing", "Interact", "+propertyInteract", "-propertyInteract", "E")
    RegisterCommand("+propertyInteract", InteractionPressed, false)
    RegisterCommand("-propertyInteract", function() end, false)

    --buildPropertyListAddition("ghost_stash_houses_01")

    local colorTable = {
        ["shop"] = {235, 16, 115},
        ["ex_int_office_03b_dlc"] = {17, 33, 212},
        ["nopixel_trailer"] = {216, 16, 235},
        ["v_int_16_low"] = {64, 112, 133},
        ["v_int_16_mid_empty"] = {38, 255, 230},
        ["v_int_24"] = {59, 222, 9},
        ["v_int_44_empty"] = {237, 255, 36},
        ["v_int_49_empty"] = {199, 138, 24},
        ["v_int_61"] = {84, 28, 28},
        ["ghost_stash_houses_01"] = {255,255,255},
        ["np_warehouse_3"] = {255,33,255},
        ["v_int_16_high"] = {199, 138, 24},
        ["buisness_high"] = {84, 28, 28},
    }

    while true do
        if runDebugLocations then
            Housing.plyCoords = GetEntityCoords(PlayerPedId())

            for k, v in pairs(Housing.info) do
                local pos = vector3(v["pos"].x, v["pos"].y, v["pos"].z)

                local dist = #(pos-Housing.plyCoords)
                if dist <= 400 then
                    local color = colorTable[v.model]
                    DrawMarker(1,pos, 0, 0, 0, 0, 0, 0, 0.701,1.0001,100.3001, color[1], color[2], color[3], 255, 0, 0, 0, 0)
                end
            end

            if #Housing.ClosestObject >= 1 or cleaning then
                Wait(1)
            else
                Wait(2000)
            end
        else
            Wait(20000)
        end
    end
end)