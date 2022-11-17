--[[
___________                ___________                        
\__    ___/_ __  ____ _____\__    ___/________________  ______
  |    | |  |  \/    \\__  \ |    |_/ __ \_  __ \____ \/  ___/
  |    | |  |  /   |  \/ __ \|    |\  ___/|  | \/  |_> >___ \ 
  |____| |____/|___|  (____  /____| \___  >__|  |   __/____  >
                    \/     \/           \/      |__|       \/
-- TunasNewsJob V1 --If you enjoyed, go ahead and check out some of my other work ! 
https://github.com/Tuna-Terps
https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw ]]

Client = {}

-- Job Requirement
function Client:HasRequiredJob()

    if CFG.ESX then 
        job = ESX.GetPlayerData().job.name
    elseif CFG.QB then 
        --QBCORE
        QBCore = nil
        QBCore = exports['qb-core']:GetCoreObject()
        j = QBCore.Functions.GetPlayerData().job
        job = j.name
    else
        --STANDALONE
        print('else')
    end
    
    if job ~= CFG.JobName then 
        return false
    elseif  job == CFG.JobName then 
        return true
    else
        print('Handler:ERROR')
    end

    return
end


-- Check inventory

-- job menu

-- Notify
function Client:Notify(str1, str2)
    RequestStreamedTextureDict('DIA_CAMCREW')
    graphic = 'DIA_CAMCREW'
    if CFG.ESX then 
        return TriggerEvent('esx:showAdvancedNotification', CFG.Words['wzl'], str1, str2, graphic, 9)

    elseif CFG.QB then 
        -- QBCORE
            if GetVehiclePedIsIn(player, false) ~= 0 then 
                print('in vehicle') 
                BeginTextCommandThefeedPost("STRING")
                AddTextComponentSubstringPlayerName(str2)
                EndTextCommandThefeedPostMessagetext(graphic, graphic, false, 9, str1, '')
                EndTextCommandThefeedPostTicker(false,true)
            else
                if CFG.debug then print('^3[ Notify ]^7 Not in Vehicle') end
                return TriggerEvent('QBCore:Notify', str1..' '..str2, 'primary', 8000)
            end
        
    else
          -- STANDALONE
          BeginTextCommandThefeedPost("STRING")
          AddTextComponentSubstringPlayerName(str2)
          EndTextCommandThefeedPostMessagetext(graphic, graphic, false, 9, str1, '')
          EndTextCommandThefeedPostTicker(false,true)
    end
    return

end

-- Help notification 

function Client:ShowHelpNotify(message, duration, coords)
    local _source = _source
    local c = coords
    
    if CFG.ESX then 
        return ESX.ShowHelpNotification(message, true, true, duration)
    
    elseif CFG.QB then 
        SetFloatingHelpTextWorldPosition(1, c+vector3(0,0,1.0))
        SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
        BeginTextCommandDisplayHelp('TunasNewsJob:HelpNotify')
        AddTextEntry('TunasNewsJob:HelpNotify', message)
        EndTextCommandDisplayHelp(2, false, false, -1)

    else
        --STANDALONE
        SetFloatingHelpTextWorldPosition(1, c+vector3(0,0,1.0))
        SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
        BeginTextCommandDisplayHelp('TunasNewsJob:HelpNotify')
        AddTextEntry('TunasNewsJob:HelpNotify', message)
        EndTextCommandDisplayHelp(2, false, false, -1)
    end
    return

end

function Client:ProgressUI(duration, message)

    if CFG.useProgressBars then 
        return exports['progressbar']:Progress(duration, message)
    else
        print('Server Owner Needs to Add Progress Bar . . .')
    end
    return
end


function Client:GiveKeys(plate)
    if CFG.qb_keys == true then 
        TriggerEvent('vehiclekeys:client:SetOwner', plate)
    elseif CFG.cd_keys == true then 
        TriggerEvent('cd_garage:AddKeys', plate)
    elseif CFG.T1gerKeys == true then 
        exports['t1ger_keys']:SetVehicleLocked(Veh[1], 0)
    else
        return
    end
    return
end

if CFG.ESX == true then 
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