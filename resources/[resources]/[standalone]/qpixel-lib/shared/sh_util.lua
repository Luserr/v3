if not IsDuplicityVersion() then
    MaxUnderwaterOxygenTime = 300.0
    --[[Task events]] --
    function SetCustomNuiFocus(hasKeyboard, hasMouse)
        HasNuiFocus = hasKeyboard or hasMouse
        
        SetNuiFocus(hasKeyboard, hasMouse)
        SetNuiFocusKeepInput(HasNuiFocus)
        
        TriggerEvent("qpixel-base:focus", HasNuiFocus, hasKeyboard, hasMouse)
    end
    
    function TaskItem(item, animDict, animName, typeAnim, speed, prop, message, timer, movement, weapon, remove)
        if not LocalPlayer.state.doge then
            TriggerEvent('qpixel-lib:forceAnimation', animDict, animName, typeAnim, speed, prop)
        end
        local finished = exports["qpixel-taskbar"]:TaskBar(message, timer, movement, weapon)
        if finished == 100 then
            if exports["qpixel-inventory"]:HasItem(item) then
                if remove then
                    TriggerEvent("inventory:destroy", item)
                end
                TriggerEvent('qpixel-lib:forceAnimation')
                return true
            else
                TriggerEvent('ShortText', 'You don\'t have this item', 3)
            end
        end
        TriggerEvent('qpixel-lib:forceAnimation')
        return false
    end
    
    function TaskItemSkill(item, animDict, animName, typeAnim, speed, prop, timer, remove)
        TriggerEvent('qpixel-lib:forceAnimation', animDict, animName, typeAnim, speed, prop)
        local finished = SkillCircleLooped(timer)
        if finished then
            if exports["qpixel-inventory"]:HasItem(item) then
                if remove then
                    TriggerEvent("inventory:destroy", item)
                end
                TriggerEvent('qpixel-lib:forceAnimation')
                return true
            else
                TriggerEvent('ShortText', 'You don\'t have this item', 3)
            end
        end
        TriggerEvent('qpixel-lib:forceAnimation')
        return false
    end
    
    --[[Anim]] --
    function TaskAnim(animDict, animName, typeAnim, speed)
        ClearPedSecondaryTask(PlayerPedId())
        if (DoesEntityExist(PlayerPedId())) then
            LoadAnimDict(animDict)
            ClearPedTasks(PlayerPedId())
            TaskPlayAnim(PlayerPedId(), animDict, animName, speed, 2.0, -1, typeAnim, 0, 0, 0, 0)
            RemoveAnimDict(animDict)
        end
    end
    
    function TaskAnimTimed(animDict, animName, typeAnim, speed, duration)
        if LocalPlayer.state.dead then return end
        ClearPedSecondaryTask(PlayerPedId())
        if (DoesEntityExist(PlayerPedId())) then
            LoadAnimDict(animDict)
            TaskPlayAnim(PlayerPedId(), animDict, animName, speed, 2.0, duration, typeAnim, 0, 0, 0, 0)
            RemoveAnimDict(animDict)
        end
    end
    
    function TaskAnimNoCancel(animDict, animName, typeAnim, speed)
        if LocalPlayer.state.dead then return end
        if (DoesEntityExist(PlayerPedId())) then
            LoadAnimDict(animDict)
            ClearPedSecondaryTask(PlayerPedId())
            TaskPlayAnim(PlayerPedId(), animDict, animName, speed, 2.0, -1, typeAnim, 0, 0, 0, 0)
            RemoveAnimDict(animDict)
        end
    end
    
    function TaskAnimTimedNoCancel(animDict, animName, typeAnim, speed, duration)
        if (DoesEntityExist(PlayerPedId())) then
            LoadAnimDict(animDict)
            TaskPlayAnim(PlayerPedId(), animDict, animName, speed, 2.0, duration, typeAnim, 0, 0, 0, 0)
            RemoveAnimDict(animDict)
        end
    end
    
    function PlayingSurrenderAnim(target)
        if IsEntityPlayingAnim(target, 'missminuteman_1ig_2', 'handsup_base', 3) or IsEntityPlayingAnim(target, "dead", "dead_d", 3) or IsEntityPlayingAnim(target, "amb@code_human_cower_stand@male@base", "base", 3) or IsEntityPlayingAnim(target, "amb@code_human_cower@male@base", "base", 3) or IsEntityPlayingAnim(target, "random@arrests@busted", "idle_a", 3) or IsEntityPlayingAnim(target, "mp_arresting", "idle", 3) or IsEntityPlayingAnim(target, "random@mugging3", "handsup_standing_base", 3) or IsEntityPlayingAnim(target, "missfbi5ig_22", "hands_up_anxious_scientist", 3) or IsEntityPlayingAnim(target, "missfbi5ig_22", "hands_up_loop_scientist", 3) then
            return true
        end
        return false
    end
    
    
    --[[GetClosestPlayers]] --
    function GetClosePlayers(coords, radius)
        local players = {}
        for _, id in ipairs(GetActivePlayers()) do
            local ppos = GetEntityCoords(GetPlayerPed(id))
            local distance = Vdist(ppos.x, ppos.y, ppos.z, coords.x, coords.y, coords.z)
            if distance < radius then
                table.insert(players, {src = GetPlayerServerId(id), player = id})
            end
        end
        return players
    end
    
    function GetClosestPlayer()
        local players = GetActivePlayers()
        local closestDistance = -1
        local closestPlayer = -1
        local closestServerId = nil
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply, 0)
        
        for index, value in ipairs(players) do
            local target = GetPlayerPed(value)
            if (target ~= ply) then
                local targetCoords = GetEntityCoords(target, 0)
                local distance = Vdist(targetCoords, plyCoords)
                if (closestDistance == -1 or closestDistance > distance) then
                    closestPlayer = value
                    closestDistance = distance
                    closestServerId = GetPlayerServerId(value)
                end
            end
        end
        return closestPlayer, closestDistance, closestServerId
    end
    
    function IsPlayerNearMe(player)
        local players = GetActivePlayers()
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply, 0)
        
        for index, value in ipairs(players) do
            local target = GetPlayerPed(value)
            if (target ~= ply) then
                if GetPlayerServerId(value) == player then
                    local targetCoords = GetEntityCoords(target, 0)
                    local distance = Vdist(targetCoords, plyCoords)
                    if (distance < 5.0) then
                        return true
                    end
                end
            end
        end
        return false
    end
    
    function IsPlayerNearMe2(player)
        local players = GetActivePlayers()
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply, 0)
        
        for index, value in ipairs(players) do
            local target = GetPlayerPed(value)
            if GetPlayerServerId(value) == player then
                local targetCoords = GetEntityCoords(target, 0)
                local distance = Vdist(targetCoords, plyCoords)
                if (distance < 5.0) then
                    return true
                end
            end
        end
        return false
    end
    
    function GetClosestLocalPed(Distance)
        local TargetPed
        local Handle, Ped = FindFirstPed()
        repeat
            local DistanceBetween = Vdist(GetEntityCoords(PlayerPedId()), GetEntityCoords(Ped))
            local pedType = GetPedType(Ped)
            local animalped = false
            if pedType == 6 or pedType == 27 or pedType == 29 or pedType == 28 then
                animalped = true
            end
            if DoesEntityExist(Ped) and not IsEntityDead(Ped) and not IsPedAPlayer(Ped) and DistanceBetween <= Distance and not animalped then
                TargetPed = Ped
            end
            
            Success, Ped = FindNextPed(Handle)
        until not Success
        
        EndFindPed(Handle)
        return TargetPed
    end
    
    function GetNearbyPeds(X, Y, Z, Radius)
        local NearbyPeds = {}
        if tonumber(X) and tonumber(Y) and tonumber(Z) then
            if tonumber(Radius) then
                for Ped in exports["qpixel-admin"]:EnumeratePeds() do
                    if DoesEntityExist(Ped) and not IsPedAPlayer(Ped) then
                        local PedPosition = GetEntityCoords(Ped, false)
                        if Vdist(X, Y, Z, PedPosition.x, PedPosition.y, PedPosition.z) <= Radius then
                            table.insert(NearbyPeds, Ped)
                        end
                    end
                end
            end
        end
        return NearbyPeds
    end
    
    --[[Load Dict]] --
    function LoadAnimDict(dict)
        while (not HasAnimDictLoaded(dict)) do
            RequestAnimDict(dict)
            Wait(0)
        end
    end
    
    function RequestWalking(set)
        while not HasAnimSetLoaded(set) do
            RequestAnimSet(set)
            Wait(0)
        end
    end
    
    
    function LoadModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Wait(0)
        end
    end
    
    --[[Draw Text 2D]] --
    function DrawText2D(x, y, width, height, scale, font, color, text)
        SetTextFont(font)
        SetTextProportional(0)
        SetTextScale(scale, scale)
        SetTextColour(color[1], color[2], color[3], color[4])
        SetTextDropShadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(x - width / 2, y - height / 2 + 0.005)
    end
    
    --[[Draw Text 3D]] --
    function DrawText3D(x, y, z, color, scale, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        local px, py, pz = table.unpack(GetGameplayCamCoords())
        if onScreen then
            SetTextScale(scale, scale)
            SetTextFont(4)
            SetTextProportional(1)
            SetTextColour(color[1], color[2], color[3], color[4])
            SetTextDropshadow(0, 0, 0, 0, 55)
            SetTextEdge(2, 0, 0, 0, 150)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry("STRING")
            SetTextCentre(1)
            AddTextComponentString(text)
            DrawText(_x, _y)
        end
    end
    
    --[[draw3d text with rect]]
    function DrawText3DBox(x, y, z, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        local px, py, pz = table.unpack(GetGameplayCamCoords())
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
        local factor = (string.len(text)) / 370
        DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 90)
    end
    
    --[[clean up]] --
    function CleanUpArea()
        local playerped = PlayerPedId()
        local plycoords = GetEntityCoords(playerped)
        local handle, ObjectFound = FindFirstObject()
        local success
        repeat
            local pos = GetEntityCoords(ObjectFound)
            local distance = GetDistanceBetweenCoords(plycoords, pos, true)
            if distance < 50.0 and ObjectFound ~= playerped then
                if IsEntityAPed(ObjectFound) then
                    if IsPedAPlayer(ObjectFound) then
                        else
                        DeleteObject(ObjectFound)
                    end
                else
                    if not IsEntityAVehicle(ObjectFound) and not IsEntityAttached(ObjectFound) then
                        DeleteObject(ObjectFound)
                    end
                end
            end
            success, ObjectFound = FindNextObject(handle)
        until not success
        EndFindObject(handle)
    end
    
    function CleanUpPeds()
        local playerped = PlayerPedId()
        local plycoords = GetEntityCoords(playerped)
        local handle, ObjectFound = FindFirstPed()
        local success
        repeat
            local pos = GetEntityCoords(ObjectFound)
            local distance = GetDistanceBetweenCoords(plycoords, pos, true)
            if distance < 30.0 and ObjectFound ~= playerped then
                if IsPedAPlayer(ObjectFound) or IsEntityAVehicle(ObjectFound) then
                    else
                    DeleteEntity(ObjectFound)
                end
            end
            success, ObjectFound = FindNextPed(handle)
        until not success
        EndFindPed(handle)
    end
    
    --[[Ray Cast Targeting]] --
    function GetVehicleTrunk()
        local coordA = GetEntityCoords(PlayerPedId(), 1)
        local coordB = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 20.0, -1.0)
        local rayHandle = CastRayPointToPoint(coordA.x, coordA.y, coordA.z, coordB.x, coordB.y, coordB.z, 10, PlayerPedId(), 0)
        local a, b, c, d, targetVehicle = GetRaycastResult(rayHandle)
        local d1, d2 = GetModelDimensions(GetEntityModel(targetVehicle))
        local back = GetOffsetFromEntityInWorldCoords(targetVehicle, 0.0, d1["y"] - 0.5, 0.0)
        local Driver = GetPedInVehicleSeat(targetVehicle, -1)
        if not DoesEntityExist(targetVehicle) or not IsEntityAVehicle(targetVehicle) then
            return false
        end
        if DoesEntityExist(Driver) and not IsPedAPlayer(Driver) then
            return false
        end
        local lockStatus = GetVehicleDoorLockStatus(targetVehicle)
        if Vdist(back, GetEntityCoords(PlayerPedId())) >= 1.0 then
            return false
        end
        if GetVehicleDoorsLockedForPlayer(targetVehicle, PlayerId()) then
            TriggerEvent("ShortText", 'The vehicle is locked!', 3)
            return false
        end
        return targetVehicle
    end
    
    function GetTargetVeh(targetDist)
        local targetVehicle = nil
        local maxDist = targetDist
        
        local coordA = GetEntityCoords(PlayerPedId(), 1)
        local coordB = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 20.0, -1.0)
        local rayHandle = CastRayPointToPoint(coordA.x, coordA.y, coordA.z, coordB.x, coordB.y, coordB.z, 10, PlayerPedId(), 0)
        local a, b, c, d, targetVehicle = GetRaycastResult(rayHandle)
        local backupVeh = TargetVeh(maxDist)
        if backupVeh ~= nil then
            targetVehicle = backupVeh
        end
        
        local distance = Vdist(GetEntityCoords(targetVehicle), GetEntityCoords(PlayerPedId()))
        
        if IsEntityAVehicle(targetVehicle) and DoesEntityExist(targetVehicle) and distance < maxDist then
            return targetVehicle, GetVehicleNumberPlateText(targetVehicle)
        end
        return nil
    end
    
    function TargetVeh(dist)
        local PlayerPed = PlayerPedId()
        local targetVehicle = Target(dist)
        if IsEntityAVehicle(targetVehicle) and DoesEntityExist(targetVehicle) then
            return targetVehicle, GetVehicleNumberPlateText(targetVehicle)
        end
        return nil
    end
    
    function TargetPed(dist)
        local PlayerPed = PlayerPedId()
        local targetPed = Target(5.0)
        if IsEntityAPed(targetPed) and DoesEntityExist(targetPed) and not IsPedAPlayer(targetPed) then
            return targetPed
        end
        return nil
    end
    
    function TargetPlayer(dist)
        local PlayerPed = PlayerPedId()
        local targetPed = Target(5.0)
        if IsEntityAPed(targetPed) and DoesEntityExist(targetPed) and IsPedAPlayer(targetPed) then
            return targetPed
        end
        return nil
    end
    
    function TargetAnimal(dist)
        local PlayerPed = PlayerPedId()
        local targetPed = Target(dist)
        if DoesEntityExist(targetPed) and IsEntityAPed(targetPed) and IsEntityDead(targetPed) and not IsPedAPlayer(targetPed) then
            return targetPed
        end
        return nil
    end
    
    function Target(Distance)
        local Entity = nil
        local camCoords = GetGameplayCamCoord()
        local farCoordsX, farCoordsY, farCoordsZ = GetCoordsFromCam(Distance)
        local RayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, farCoordsX, farCoordsY, farCoordsZ, -1, PlayerPedId(), 0)
        local A, B, C, D, Entity = GetRaycastResult(RayHandle)
        return Entity, farCoordsX, farCoordsY, farCoordsZ
    end
    
    
    function GetCoordsFromCam(distance)
        local rot = GetGameplayCamRot(2)
        local coord = GetGameplayCamCoord()
        
        local tZ = rot.z * 0.0174532924
        local tX = rot.x * 0.0174532924
        local num = math.abs(math.cos(tX))
        
        newCoordX = coord.x + (-math.sin(tZ)) * (num + distance)
        newCoordY = coord.y + (math.cos(tZ)) * (num + distance)
        newCoordZ = coord.z + (math.sin(tX) * 8.0)
        return newCoordX, newCoordY, newCoordZ
    end
    
    
    function DrawCharacterText(coords, text, size, font, color)
        
        local camCoords = GetGameplayCamCoords()
        local distance = Vdist(coords, camCoords)
        
        if not size then size = 1 end
        if not font then font = 0 end
        
        local scale = (size / distance) * 2
        local fov = (1 / GetGameplayCamFov()) * 100
        scale = scale * fov
        
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(font)
        if color then
            SetTextColour(color[1], color[2], color[3], color[4])
        else
            SetTextColour(255, 255, 255, 255)
        end
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextCentre(true)
        
        SetDrawOrigin(coords, 0)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()
    end
    
    
    --[[Vehicle Checks]] --
    function getSpeed(veh)
        local speed = GetEntitySpeed(veh) * 2.23694
        return math.ceil(speed)
    end
    
    function cyclecheck(veh)
        if IsThisModelABicycle(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))) then
            return true
        elseif veh ~= nil and IsThisModelABicycle(GetEntityModel(veh)) then
            return true
        else
            return false
        end
    end
    
    function quadcheck(veh)
        if IsThisModelAQuadbike(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))) then
            return true
        elseif veh ~= nil and IsThisModelAQuadbike(GetEntityModel(veh)) then
            return true
        else
            return false
        end
    end
    
    function bikecheck(veh)
        if IsThisModelABike(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))) then
            return true
        elseif veh ~= nil and IsThisModelABike(GetEntityModel(veh)) then
            return true
        else
            return false
        end
    end
    
    function helicheck(veh)
        if IsThisModelAHeli(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))) then
            return true
        elseif veh ~= nil and IsThisModelAHeli(GetEntityModel(veh)) then
            return true
        else
            return false
        end
    end
    
    --[[maff]] --
    function lerp(min, max, amt)
        return (1 - amt) * min + amt * max
    end
    
    function rangePercent(min, max, amt)
        return (((amt - min) * 100) / (max - min)) / 100
    end
    
    
    --[[random tables]] --
    Keys = {
        ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
        ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
        ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
        ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
        ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
        ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
        ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
        ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
        ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
    }
    
    --[[head blend wrapper that isnt shit for CPU cycles]] --
    function GetHeadBlendData(ped)
        local data = {Citizen.InvokeNative(0x2746BD9D88C5C5D0, ped, Citizen.PointerValueIntInitialized(0), Citizen.PointerValueIntInitialized(0), Citizen.PointerValueIntInitialized(0), Citizen.PointerValueIntInitialized(0), Citizen.PointerValueIntInitialized(0), Citizen.PointerValueIntInitialized(0), Citizen.PointerValueFloatInitialized(0), Citizen.PointerValueFloatInitialized(0), Citizen.PointerValueFloatInitialized(0))}
        local headBlend = {
            FirstFaceShape = data[1],
            SecondFaceShape = data[2],
            ThirdFaceShape = data[3],
            FirstSkinTone = data[4],
            SecondSkinTone = data[5],
            ThirdSkinTone = data[6],
            ParentFaceShapePercent = data[7],
            ParentSkinTonePercent = data[8],
            ParentThirdUnkPercent = data[9],
            IsParentInheritance = false,
        }
        return headBlend
    end
    
    function RequestControl(pEntity)
        local timeout = false
        
        if not NetworkHasControlOfEntity(pEntity) then
            NetworkRequestControlOfEntity(pEntity)
            
            Citizen.SetTimeout(1000, function() timeout = true end)
            
            while not NetworkHasControlOfEntity(pEntity) and not timeout do
                NetworkRequestControlOfEntity(pEntity)
                Citizen.Wait(50)
            end
        end
        
        return NetworkHasControlOfEntity(pEntity)
    end
    
    
    function CalculateTimeToDisplay()
        if not LocalPlayer.state.hour or not LocalPlayer.state.minute then return false end
        hour = LocalPlayer.state.hour
        minute = LocalPlayer.state.minute
        
        local obj = {}
        
        if hour < 12 then
            obj.ampm = 'AM'
            if hour == 0 then
                hour = 12
            end
        elseif hour >= 12 then
            obj.ampm = 'PM'
            if hour == 12 then
                hour = 12
            else
                hour = hour - 12
            end
        end
        
        if minute <= 9 then
            minute = "0" .. minute
        end
        
        obj.hour = hour
        obj.minute = minute .. ' ' .. obj.ampm
        
        return obj.hour .. ":" .. obj.minute
    end
    
    
    function SkillCircleLooped(count)
        local loop = 0
        while loop < count do
            loop = loop + 1
            local finished = exports["qpixel-skillcircle"]:SkillCircle(math.random(13, 60))
            if not finished then
                return false
            end
            Wait(100)
        end
        return true
    end
    
    function SpeedSkillCircle()
        local finished = exports["qpixel-skillcircle"]:SkillCircle(math.random(4, 7))
        if not finished then
            return false
        end
        return true
    end
    
    
    function SkillCircleLooped2(sent)
        local speeds = {}
        for i = 1, sent do
            table.insert(speeds, math.random(80, 120))
            table.insert(speeds, math.random(7, 12))
        end
        for i = 1, #speeds do
            local finished = exports["qpixel-skillcircle"]:SkillCircle(speeds[i])
            if not finished then
                return false
            end
            Wait(200)
        end
        return true
    end
    
    function HasJob(job)
        if LocalPlayer.state.job == job then
            return true
        end
        return false
    end
    
    function GetPedVehicleSeat(ped)
        local vehicle = GetVehiclePedIsIn(ped, false)
        for i = -2, GetVehicleMaxNumberOfPassengers(vehicle) do
            if (GetPedInVehicleSeat(vehicle, i) == ped) then return i end
        end
        return -2
    end
    
    function SpawnVehicle(model, spawn, heading)
        LoadModel(model)
        local _vehicle = CreateVehicle(model, spawn, heading, true, true)
        SetModelAsNoLongerNeeded(model)
        
        while (not DoesEntityExist(_vehicle)) do Wait(0) end
        SetVehicleOnGroundProperly(_vehicle)
        
        TriggerEvent('qpixel-vmod:addKeys', _vehicle)
        
        return _vehicle
    end
    
    function SpawnVehicleNoKeys(model, spawn, heading)
        LoadModel(model)
        local _vehicle = CreateVehicle(model, spawn, heading, true, true)
        SetModelAsNoLongerNeeded(model)
        
        while (not DoesEntityExist(_vehicle)) do Wait(0) end
        SetVehicleOnGroundProperly(_vehicle)

        return _vehicle
    end
    
    function CreateCraftString(item, itemList)
        local list = {}
        for k, v in pairs(itemList[item].craft) do
            list[#list + 1] = v.amount .. "x " .. itemList[v.name].displayName
        end
        
        return table.concat(list, " | ")
    end
end


function GetIdentifiers(src)
    local identifiers = {
        name = GetPlayerName(src),
        steamid = " ",
        license = " ",
        discord = " ",
        ip = GetPlayerEndpoint(src),
    }
    for _, v in pairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            identifiers.steamid = string.gsub(v, "steam:", "")
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
            identifiers.license = string.gsub(v, "license:", "")
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifiers.discord = string.gsub(v, "discord:", "")
        end
    end
    return identifiers
end

function GetIdType(src, type)
    local len = string.len(type)
    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, len) == type then
            return v
        end
    end
    return false
end

function GetIdTypeSub(src, type)
    local len = string.len(type)
    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, len) == type then
            id = string.gsub(v, type .. ":", "")
            return id
        end
    end
    return false
end

function HexIdToComId(hexid)
    return math.floor(tonumber(string.sub(hexid, 7), 16))
end

function HexIdToSteamId(src)
    local hexid = GetIdType(src, "steam")
    if not hexid then return false end
    local cid = HexIdToComId(hexid)
    local steam64 = math.floor(tonumber(string.sub(cid, 2)))
    local a = steam64 % 2 == 0 and 0 or 1
    local b = math.floor(math.abs(6561197960265728 - steam64 - a) / 2)
    local sid = "STEAM_0:" .. a .. ":" .. (a == 1 and b - 1 or b)
    return sid
end


function Tick(f, ms)
    Citizen.CreateThread(function()
        while true do
            if f() then break end
            Wait(ms or 0)
        end
    end)
end


function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end


function timeDiff(sent)
    diff = sent - os.time()
    return diff
end

--table sorting I.E. for k,v in spairs(table, function(t, a, b) return t[a].src < t[b].src end) do
function spairs(t, order)
    local keys = {}
    for k in pairs(t) do keys[#keys + 1] = k end
    
    if order then
        table.sort(keys, function(a, b) return order(t, a, b) end)
    else
        table.sort(keys)
    end
    
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

local oldRegisterCommand = RegisterCommand
function RegisterCommand(command, callback, restricted)
    local commandType = type(command)
    if commandType == "table" then
        for a = 1, #command do
            oldRegisterCommand(command[a], callback, restricted)
        end
    elseif commandType == "string" then
        oldRegisterCommand(command, callback, restricted)
    end
end

function Ternary(condition, t, f)
    if condition then return t else return f end
end


function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function tableBoolCheck(tbl)
    for _, _ in pairs(tbl) do
        return false
    end
    return true
end

function try(f)
    local status, exception = pcall(f)
    if not status then
        catch(exception)
    end
    return exception
end

function catch(...)
    local resource = GetCurrentResourceName()
    print("------------------ ERROR IN RESOURCE: " .. resource)
    print(...)
    print("------------------ END OF ERROR")
    --TriggerServerEvent('toDiscord', GetPlayerServerId(PlayerId()), '```[ERROR][' .. GetPlayerServerId(PlayerId()) .. '] Error in resource: ' .. resource .. ' Message: ' .. (...) .. '```\n', "Error")
end



function uuid()
    math.randomseed(GetGameTimer())
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', v)
    end)
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(0)
    end
end

function loadModel(pModelName)
  RequestModel(pModelName)
  while not HasModelLoaded(pModelName) do
      Citizen.Wait(100)
  end
end


function encodeAccountId(plain)
    if type(plain) == 'number' then
        return math.floor(exports["qpixel-financials"]:EncodeId(plain))
    end
end

function decodeAccountId(encoded)
    if type(encoded) == 'number' then
        return exports["qpixel-financials"]:DecodeId(encoded)
    end
end

function isValidDate(str)
  if not str then return false end
  local y, m, d = str:match("(%d+)/(%d+)/(%d+)")

  y, m, d = tonumber(y), tonumber(m), tonumber(d)

  if not y or y <= 1970 or y >= 2038 then
      return false
  elseif not m or m < 1 or m > 12 then
      return false
  elseif not d or d < 1 or d > 31 then
      return false
  else
      return true
  end
end

function shallowcopy(orig)
  local orig_type = type(orig)
  local copy
  if orig_type == 'table' then
      copy = {}
      for orig_key, orig_value in pairs(orig) do
          copy[orig_key] = orig_value
      end
  else -- number, string, boolean, etc
      copy = orig
  end
  return copy
end

function reverse(tbl)
    for i=1, math.floor(#tbl / 2) do
        tbl[i], tbl[#tbl - i + 1] = tbl[#tbl - i + 1], tbl[i]
    end

    return tbl
end




-- Server side only
function generateUTCTimestamp()
  local now = os.time()
  local tz_offset = os.difftime(now, os.time(os.date("!*t", now)))
  local epoch = os.time(os.date("!*t"))
  local utc = epoch + tz_offset
  return math.floor(utc)
end

function stringJoin(pData, pSeparator)
  local values = ""
  for _, value in pairs(pData) do
    values = values .. ("'%s'"):format(value) .. pSeparator
  end
  return (values):sub(1, #values - 1)
end