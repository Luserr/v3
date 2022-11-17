if Config.Framework == "NEW" then
    QBCore = exports[Config.CoreName]:GetCoreObject()
elseif Config.Framework == "OLD" then 
        local QBCore = nil
        CreateThread(function()
        while QBCore == nil do 
            TriggerEvent(Config.CoreName, function(obj)QBCore = obj end) 
            Wait(200) 
        end 
    end) 
else
    print("The Framework '", Config.Framework, "' is not support, please change in config.lua")
end

RegisterNetEvent('m-CraftPotions:client:AbrirMenuGeral')
AddEventHandler('m-CraftPotions:client:AbrirMenuGeral', function()
    exports[Config.QBMenu]:openMenu({
        {header = Config["Language"]["QBMenu"]["GeneralMenu"],isMenuHeader = true},
        {header = Config["Language"]["QBMenu"]["MakePotions"],txt = "",params = {event = "m-CraftPotions:client:EscolherPocoes",}},
        {header = Config["Language"]["QBMenu"]["Information"],txt = "",params = {event = "m-CraftPotions:client:Informacoes",}},
    })
end)

RegisterNetEvent('m-CraftPotions:client:Informacoes')
AddEventHandler('m-CraftPotions:client:Informacoes', function()
    local playerPed = PlayerPedId()
    if IsPedSwimming(playerPed) then return QBCore.Functions.Notify(Config["Language"]["Notification"]["InWater"], "error") end 
    if IsPedInAnyVehicle(playerPed) then return QBCore.Functions.Notify(Config["Language"]["Notification"]["InCar"], "error") end 
    exports[Config.QBMenu]:openMenu({
        {header = Config["Language"]["QBMenu"]["Information"],isMenuHeader = true},
        {header = Config["Language"]["QBMenu"]["InformationHeader"],txt = "",},
        {header = Config["Language"]["QBMenu"]["InformationBack"],txt = "",params ={event = "m-CraftPotions:client:AbrirMenuGeral",}},
    })
end)

RegisterNetEvent('m-CraftPotions:client:EscolherPocoes')
AddEventHandler('m-CraftPotions:client:EscolherPocoes', function()
    exports[Config.QBMenu]:openMenu({
        {header = Config["Language"]["QBMenu"]["MakePotions"],isMenuHeader = true},
        {header = Config.LifePotion.Name,txt = "",params = {event = "m-CraftPotions:client:PocoesDeVida",}},
        {header = Config.StaminaPotion.Name,txt = "",params = {event = "m-CraftPotions:client:PocoesDeStamina",}},
        {header = Config.ArmourPotion.Name,txt = "",params = {event = "m-CraftPotions:client:PocoesDeArmadura",}},
        {header = Config.NightvisionPotion.Name,txt = "",params = {event = "m-CraftPotions:client:PocoesDeNightvision",}},
        {header = Config.SpeedPotion.Name,txt = "",params = {event = "m-CraftPotions:client:PocoesDeSpeed",}},
    })
end)

RegisterNetEvent('m-CraftPotions:client:PocoesDeVida')
AddEventHandler('m-CraftPotions:client:PocoesDeVida', function()
    local charinfo = QBCore.Functions.GetPlayerData().metadata["potionlifexp"]
    local job = QBCore.Functions.GetPlayerData().job.name
    if Config.LifePotion.Job == true then if job ~= Config.LifePotion.JobName then QBCore.Functions.Notify(Config["Language"]["Notification"]["JobErrado"]) return false end end
    local gang = QBCore.Functions.GetPlayerData().job.gang
    if Config.LifePotion.Gang == true then if gang ~= Config.LifePotion.GangName then QBCore.Functions.Notify("You dont have the gang necessary") return false end end
    if Config.LifePotion.Enable then
        if charinfo >= Config.LifePotion.Pocao100.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.LifePotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida25",}},
                {header = Config.LifePotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida50",}},
                {header = onfig.LifePotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida75",}},
                {header = Config.LifePotion.Pocao100.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao100.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao100.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao100.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida100",}},
            })
        elseif charinfo >= Config.LifePotion.Pocao75.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.LifePotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida25",}},
                {header = Config.LifePotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida50",}},
                {header = Config.LifePotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida75",}},
            })
        elseif charinfo >= Config.LifePotion.Pocao50.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.LifePotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida25",}},
                {header = Config.LifePotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida50",}},
            })
        elseif charinfo >= Config.LifePotion.Pocao25.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.LifePotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.LifePotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.LifePotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.LifePotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoVida25",}},
            })
        end
    else
        return false
    end
end)

RegisterNetEvent('m-CraftPotions:client:PocoesDeArmadura')
AddEventHandler('m-CraftPotions:client:PocoesDeArmadura', function()
    local charinfo = QBCore.Functions.GetPlayerData().metadata["potionarmourxp"]
    local job = QBCore.Functions.GetPlayerData().job.name
    local gang = QBCore.Functions.GetPlayerData().gang.name
    if Config.ArmourPotion.Job == true then if job ~= Config.ArmourPotion.JobName then QBCore.Functions.Notify(Config["Language"]["Notification"]["JobErrado"]) return false end end
    if Config.LifePotion.Gang == true then if gang ~= Config.ArmourPotion.GangName then QBCore.Functions.Notify("You dont have the gang necessary") return false end end
    if Config.ArmourPotion.Enable then
        if charinfo >= Config.ArmourPotion.Pocao100.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.ArmourPotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura25",}},
                {header = Config.LifePotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura50",}},
                {header = Config.LifePotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura75",}},
                {header = Config.LifePotion.Pocao100.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao100.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao100.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao100.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura100",}},
            })
        elseif charinfo >= Config.ArmourPotion.Pocao75.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.ArmourPotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura25",}},
                {header = Config.LifePotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura50",}},
                {header = Config.LifePotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura75",}},
            })
        elseif charinfo >= Config.ArmourPotion.Pocao50.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.ArmourPotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura25",}},
                {header = Config.LifePotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura50",}},
            })
        elseif charinfo >= Config.ArmourPotion.Pocao25.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.ArmourPotion.Name,isMenuHeader = true},
                {header = Config.LifePotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.ArmourPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.ArmourPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.ArmourPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoArmadura25",}},
            })
        end
    else
        return false
    end
end)

RegisterNetEvent('m-CraftPotions:client:PocoesDeStamina')
AddEventHandler('m-CraftPotions:client:PocoesDeStamina', function()
    local charinfo = QBCore.Functions.GetPlayerData().metadata["potionstaminaxp"]
    local job = QBCore.Functions.GetPlayerData().job.name
    if Config.StaminaPotion.Job == true then if job ~= Config.StaminaPotion.JobName then QBCore.Functions.Notify(Config["Language"]["Notification"]["JobErrado"]) return false end end
    local gang = QBCore.Functions.GetPlayerData().job.gang
    if Config.LifePotion.Gang == true then if gang ~= Config.StaminaPotion.GangName then QBCore.Functions.Notify("You dont have the necessary gang") return false end end
    if Config.StaminaPotion.Enable then
        if charinfo >= Config.StaminaPotion.Pocao100.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.StaminaPotion.Name,isMenuHeader = true},
                {header = Config.StaminaPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.StaminaPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.StaminaPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.StaminaPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoStamina50",}},
                {header = Config.StaminaPotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.StaminaPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.StaminaPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.StaminaPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoStamina75",}},
                {header = Config.StaminaPotion.Pocao100.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.StaminaPotion.Pocao100.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.StaminaPotion.Pocao100.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.StaminaPotion.Pocao100.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoStamina100",}},
            })
        elseif charinfo >= Config.StaminaPotion.Pocao75.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.StaminaPotion.Name,isMenuHeader = true},
                {header = Config.StaminaPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.StaminaPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.StaminaPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.StaminaPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoStamina50",}},
                {header = Config.StaminaPotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.StaminaPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.StaminaPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.StaminaPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoStamina75",}},
            })
        elseif charinfo >= Config.StaminaPotion.Pocao50.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.StaminaPotion.Name,isMenuHeader = true},
                {header = Config.StaminaPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.StaminaPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.StaminaPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.StaminaPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoStamina50",}},
            })
        end
    else
        return false
    end
end)

RegisterNetEvent('m-CraftPotions:client:PocoesDeNightvision')
AddEventHandler('m-CraftPotions:client:PocoesDeNightvision', function()
    local charinfo = QBCore.Functions.GetPlayerData().metadata["potionvisionxp"]
    local job = QBCore.Functions.GetPlayerData().job.name
    if Config.NightvisionPotion.Job == true then if job ~= Config.NightvisionPotion.JobName then QBCore.Functions.Notify(Config["Language"]["Notification"]["JobErrado"]) return false end end
    local gang = QBCore.Functions.GetPlayerData().gang.name
    if Config.LifePotion.Gang == true then if gang ~= Config.NightvisionPotion.GangName then QBCore.Functions.Notify("You dont have the necessary gang") return false end end
    if Config.NightvisionPotion.Enable then
        if charinfo >= Config.NightvisionPotion.Pocao100.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.NightvisionPotion.Name,isMenuHeader = true},
                {header = Config.NightvisionPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision25",}},
                {header = Config.NightvisionPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision50",}},
                {header = Config.NightvisionPotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision75",}},
                {header = Config.NightvisionPotion.Pocao100.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao100.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao100.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao100.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision100",}},
            })
        elseif charinfo >= Config.NightvisionPotion.Pocao75.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.NightvisionPotion.Name,isMenuHeader = true},
                {header = Config.NightvisionPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision25",}},
                {header = Config.NightvisionPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision50",}},
                {header = Config.NightvisionPotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision75",}},
            })
        elseif charinfo >= Config.NightvisionPotion.Pocao50.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.NightvisionPotion.Name,isMenuHeader = true},
                {header = Config.NightvisionPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision25",}},
                {header = Config.NightvisionPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision50",}},
            })
        elseif charinfo >= Config.NightvisionPotion.Pocao25.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.NightvisionPotion.Name,isMenuHeader = true},
                {header = Config.NightvisionPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.NightvisionPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.NightvisionPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.NightvisionPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoNightvision25",}},
            })
        end
    else
        return false
    end
end)

RegisterNetEvent('m-CraftPotions:client:PocoesDeSpeed')
AddEventHandler('m-CraftPotions:client:PocoesDeSpeed', function()
    local charinfo = QBCore.Functions.GetPlayerData().metadata["potionspeedxp"]
    local job = QBCore.Functions.GetPlayerData().job.name
    if Config.SpeedPotion.Job == true then if job ~= Config.SpeedPotion.JobName then QBCore.Functions.Notify(Config["Language"]["Notification"]["JobErrado"]) return false end end
    local gang = QBCore.Functions.GetPlayerData().gang.name
    if Config.LifePotion.Gang == true then if gang ~= Config.SpeedPotion.GangName then QBCore.Functions.Notify("You dont have the necessary gang") return false end end
    if Config.SpeedPotion.Enable then
        if charinfo >= Config.SpeedPotion.Pocao100.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.SpeedPotion.Name,isMenuHeader = true},
                {header = Config.SpeedPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed25",}},
                {header = Config.SpeedPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed50",}},
                {header = Config.SpeedPotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed75",}},
                {header = Config.SpeedPotion.Pocao100.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao100.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao100.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao100.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed100",}},
            })
        elseif charinfo >= Config.SpeedPotion.Pocao75.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.SpeedPotion.Name,isMenuHeader = true},
                {header = Config.SpeedPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed25",}},
                {header = Config.SpeedPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed50",}},
                {header = Config.SpeedPotion.Pocao75.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao75.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao75.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao75.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed75",}},
            })
        elseif charinfo >= Config.SpeedPotion.Pocao50.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.SpeedPotion.Name,isMenuHeader = true},
                {header = Config.SpeedPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed25",}},
                {header = Config.SpeedPotion.Pocao50.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao50.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao50.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao50.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed50",}},
            })
        elseif charinfo >= Config.SpeedPotion.Pocao25.XPNeed then
            exports[Config.QBMenu]:openMenu({
                {header = Config.SpeedPotion.Name,isMenuHeader = true},
                {header = Config.SpeedPotion.Pocao25.Description,txt = Config["Language"]["QBMenu"]["Description"].."<br>"..Config["Language"]["QBMenu"]["Name"].." "..Config.SpeedPotion.Pocao25.Name.."<br>"..Config["Language"]["QBMenu"]["Effect"].." "..Config.SpeedPotion.Pocao25.Effects.."<br>"..Config["Language"]["QBMenu"]["XPGained"].." "..Config.SpeedPotion.Pocao25.XPGained,params = {event = "m-CraftPotions:client:FazerPocaoSpeed25",}},
            })
        end
    else
        return false
    end
end)