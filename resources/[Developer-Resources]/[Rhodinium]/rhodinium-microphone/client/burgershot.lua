local hasHeadset = false

RegisterNetEvent('np-inventory:itemCheck', function(pItem, pState, pQuantity)
    if pItem ~= "burgershotheadset" then return end
    checkForHeadset()
end)
 
AddEventHandler('np-restaurants:getHeadset', function(pParameters, pEntity, pContext)
    local biz = pContext.zones['restaurant_sign_on'].biz
    if biz ~= 'burger_shot' then return end
    TriggerEvent('player:receiveItem', 'burgershotheadset', 1, false)
end)

RegisterCommand("headset", function() 
    checkForHeadset()
end, false)

function checkForHeadset()
    local hasItem = true --[[ exports["np-inventory"]:hasEnoughOfItem("burgershotheadset", 1, false, true) ]]
    if not hasItem then
        -- Remove from DriveThru Radio
        turnOffHeadset()
        return
    end

    -- Subscribe to DriveThru Radio
    hasHeadset = true
    TriggerEvent("rhodinium-voice:drivethru:connect", true)
end

function turnOffHeadset()
    hasHeadset = false
    TriggerEvent("rhodinium-voice:drivethru:disconnect", true)
end

function enterDriveThru()
    if hasHeadset then return end
    TriggerEvent("rhodinium-voice:drivethru:setPowerState", true)
    TriggerEvent("rhodinium-voice:drivethru:connect")
end 

function exitDriveThru()
    if hasHeadset then return end
    TriggerEvent("rhodinium-voice:drivethru:disconnect")
end

RegisterNetEvent('qb-polyzone:enter')
AddEventHandler('qb-polyzone:enter', function(name)
    if name == 'restaurant_buff_zone' then
        --[[ CURRENT_RESTAURANT = pData.id
        TriggerEvent("np-buffs:inDoubleBuffZone", true, pData.id)
        checkForHeadset() ]]
    end

    if name == 'restaurant_bs_drivethru' then
        print("im in")
        enterDriveThru()
    end
end)

RegisterNetEvent('qb-polyzone:exit')
AddEventHandler('qb-polyzone:exit', function(name)
    if name == 'restaurant_buff_zone' then
        --[[ if SIGNED_IN then
            SIGNED_IN = false
            RPC.execute("np-restaurants:leaveJob", CURRENT_RESTAURANT)
            TriggerEvent("DoLongHudText", _L("restaurant-clocked-out-distance", "You went too far away! Clocked out."))
        end
        CURRENT_RESTAURANT = nil
        TriggerEvent("np-buffs:inDoubleBuffZone", false)
        turnOffHeadset() ]]
    end

    if name == 'restaurant_bs_drivethru' then
        print("i left")
        exitDriveThru()
    end
end)

CreateThread(function()
    exports["qb-polyzone"]:AddBoxZone("restaurant_bs_drivethru", vector3(-1207.32, -898.81, 13.04), 8.0, 6.4, {
        name="restaurant_bs_drivethru",
        heading=35,
        debugPoly = false,
        minZ = 12.04,
        maxZ = 15.44,
        data = {
            id = '1' 
        },
    })
end) 