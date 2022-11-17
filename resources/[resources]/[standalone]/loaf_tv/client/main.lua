local txd = "loaf_tv"
local closestTv, dui, lib

local function HandleClosestTv()
    while true do
        Wait(1000)
        local plyCoords = GetEntityCoords(PlayerPedId())

        if not tvs[closestTv] then
            closestTv = nil
        end
        for id, data in pairs(tvs) do
            local tv = GetClosestObjectOfType(data.coords, 5.0, data.model)
            if DoesEntityExist(tv) and #(plyCoords - data.coords) <= data.drawDistance then
                if closestTv and tvs[closestTv] then
                    if #(plyCoords - tvs[closestTv].coords) > #(plyCoords - data.coords) then 
                        closestTv = id
                    end
                else
                    closestTv = id
                end
            elseif closestTv == id then -- too far away, and this is the closest tv
                closestTv = nil -- set no longer closest
            end
        end
    end
end

local function DrawTv()
    while true do
        Wait(1000)
        local id = closestTv
        if tvs[id] then
            local tvData = tvs[id]
            local tv = GetClosestObjectOfType(tvData.coords, 5.0, tvData.model)
            local currentUrl = tvData.url
            local renderHandle = 0
            while DoesEntityExist(tv) and tvs[id] and closestTv == id do
                Wait(0)

                if not dui then
                    local url = string.gsub(currentUrl, "TIME_PASSED", GetTime(id))
                    dui = CreateDui(url, 1280, 720)
                    local duiHandle = GetDuiHandle(dui)
                    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd(txd), txd, duiHandle)
                    Wait(1000)
                    if tvData.website == "Twitch" then
                        SetTimeout(3000, function()
                            local duiData = Config.DuiPositions[tvData.website]
                            MoveMouse(dui, duiData.Confirm.x, duiData.Confirm.y)
                            MouseClick(dui)
                            MoveMouse(dui, duiData.Idle.x, duiData.Idle.y)
                        end)
                    end
                    ChangeVolume(dui, tvData.website, tvData.volume)

                    if tvData.draw == "scaleform" then
                        if not scaleformHandle or not HasScaleformMovieLoaded(scaleformHandle) then
                            scaleformHandle = RequestScaleformMovie("generic_texture_renderer")
                            while not HasScaleformMovieLoaded(scaleformHandle) do 
                                Wait(250)
                                print("^3loading") 
                            end
                            print("^2loaded")
                        end
                        PushScaleformMovieFunction(scaleformHandle, "SET_TEXTURE")
                        PushScaleformMovieMethodParameterString(txd)
                        PushScaleformMovieMethodParameterString(txd)

                        PushScaleformMovieFunctionParameterInt(0)
                        PushScaleformMovieFunctionParameterInt(0)
                        PushScaleformMovieFunctionParameterInt(1280)
                        PushScaleformMovieFunctionParameterInt(720)

                        PopScaleformMovieFunctionVoid()
                    else
                        if not IsNamedRendertargetRegistered(tvData.draw) then
                            RegisterNamedRendertarget(tvData.draw, false)
                        end
                        if not IsNamedRendertargetLinked(tvData.model) then
                            LinkNamedRendertarget(tvData.model)
                        end
                        if IsNamedRendertargetRegistered(tvData.draw) then
                            renderHandle = GetNamedRendertargetRenderId(tvData.draw)
                        end

                        renderHandle = GetNamedRendertargetRenderId(tvData.draw)
                    end
                end

                if tvData.draw == "scaleform" then
                    DrawScaleformMovie_3dSolid(
                        scaleformHandle, 
                        GetOffsetFromEntityInWorldCoords(tv, tvData.offset), 
                        0.0, GetEntityHeading(tv) * -1, 0.0, 
                        2, 2, 2, 
                        tvData.scale, tvData.scale * (9 / 16), 1.0, 
                        2
                    )
                else
                    SetTextRenderId(renderHandle)
                    SetScriptGfxDrawOrder(4)
                    
                    DrawSprite(txd, txd, 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
    
                    SetTextRenderId(1)
                end
            end

            DestroyDui(dui)
            dui = nil
        end
    end
end

local function NearbyTip()
    while true do
        Wait(1000)
        for _, data in pairs(Config.Objects) do
            local tv = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 5.0, data.Model)
            if DoesEntityExist(tv) and #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(tv)) <= 2.0 then
                lib.DrawHelpText(Config.NearbyTip)
                while DoesEntityExist(tv) and #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(tv)) <= 2.0 do
                    Wait(500)
                end
                lib.HideHelpText()
            end
        end
    end
end

CreateThread(function()
    -- wait for the client to join
    while not NetworkIsSessionStarted() do 
        Wait(500) 
    end

    lib = exports.loaf_lib:GetLib()

    CreateThread(HandleClosestTv)
    CreateThread(DrawTv)
    if Config.NearbyTip then
        CreateThread(NearbyTip)
    end
end)

RegisterNetEvent("loaf_tv:update", function(list, time)
    for k, v in pairs(list) do
        v.time = v.time - time
        v.started = GetGameTimer()
        if k == closestTv and dui then
            if tvs[closestTv].url ~= v.url then
                SetDuiUrl(dui, v.url)
                Wait(500)
            end
            if tvs[closestTv].volume ~= v.volume then
                ChangeVolume(dui, v.website, v.volume)
            end
        end
    end
    tvs = list
end)

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        if dui then
            DestroyDui(dui)
        end

        TriggerEvent("chat:removeSuggestion", "/refreshtv")
        TriggerEvent("chat:removeSuggestion", "/setvolume")
        TriggerEvent("chat:removeSuggestion", "/stop")
        TriggerEvent("chat:removeSuggestion", "/play")
    end
end)

--- COMMANDS ---
RegisterCommand("refreshtv", function(src, args)
    if closestTv and tvs[closestTv] and dui then
        local tvData = tvs[closestTv]
        local url = string.gsub(tvData.url, "TIME_PASSED", GetTime(closestTv))
        SetDuiUrl(dui, url)
        Wait(500)
        ChangeVolume(dui, tvData.website, tvData.volume)
    end
end)
TriggerEvent("chat:addSuggestion", "/refreshtv", "refreshes the closest tv in case it is out of sync", {})

RegisterCommand("setvolume", function(src, args)
    if closestTv and tvs[closestTv] and dui and args[1] and tonumber(args[1]) then
        local tvData = tvs[closestTv]
        -- ChangeVolume(dui, tvData.website, tonumber(args[1]))
        TriggerServerEvent("loaf_tv:setVolume", closestTv, tonumber(args[1]))
    end
end)
TriggerEvent("chat:addSuggestion", "/setvolume", "set the volume of the closest tv", {
    {name="volume", help="the volume, 0-100"},
})

RegisterCommand("stop", function(src, args)
    if closestTv and tvs[closestTv] and dui then
        TriggerServerEvent("loaf_tv:remove", closestTv)
    end
end)
TriggerEvent("chat:addSuggestion", "/stop", "turn off the closest tv", {})

local function urlencode(str)
    str = string.gsub(str, "([^0-9a-zA-Z !'()*._~-])", function(c) 
        return string.format("%%%02X", string.byte(c)) 
    end)
    str = string.gsub(str, " ", "+")
    return str
end

RegisterCommand("play", function(src, args)
    if args and args[1] and args[2] then
        local website
        for k, v in pairs(Config.Embeds) do
            if string.lower(k) == args[1] then
                website = k
            end
        end
        if website then
            local tv, tvdata
            local plyCoords = GetEntityCoords(PlayerPedId())
            for k, v in pairs(Config.Objects) do
                local closest = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 5.0, v.Model)
                if DoesEntityExist(closest) then
                    if tv then
                        if #(plyCoords - GetEntityCoords(tv)) > #(plyCoords - GetEntityCoords(closest)) then 
                            tv = closest
                            tvdata = v
                        end
                    else
                        tv = closest
                        tvdata = v
                    end
                end
            end

            if not tvdata then
                return
            end
            TriggerServerEvent("loaf_tv:add", website, urlencode(args[2]), tvdata.Model, GetEntityCoords(tv))
        end
    end
end)
TriggerEvent("chat:addSuggestion", "/play", "watch twitch / youtube in-game", {
    {name="website", help="the website to use, youtube or twitch"},
    {name="video/channel", help="the youtube video id or twitch channel to watch"}
})