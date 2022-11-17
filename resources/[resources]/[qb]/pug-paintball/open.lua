print'Pug Paintball 1.0.0'
local QBCore = exports['qb-core']:GetCoreObject()

-- Outffi for red and blue team/ the second number is the clothing item number you want to change. Dont change the first numbers
function OutFitRed()
    if IsPedModel(PlayerPedId(), 'mp_m_freemode_01') then
        SetPedComponentVariation(PlayerPedId(),1,1,3) -- mask
        SetPedComponentVariation(PlayerPedId(),4,86,1) -- pants
        SetPedComponentVariation(PlayerPedId(),11,229,2) -- shirt
        SetPedComponentVariation(PlayerPedId(),3,15,0) -- torso
        SetPedComponentVariation(PlayerPedId(),6,73,0) -- shoes
    elseif IsPedModel(PlayerPedId(), 'mp_f_freemode_01') then
        SetPedComponentVariation(PlayerPedId(),1,9,3) -- mask
        SetPedComponentVariation(PlayerPedId(),4,183,2) -- pants
        SetPedComponentVariation(PlayerPedId(),11,71,9) -- shirt
        SetPedComponentVariation(PlayerPedId(),3,15,0) -- torso
        -- SetPedComponentVariation(PlayerPedId(),6,68,0) -- shoes
    end
end

function OutFitBlue()
    if IsPedModel(PlayerPedId(), 'mp_m_freemode_01') then
        SetPedComponentVariation(PlayerPedId(),1,23,4) -- mask 
        SetPedComponentVariation(PlayerPedId(),4,180,4) -- pants
        SetPedComponentVariation(PlayerPedId(),11,468,2) -- shirt
        SetPedComponentVariation(PlayerPedId(),3,0,0) -- torso
        -- SetPedComponentVariation(PlayerPedId(),6,68,0) -- shoes
    elseif IsPedModel(PlayerPedId(), 'mp_f_freemode_01') then
        SetPedComponentVariation(PlayerPedId(),1,9,4) -- mask
        SetPedComponentVariation(PlayerPedId(),4,183,3) -- pants
        SetPedComponentVariation(PlayerPedId(),11,71,15) -- shirt
        SetPedComponentVariation(PlayerPedId(),3,15,0) -- torso
        -- SetPedComponentVariation(PlayerPedId(),6,68,0) -- shoes
    end
end

RegisterNetEvent('Pug:client:AddGameItems', function() -- gives items when the match starts
    TriggerServerEvent('Pug:SV:AddItem', "radio", 1)
end)

RegisterNetEvent('Pug:client:RemoveGameItems', function() -- removes items when the match ends
    RemoveAllPedWeapons(PlayerPedId(), false)
    TriggerServerEvent('Pug:SV:RemoveItem', "radio", 1)
end)

Citizen.CreateThread(function()
    if not Config.UseVrHeadSet then
        blip = AddBlipForCoord(-280.78, -2032.31, 30.15)
        SetBlipSprite(blip, 110)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.75)
        SetBlipColour(blip, 5)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Paint Ball")
        EndTextCommandSetBlipName(blip)
        exports['qb-target']:AddBoxZone("PaintBallPed", vector3(-281.96, -2031.37, 30.15), 1.4, 1, { -- Place you ped at this vector
            name="PaintBallPed",
            heading=23,
            --debugPoly=true,
            minZ=29.15,
            maxZ=31.55,
        }, {
        options = {
            {
                event = 'Pug:client:ViewLobby',
                icon = "fas fa-clipboard",
                label = "View Arena",
            },
        },
            distance = 2.5
        })
    end
end)

function DrawTextOptiopnForSpectate()
    exports["fjam-ui"]:showInteraction('[E] To open menu')
    -- exports['qb-core']:DrawText('[E] To open menu')
end

function HideTextOptiopnForSpectate()
    exports["fjam-ui"]:hideInteraction()
    -- exports['qb-core']:HideText()
end

RegisterNetEvent('Pug:client:ChooseMap', function()
    if Config.ContextMenuEvent == 'nh-context:createMenu' then
        local menu = {
            {
                header = Translations.menu.map,
                context = " ",
                event = "Pug:client:ViewLobby",
            },
            {
                header = Translations.menu.random,
                context = "Randomly chosen maps",
                event = "Pug:client:SelectChosenMap",
            },
        }
        for k, v in pairs(Config.Arenas) do
            menu[#menu+1] = {
                header = v.name,
                context = v.description,
                event = "Pug:client:SelectChosenMap",
                image = v.url,
                args = {k}
            }
        end
        TriggerEvent(Config.ContextMenuEvent, menu)
    else
        local menu = {
            {
                header = Translations.menu.map,
                txt = " ",
                params = {
                    event = "Pug:client:ViewLobby",
                }
            },
            {
                header = Translations.menu.random,
                txt = "Randomly chosen maps",
                params = {
                    event = "Pug:client:SelectChosenMap",
                }
            },
        }
        for k, v in pairs(Config.Arenas) do
            menu[#menu+1] = {
                header = v.name,
                txt = v.description,
                url = v.url,
                params = {
                    event = "Pug:client:SelectChosenMap",
                    args = k
                }
            }
        end
        TriggerEvent(Config.ContextMenuEvent, menu)
    end
end)

AddEventHandler("Pug:client:SelectChosenMap", function(arenaMap)
    if arenaMap == nil then
        TriggerServerEvent("Pug:SV:SetArenaMap",'random')
    else
        TriggerServerEvent("Pug:SV:SetArenaMap",arenaMap)
    end
    if not isInMatch then
        TriggerEvent("Pug:client:ViewLobby")
    end
end)