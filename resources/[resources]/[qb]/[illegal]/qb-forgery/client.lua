local QBCore = exports['qb-core']:GetCoreObject()

-- local firstname = nil
-- local lastname = nil
-- local birthday = nil
-- local gender = nil
-- local nationality = nil
-- local info = {}

-- RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
-- AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
--     isLoggedIn = true
--     PlayerData = QBCore.Functions.GetPlayerData()
-- end)

CreateThread(function()
    exports['qb-target']:AddBoxZone("ForgeryEnter", vector3(-333.5, 6228.77, 31.67), 0.2, 1.0, {
        name="ForgeryEnter",
        heading=315,
        debugPoly=false,
        minZ=24.07,
        maxZ=33.07,
      },{
        options = {
                {
                  type = "client",
                  event = "nc-forgery:client:enter",
                  icon = "fas fa-user-secret",
                  label = "Enter",
                },
             },
        distance = 2.5
        })

        exports['qb-target']:AddBoxZone("ForgeryLeave", vector3(1174.0, -3196.63, -39.01), 0.2, 1.0, {
            name="ForgeryLeave",
            heading=89,
            debugPoly=false,
        },{
            options = {
                    {
                    type = "client",
                    event = "nc-forgery:client:leave",
                    icon = "fas fa-user-secret",
                    label = "Leave",
                    },
             },
        distance = 2.5
        })

        exports['qb-target']:AddBoxZone("ForgeID", vector3(1169.52, -3196.85, -39.01), 0.4, 0.5, {
            name="ForgeID",
            heading=290,
            debugPoly=false,
        },{
            options = {
                    {
                    type = "client",
                    event = "nc-forgery:client:ForgeID",
                    icon = "fas fa-user-secret",
                    label = "Forge ID",
                    },
             },
        distance = 2.5
        })

        exports['qb-target']:AddBoxZone("ForgeDrivers", vector3(1159.82, -3199.15, -39.01), 0.6, 0.6, {
            name="ForgeDrivers",
            heading=23,
            debugPoly=false,
        },{
            options = {
                    {
                    type = "client",
                    event = "nc-forgery:client:ForgeDrivers",
                    icon = "fas fa-user-secret",
                    label = "Forge License",
                    },
             },
        distance = 2.5
        })
end)

RegisterNetEvent('nc-forgery:client:enter', function(source)
    local Ped = PlayerPedId()
    local PlayerCoords = GetEntityCoords(Ped)
    if not IsPedInAnyVehicle(Ped, false) then
        DoScreenFadeOut(1000)
        Wait(1500)
        SetEntityCoords(Ped, 1173.54, -3196.63, -39.01, 100.64)
        DoScreenFadeIn(1000)
    else
        QBCore.Functions.Notify("You cannot enter while in a vehicle.")
    end
end)

RegisterNetEvent('nc-forgery:client:leave', function(source)
    local Ped = PlayerPedId()
    local PlayerCoords = GetEntityCoords(Ped)
    if not IsPedInAnyVehicle(Ped, false) then
        DoScreenFadeOut(1000)
        Wait(1500)
        SetEntityCoords(Ped, -333.5, 6228.77, 31.67, 315)
        DoScreenFadeIn(1000)

    else
        QBCore.Functions.Notify("You cannot leave while in a vehicle.")
    end
end)

RegisterNetEvent('nc-forgery:client:ForgeID', function(source)
    local dialog = exports['qb-input']:ShowInput({
        header = "Create an Fake ID - [$25,000]",
        submitText = "Create",
        inputs = {
            {
                text = "First Name",
                name = "firstname",
                type = "text",
                isRequired = true
            },
            {
                text = "Last Name",
                name = "lastname",
                type = "text",
                isRequired = true
            },
            {
                text = "Date of Birth (YYYY-MM-DD)",
                name = "birthday",
                type = "text",
                isRequired = true
            },
            {
                text = "Nationality",
                name = "nationality",
                type = "text",
                isRequired = true
            }
        },
    })

    if dialog ~= nil then
        for k,v in pairs(dialog) do
            local citizenid = tostring(QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(5)):upper()
            local firstname = (dialog['firstname'])
            local lastname = (dialog['lastname'])
            local birthday = (dialog['birthday'])
            local nationality = (dialog['nationality']) 
            
            QBCore.Functions.Progressbar("forge_docs", "Forging ID...", (Config.CraftingTime*1000), false, false, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, 
            {
                animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                anim = "machinic_loop_mechandplayer",
                flags = 49,
            }, {}, function()
                
            end, function()
                TriggerServerEvent("nc-forgery:server:ForgeID",citizenid, firstname, lastname, birthday, nationality)
            end)
        
        end
    end
end, false)

RegisterNetEvent('nc-forgery:client:ForgeDrivers', function(source)
    local dialog = exports['qb-input']:ShowInput({
        header = "Fake Driver License - [$25,000]",
        submitText = "Create",
        inputs = {
            {
                text = "First Name",
                name = "firstname",
                type = "text",
                isRequired = true
            },
            {
                text = "Last Name",
                name = "lastname",
                type = "text",
                isRequired = true
            },
            {
                text = "Date of Birth (YYYY-MM-DD)",
                name = "birthday",
                type = "text",
                isRequired = true
            },
            {
                text = "Nationality",
                name = "nationality",
                type = "text",
                isRequired = true
            }
        },
    })

    if dialog ~= nil then
        for k,v in pairs(dialog) do
            local citizenid = tostring(QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(5)):upper()
            local firstname = (dialog['firstname'])
            local lastname = (dialog['lastname'])
            local birthday = (dialog['birthday'])
            
            QBCore.Functions.Progressbar("forge_docs", "Forging License...", (Config.CraftingTime*1000), false, false, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, 
            {
                animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                anim = "machinic_loop_mechandplayer",
                flags = 49,
            }, {}, function()
                
            end, function()
                TriggerServerEvent("nc-forgery:server:ForgeDrivers", firstname, lastname, birthday)
            end)
        end
    end
end, false)