QBCore = exports["qb-core"]:GetCoreObject()

RegisterServerEvent("gl-ambulance:getItemForEMS", function(itemname)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Player.Functions.GetItemByName(itemname)
    if not item or item.amount < 1 then
        Player.Functions.AddItem(itemname, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[itemname], "add", 1)
    end
end)

RegisterServerEvent("gl-ambulance:treatPlayerWounds", function(playerid, wound)
    local src = source
    local Player = QBCore.Functions.GetPlayer(playerid)
    TriggerClientEvent("gl-ambulance:treatAnimations", Player.PlayerData.source, wound)
    TriggerClientEvent("gl-ambulance:treatTargetWound", src, wound)
    if wound == "bullet" then
        Player.Functions.AddItem("recoveredbullet", 1)
        TriggerClientEvent("inventory:client:ItemBox", Player.PlayerData.source, QBCore.Shared.Items["recoveredbullet"], "add", 1)
    end
end)

RegisterServerEvent("gl-ambulance:checkPlayerWounds", function(target, wound)
    local src = source
    local targetPlayer = QBCore.Functions.GetPlayer(target)
    TriggerClientEvent("gl-ambulance:checkPlayerWounds", targetPlayer.PlayerData.source, src, wound)
end)

RegisterServerEvent("gl-ambulance:revivePlayer", function(target, type)
    local targetPlayer = QBCore.Functions.GetPlayer(target)
    if type == 'grandma' and Config.GrandmasCost > 0 then
        if targetPlayer.Functions.RemoveMoney("cash", Config.GrandmasCost, "Grandma") then
            TriggerClientEvent("hospital:client:Revive", targetPlayer.PlayerData.source)

        --[[ UNCOMMENT BELOW IF YOU WANT TO ALLOW BANK AS WELL ]] --
        -- elseif targetPlayer.Functions.RemoveMoney("bank", Config.GrandmasCost, "Grandma") then 
        --    TriggerClientEvent("hospital:client:Revive", targetPlayer.PlayerData.source)

        else
            TriggerClientEvent("QBCore:Notify", targetPlayer.PlayerData.source, "You don't have enough money sonny", "error")
        end
    elseif type == 'nancy' and Config.NancyCost > 0 then
        if targetPlayer.Functions.RemoveMoney("cash", Config.NancyCost) then
            TriggerClientEvent("gl-ambulance:checkInNancy", targetPlayer.PlayerData.source)
        elseif targetPlayer.Functions.RemoveMoney("bank", Config.NancyCost) then 
            TriggerClientEvent("gl-ambulance:checkInNancy", targetPlayer.PlayerData.source)
        else
            TriggerClientEvent("QBCore:Notify", targetPlayer.PlayerData.source, "You don't have enough money", "error")
        end
    elseif type == 'nancy' then
        TriggerClientEvent("gl-ambulance:checkInNancy", targetPlayer.PlayerData.source)
    else
        TriggerClientEvent("hospital:client:Revive", targetPlayer.PlayerData.source)
    end
end)

RegisterServerEvent("gl-ambulance:deleteBag", function(netId)
    TriggerClientEvent("gl-ambulance:deleteBag", -1, netId)
end)

RegisterServerEvent("gl-ambulance:delStretcher", function(netId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("stretcher", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["stretcher"], "add", 1)
    TriggerClientEvent("gl-ambulance:delStretcher", -1, netId)
end)

RegisterServerEvent("gl-ambulance:goNightNight", function(playerid)
    local Player = QBCore.Functions.GetPlayer(playerid)
    TriggerClientEvent("gl-ambulance:goNightNight", Player.PlayerData.source)
end)

RegisterServerEvent("gl-ambulance:putInVehicle", function(target, vehicle)
    local Player = QBCore.Functions.GetPlayer(target)
    TriggerClientEvent("gl-ambulance:putInVehicle", Player.PlayerData.source, vehicle)
end)

RegisterServerEvent("gl-ambulance:getOutVehicle", function(target)
    local Player = QBCore.Functions.GetPlayer(target)
    TriggerClientEvent("gl-ambulance:getOutVehicle", Player.PlayerData.source)
end)

RegisterServerEvent("gl-ambulance:putOnStretcher", function(target)
    TriggerClientEvent("gl-ambulance:putOnStretcher", target)
end)

RegisterServerEvent("gl-ambulance:bodyBag", function(targetid)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Target = QBCore.Functions.GetPlayer(targetid)
    if Player.Functions.GetItemByName("bodybag") ~= nil then
        if Target.PlayerData.metadata["isdead"] then
            Player.Functions.RemoveItem("bodybag", 1)
            TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["bodybag"], "remove", 1)
            TriggerClientEvent("gl-ambulance:bodyBag", Target.PlayerData.source)
        end
    end
end)

RegisterServerEvent("gl-ambulance:checkPulse", function(target)
    local src = source
    TriggerClientEvent("gl-ambulance:sendPulseBack", target, src)
end)

RegisterServerEvent("gl-ambulance:reportPulseBack", function(target, pulse, status)
    TriggerClientEvent("QBCore:Notify", target, "Pulse: " .. pulse, "primary", 15000)
    TriggerClientEvent("QBCore:Notify", target, status, "primary", 15000)
end)

RegisterServerEvent("gl-ambulance:removeDefib", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("defib", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["defib"], "remove", 1)
end)

RegisterServerEvent("gl-ambulance:giveWheelchair", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("wheelchair", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["wheelchair"], "add", 1)
end)

-- Hospital Weapon Damage Syncing
RegisterNetEvent('hospital:server:SetWeaponDamage', function(data)
    local src = source
    for k, v in pairs(Config.Guns) do
        for _, weapon in pairs(data) do
            if weapon == v then
                TriggerClientEvent('gl-ambulance:setWound', src, 'bullet')
            end
        end
    end
    for k, v in pairs (Config.Melee) do 
        for _, weapon in pairs(data) do
            if weapon == v then
                TriggerClientEvent('gl-ambulance:setWound', src, 'stitch')
            end
        end
    end
    for k, v in pairs(Config.Explosions) do
        for _, weapon in pairs(data) do
            if weapon == v then
                TriggerClientEvent('gl-ambulance:setWound', src, 'burn')
            end
        end
    end
end)

RegisterNetEvent('hospital:server:RestoreWeaponDamage', function()
    local src = source
    TriggerClientEvent('gl-ambulance:removeWounds', src)
end)

QBCore.Functions.CreateCallback("gl-ambulance:isPlayerDead", function(source, cb, playerid)
    local Player = QBCore.Functions.GetPlayer(playerid)
    if Player.PlayerData.metadata["isdead"] then
        cb(true)
    else
        cb(false)
    end
end)

-- Items
QBCore.Functions.CreateUseableItem("tweezers", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("gl-ambulance:tryTreatingPlayer", src, "bullet")
    end
end)

QBCore.Functions.CreateUseableItem("suturekit", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("gl-ambulance:tryTreatingPlayer", src, "stitch")
    end
end)

QBCore.Functions.CreateUseableItem("burncream", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("gl-ambulance:tryTreatingPlayer", src, "burn")
    end
end)

QBCore.Functions.CreateUseableItem("defib", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("gl-ambulance:tryRevivePlayer", src)
    end
end)

QBCore.Functions.CreateUseableItem("bodybag", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent("gl-ambulance:bodyBagitem", src)
    end
end)

QBCore.Functions.CreateUseableItem("medbag", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        Player.Functions.RemoveItem(item.name, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item.name], "remove", 1)
        TriggerClientEvent("gl-ambulance:useMedBag", src)
    end
end)

QBCore.Functions.CreateUseableItem("sedative", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        Player.Functions.RemoveItem(item.name, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item.name], "remove", 1)
        TriggerClientEvent("gl-ambulance:useSedative", src)
    end
end)

QBCore.Functions.CreateUseableItem("stretcher", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        Player.Functions.RemoveItem(item.name, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item.name], "remove", 1)
        TriggerClientEvent("gl-ambulance:useStretcher", src)
    end
end)

QBCore.Functions.CreateUseableItem("medikit", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then
        Player.Functions.RemoveItem("medikit", 1)
        TriggerClientEvent("gl-ambulance:useItem", src, "medikit")
    end
end)
