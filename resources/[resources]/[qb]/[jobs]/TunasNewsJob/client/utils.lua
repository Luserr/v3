--[[
___________                ___________                        
\__    ___/_ __  ____ _____\__    ___/________________  ______
  |    | |  |  \/    \\__  \ |    |_/ __ \_  __ \____ \/  ___/
  |    | |  |  /   |  \/ __ \|    |\  ___/|  | \/  |_> >___ \ 
  |____| |____/|___|  (____  /____| \___  >__|  |   __/____  >
                    \/     \/           \/      |__|       \/

-- News Job V1 -- If you enjoyed, go ahead and check out some of my other work ! 
https://github.com/Tuna-Terps
https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw]]
-- -------------------------------------utility ------------------------------------------------------
player = nil
coords = {}
UserLoaded = false 


Citizen.CreateThread(function()
    while true do
        player = PlayerPedId()
        coords = GetEntityCoords(player)
        Citizen.Wait(500)
    end
end)

if CFG.enableBlip then
    startBlips = {}
    for k, v in pairs(CFG.startBlips) do
        local b = AddBlipForCoord(v.coords)
        SetBlipSprite(b,v.sprite)
        SetBlipColour(b,v.color)
        SetBlipScale(b,v.scale)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.name)
        EndTextCommandSetBlipName(b)
        SetBlipAsShortRange(b,v.sr)
    end
end

function DynaMarker(type,posX,posY,posZ,r,g,b,a,multi,sab)

    if multi == true then
        if sab then 
            t = 31
            r1 = 500
            g1 = 0
        else
            t = 29
            r1 = 0
            g1 = 500
        end
        -- enter
        DrawMarker(type, posX,posY,posZ, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, r, g, b, a, false, false, 2, true, false, false, false)
       -- dollar sign
        DrawMarker(t, posX,posY,posZ+2.5, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, r1, g1, 0, 200, true, true, 2, false, false, false, false)
    else
        -- entering/exiting zone
        DrawMarker(type, posX, posY,posZ, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, 20.0, 5.0, r, g, b, a, false, true, 2, false, false, false, false)
    end
end


function DrawMissionText(text)
    SetTextScale(0.5, 0.5)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(0.5,0.955)
end
--[[
if CFG.skinChanger == true then 
    oldSkin = nil
    toggle = true
    TriggerEvent('skinchanger:getSkin', function(skin)
        oldSkin = skin  
        function ChangeClothes()
            if toggle == true then 
                if skin.sex == 0 then
                    TriggerEvent('skinchanger:loadClothes', oldSkin, CFG.UniformM)
                else
                    -- FEMALE
                    TriggerEvent('skinchanger:loadClothes', oldSkin, CFG.UniformF)
                end
                toggle = false
            else
                if skin.sex == 0 then
                    TriggerEvent('skinchanger:loadClothes', skin, oldSkin)
                else
                    -- FEMALE
                    TriggerEvent('skinchanger:loadClothes', skin, oldSkin)
                end
                toggle = true
            end
        end
    end)
end
]]
-- Function for 3D text:
function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
    return
end


function Headline(text)
    SetTextFont(8)
    SetTextScale(1.0, 1.0)
    SetTextColour(255, 255, 255, 255)
    SetTextWrap(0.0, 1.0)
    SetTextCentre(false)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 205)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.2, 0.85)
    return
end


function Hud()
    local HudComps = {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 15, 18, 19}
    HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
    for k, v in pairs(HudComps)do
        HideHudComponentThisFrame(v)
    end
    return
end



TriggerEvent('chat:addSuggestion', '/news', 'Manually add a news event, or spawn NPC event', {
    { name="add/npc", help="[String] | add = Manual event | npc = npc event" },
    { name="level", help="[Number] | Add = 1-4 | NPC 1-7"},
    { name="duration", help="[Number] In seconds, general by level 150, 300, 600 | ADD ONLY" },
    { name="label", help="[String] Headline to display to members FOUR WORD MAX | ADD ONLY" },
    { name=" ", help="[String] Headline to display to members FOUR WORD MAX | ADD ONLY" },
    { name=" ", help="[String] Headline to display to members FOUR WORD MAX | ADD ONLY" },
    { name=" ", help="[String] Headline to display to members FOUR WORD MAX | ADD ONLY" },

})


RegisterNetEvent('TunasNewsJob:pushPay')
AddEventHandler('TunasNewsJob:pushPay', function(level, submissions)
    TriggerServerEvent('TunasNewsJob:Payment', level, submissions)
    return;
end)


if CFG.ESX  == true then
    print('utilizing ESX . . .')
    ESX = nil
    PlayerData = {}
    TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
    
elseif CFG.QB then 
    print('utilizing QBCORE . . .')
    QBCore = nil
    QBCore = exports['qb-core']:GetCoreObject()

elseif CFG.STANDALONE then 
    print('[ERROR]')

end
-- init
if CFG.ESX == true then 
    RegisterNetEvent('esx:playerLoaded', function(xPlayer)
        ESX.PlayerData = xPlayer
        ESX.PlayerLoaded = true
        UserLoaded = true 
        return UserLoaded
    end)
    RegisterNetEvent('esx:onPlayerLogout', function(id)
        ESX.PlayerLoaded = false
        ESX.PlayerData = {}
        UserLoaded = false
        return UserLoaded
      end)

elseif CFG.QB then 
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        UserLoaded = true
        return UserLoaded
    end)
    RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
        UserLoaded = false
        return UserLoaded
    end)
else
    -- standalone 
end



-- we need to keep some models + anims in memory to sync server spawn across all clients 
Citizen.CreateThread(function()
    if CFG.loadAnims then 
        for k, v in pairs(CFG.ANIMS) do
            if CFG.debug then print('beginning process for '..v['animDict']) end
            RequestAnimDict(v['animDict'])
            while not HasAnimDictLoaded(v['animDict']) do
                Citizen.Wait(100)
            end
            if CFG.debug then print('request for '..v['animDict']..' was a success !') end
        end
    end
    -- we possibly need to load vehicles to sync across server spawn
    if CFG.loadVehicles then 
        for k, v in pairs(CFG.loadTheseInMemory) do

            if CFG.debug then print ('requesting model . . . '.. v['model'])end
            RequestModel(GetHashKey(v['model']))
            while not HasModelLoaded(GetHashKey(v['model'])) do Citizen.Wait(100) end
            
            if CFG.debug then print (v['model'].. ' model  loaded !')end

        end
    end
    
    function clearMemory()
        if CFG.loadVehicles then 
            for k, v in pairs(CFG.loadTheseInMemory) do
        
                if CFG.debug then print ('clearing model . . . '.. v['model'])end

                SetModelAsNoLongerNeeded(GetHashKey(v['model']))
                
                if CFG.debug then print (v['model'].. ' model  cleared !')end
            
            end
        end
        for k, v in pairs(CFG.ANIMS) do
            if CFG.debug then print('clearing anim dict  '..v['animDict']) end
            RemoveAnimDict(v['animDict'])
            
            if CFG.debug then print('unloading for '..v['animDict']..' was a success !') end
        end
    end
end)


RegisterNetEvent('TunasNewsJob:NotifyCL')
AddEventHandler('TunasNewsJob:NotifyCL', function(str1, str2, bool, denied)
    if CFG.JobRequired then 
        if denied == true then 
            Client:Notify(str1, str2)
            return 
        end
        
        if not Client:HasRequiredJob() then return end
        if CFG.debug then print('notified . . .') end

        Client:Notify(str1, str2)
    else
        Client:Notify(str1, str2)
    end
    return
end)

