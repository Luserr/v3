local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = QBCore.Functions.GetPlayerData().job
    end
end)

local vehicleModes = {}
local pursuitmode = 0
local currentLevel = 1 

Citizen.CreateThread(function()
    Wait(150)
    vehicleModes = RPC.execute("pursuit:getJSON")
    DecorRegister('pursuitLevel', 1)
    DecorRegister('hasVehicleEditedByPursuit', false)
end)

AddEventHandler('baseevents:leftVehicle', function ()
    pursuitmode = 0
end)

RegisterCommand("pursuit", function(source, args)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    local vehicleName = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    local vehiclePresetName = nil
    local vehiclePresetMods = {}
    for k, v in pairs(vehicleModes["client"]["global"]["vehicles"]) do
        if v.model == vehicleName then
            vehiclePresetName = v.preset
            for x, y in pairs(vehicleModes["client"]["global"]["presets"]) do
                if y.id == vehiclePresetName then
                    vehiclePresetMods = y.modes
                    
                    break
                end
            end
            break
        end
    end
    if  PlayerJob.name == 'police' then 
        if not vehiclePresetName then 
            return 
        end

        if vehiclePresetName == "generic" and currentLevel == 4 then 
            currentLevel = 0 
        end

        if vehiclePresetName == "motorbike" and currentLevel == 3 then 
            currentLevel = 0 
        end

        if vehiclePresetName == "cruiser" and currentLevel == 2 then 
            currentLevel = 0 
        end

        currentLevel = currentLevel + 1

        local modLevel = vehiclePresetMods[currentLevel]
        SetVehicleXenonLightsColour(vehicle, modLevel.appearance.colors.xenon)
        ToggleVehicleMod(vehicle, modLevel.mods.Turbo)
        ToggleVehicleMod(vehicle, 18, modLevel.mods.Turbo)
        
        SetVehicleMod(vehicle, 11, modLevel.mods.Engine, false)
        SetVehicleMod(vehicle, 12, modLevel.mods.Brakes, false)
        SetVehicleMod(vehicle, 13, modLevel.mods.Transmission, false)
        SetVehicleMod(vehicle, 22, modLevel.mods.XenonHeadlights, false)
        for i = 1, #modLevel.handling do
            if not DecorIsRegisteredAsType(modLevel.handling[i].field, 3) then 
                DecorRegister(modLevel.handling[i].field, 3)
            end
            Citizen.Wait(100)
            local defaultValue = DecorGetFloat(vehicle, modLevel.handling[i].field)
            if defaultValue == 0 then
                defaultValue = GetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field)
                DecorSetFloat(vehicle, modLevel.handling[i].field, defaultValue)
            end
        end
        for i = 1, #modLevel.handling do 
            print('Before',GetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field))
            SetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field, DecorGetFloat(vehicle, modLevel.handling[i].field)*modLevel.handling[i].multiplier)
            print('After',GetVehicleHandlingFloat(vehicle, 'CHandlingData', modLevel.handling[i].field))
        end

        if source then  
            if modLevel.name == "Default" then 
                TriggerEvent("qb-hud:pursuit_values", 0)
                QBCore.Functions.Notify("Pursuit Mode: " ..modLevel.name)
                --pursuitmode = 0
                --SendNUIMessage({action = "pursuitmode", pursuitmode = 0})
            end 
            if modLevel.name == "A+" then 
                TriggerEvent("qb-hud:pursuit_values", 33) 
                QBCore.Functions.Notify("Pursuit Mode: " ..modLevel.name)
                --pursuitmode = 33
                --SendNUIMessage({action = "pursuitmode", pursuitmode = 33})
            end
            if modLevel.name == "S" then 
                TriggerEvent("qb-hud:pursuit_values", 66)
                QBCore.Functions.Notify("Pursuit Mode: " ..modLevel.name)
                --pursuitmode = 66
                --SendNUIMessage({action = "pursuitmode", pursuitmode = 66})
            end
            if modLevel.name == "S+" then 
                TriggerEvent("qb-hud:pursuit_values", 100)
                QBCore.Functions.Notify("Pursuit Mode: " ..modLevel.name)
                --pursuitmode = 100
                --SendNUIMessage({action = "pursuitmode", pursuitmode = 100})
            end
            if modLevel.name ~= "Default" then 
                TriggerEvent("DoLongHudText","Pursuit Mode: " ..modLevel.name ,1 )
            else
                TriggerEvent("DoLongHudText","Pursuit Mode: Disabled" ,2 )
            end
        end

    else
        QBCore.Functions.Notify("You are not a Police Officer.", "error")
    end
end)


Citizen.CreateThread(function()
    RegisterKeyMapping("pursuit", "Pursuit", "keyboard", "N")
end)
