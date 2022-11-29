--[[

    RPCs

]]

RPC.register("housingShouldSetZoneLocations", function(src)
    if #Housing.zone == 0 then
        return true
    else
        return false
    end
end)

RPC.register("setZoneLocations", function(src, pZones)
    Housing.zone = pZones
end)

RPC.register("qpixel-housing:canRent", function(src, pPropertyId)
    if pPropertyId == nil or Housing.info[pPropertyId] == nil or Housing.info[pPropertyId]["enabled"] == false then
        return false
    end

    local result = MySQL.scalar.await([[
        SELECT id
        FROM housing
        WHERE hid = ?
    ]],
    { pPropertyId })

    if result ~= nil then
        return false
    end

    return true
end)