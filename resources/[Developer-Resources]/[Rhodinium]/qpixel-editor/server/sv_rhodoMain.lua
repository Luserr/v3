RegisterNetEvent("CheckFurniture") 
AddEventHandler("CheckFurniture", function(pData, pPropertyId)
    local src = source

    if housingEditing[pPropertyId] ~= nil then
        TriggerClientEvent("DoLongHudText", src, "Someone's already decorating this property", 2)
    else
        housingEditing[pPropertyId] = src
        TriggerClientEvent("qpixel-editor:loadEditor", src, pData)
    end
end)

RPC.register("objects:getObjects2", function(src, pName)
    local data = {}
    data["name"] = pName
    data["objects"] = {}

    local result = MySQL.scalar.await([[
        SELECT objects
        FROM housing
        WHERE hid = ?
    ]],
    { pName })

    if result and type(result) == "string" then
        data["objects"] = json.decode(result)
    end

    return data
end)

RPC.register("objects:saveObjects2", function(src, pDataToSend)
    local data = {}
    data["name"] = pDataToSend["name"]
    data["objects"] = pDataToSend["objects"]

    local result = MySQL.update.await([[
        UPDATE housing
        SET objects = ?
        WHERE hid = ?
    ]],
    { json.encode(pDataToSend["objects"]), 'mp4' })

    return data
end)