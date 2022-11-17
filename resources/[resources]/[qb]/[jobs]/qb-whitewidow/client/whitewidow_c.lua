----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.CoreSettings.TargetName
local MenuName = Config.CoreSettings.MenuName
local InputName = Config.CoreSettings.InputName
local DutyEvent = Config.CoreSettings.DutyEvent
local ClothingEvent = Config.CoreSettings.ClothingEvent
local FuelEvent = Config.CoreSettings.FuelEvent
local RemoveStressEvent = Config.CoreSettings.RemoveStressEvent
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- NOTIFICATIONS START --<!>--
RegisterNetEvent('boii-whitewidow:notifications')
AddEventHandler('boii-whitewidow:notifications', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS END --<!>--

--<!>-- BLIPS START --<!>--
CreateThread(function()
    for _, info in pairs(Config.Blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, info.scale)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)
--<!>-- BLIPS END --<!>--

--<!>-- PEDS START --<!>--
if Config.MLOVersion == 'v2' then 
    Citizen.CreateThread(function()
        for _,v in pairs(Config.JobSettings.Garage.V2Garage.Peds) do
            RequestModel(GetHashKey(v.model))
            while not HasModelLoaded(GetHashKey(v.model)) do
                Wait(1)
            end
            CocainePed = CreatePed(4, v.hash,v.x,v.y,v.z-1, 3374176, false, true)
            SetEntityHeading(CocainePed, v.h)
            FreezeEntityPosition(CocainePed, true)
            SetEntityInvincible(CocainePed, true)
            SetBlockingOfNonTemporaryEvents(CocainePed, true)
            TaskStartScenarioInPlace(CocainePed, v.scenario, 0, true)
            -- qb-target ped export
            exports[TargetName]:AddTargetModel(v.model, {options = {{event = 'boii-whitewidow:client:AccessGarage',icon = Language.Targeting['garageicon'],label = Language.Targeting['garagelabel']},},distance = 10.0})
        end
    end)
end
--<!>-- PEDS END --<!>--

--<!>-- ON DUTY START --<!>--
PlayerJob = {}
local onDuty = false
RegisterNetEvent('Core:Client:OnPlayerLoaded')
AddEventHandler('Core:Client:OnPlayerLoaded', function()
    Core.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.JobSettings.JobName then
                TriggerServerEvent(DutyEvent)
            end
        end
    end)
end)
RegisterNetEvent('Core:Client:OnJobUpdate')
AddEventHandler('Core:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)
RegisterNetEvent('Core:Client:SetDuty')
AddEventHandler('Core:Client:SetDuty', function(duty)
    onDuty = duty
end)
RegisterNetEvent('boii-whitewidow:client:ToggleDuty', function()
	onDuty = not onDuty
	TriggerServerEvent(DutyEvent)
end)
for k, v in pairs(Config.JobSettings.Locations.Duty) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:WhiteWidowDutyMenu',
            icon = Language.Targeting['dutyicon'],
            label = Language.Targeting['dutylabel'],
            job = Config.JobSettings.JobName
            },
        },
        distance = v.distance,
    })
end
--<!>-- ON DUTY END --<!>--

--<!>-- BOSS MENU START --<!>--
-- Boss
for k, v in pairs(Config.JobSettings.Locations.Boss) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = Config.CoreSettings.BossMenuEvent,
            icon = Language.Targeting['bossicon'],
            label = Language.Targeting['bosslabel'],
            job = {[Config.JobSettings.JobName] = 5,[Config.JobSettings.JobName] = 6}
            },
        },
        distance = v.distance,
    })
end
--<!>-- BOSS MENU END --<!>--

--<!>-- BOSS STORAGE START --<!>--
-- Boss storage
for k, v in pairs(Config.JobSettings.Locations.BossStorage) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-whitewidow:client:OpenStash',
                icon = Language.Targeting['bossstorageicon'],
                label = Language.Targeting['bossstoragelabel'],
                job = {[Config.JobSettings.JobName] = 5,[Config.JobSettings.JobName] = 6},
                stash = 'ww_boss_storage'
            },
            {
                event = 'boii-whitewidow:client:OpenStash',
                icon = Language.Targeting['forceentryicon'],
                label = Language.Targeting['forceentrylabel'],
                job = Config.JobSettings.Raid.JobName,
                stash = 'ww_boss_storage',
                forceentry = true
            }
        },
        distance = v.distance,
    })
end
--<!>-- BOSS STORAGE END --<!>--

--<!>-- JOB STORAGE START --<!>--
-- Job storage
for k, v in pairs(Config.JobSettings.Locations.JobStorage) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-whitewidow:client:OpenStash',
                icon = Language.Targeting['jobstorageicon'],
                label = Language.Targeting['jobstoragelabel'],
                job = Config.JobSettings.JobName,
                stash = 'ww_job_storage'
            },
            {
                event = 'boii-whitewidow:client:OpenStash',
                icon = Language.Targeting['forceentryicon'],
                label = Language.Targeting['forceentrylabel'],
                job = Config.JobSettings.Raid.JobName,
                stash = 'ww_job_storage',
                forceentry = true
            }
        },
        distance = v.distance,
    })
end
--<!>-- STASHES START --<!>--
AddEventHandler('boii-whitewidow:client:OpenStash', function(data)
    local player = PlayerPedId()
    if not data.forceentry then
        TriggerEvent('inventory:client:SetCurrentStash', data.stash)
        TriggerServerEvent('inventory:server:OpenInventory', 'stash', data.stash, {
            maxweight = 1000000, -- Adjust storage weight here
            slots = 41, -- Adjust storage slots here
        })
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "StashOpen", 0.4)  
    else
        Core.Functions.Progressbar(data.stash, Language.Shared['forceentry'], Config.JobSettings.Raid.ForceEntryTime*1000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true
        }, {
            animDict = Config.JobSettings.Raid.ForceEntryAnimationDict,
            anim = Config.JobSettings.Raid.ForceEntryAnimation,
            flags = Config.JobSettings.Raid.ForceEntryFlags,
        }, {}, {}, function()
            TriggerEvent('inventory:client:SetCurrentStash', data.stash)
        TriggerServerEvent('inventory:server:OpenInventory', 'stash', data.stash, {
            maxweight = 1000000, -- Adjust storage weight here
            slots = 41, -- Adjust storage slots here
        })
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "StashOpen", 0.4) 
            ClearPedTasks(player)
        end, function()
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-whitewidow:notifications', Language.Shared['cancel'], 'error')
        end)
    end
end)
--<!>-- STASHES END --<!>--
--<!>-- BOSS STORAGE END --<!>--

--<!>-- EPOS START --<!>--
-- EPOS
for k, v in pairs(Config.JobSettings.Locations.EPOS) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:WhiteWidowPay',
            icon = Language.Targeting['eposicon'],
            label = Language.Targeting['eposlabel'],
            job = {[Config.JobSettings.JobName] = 2}
            },
        },
        distance = v.distance,
    })
end
-- Event to charge customers
RegisterNetEvent('boii-whitewidow:client:WhiteWidowPay', function()
    local input = exports[InputName]:ShowInput({
        header = Language.Locations.Billing['paymenuheader'],
        submitText = Language.Locations.Billing['paymenuheadertext'],
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = Language.Locations.Billing['paytext']
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = Language.Locations.Billing['payamount'],
            }
        }
    })
    if input then
        if not input.id or not input.amount then 
            return 
        end
        TriggerServerEvent('boii-whitewidow:server:WhiteWidowPay', input.id, input.amount)
    end
end)
--<!>-- EPOS START --<!>--

--<!>-- STORAGE TRAY START --<!>--
-- Tray storage
for k, v in pairs(Config.JobSettings.Locations.Tray) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:OpenTrayStorage',
            icon = Language.Targeting['traystorageicon'],
            label = Language.Targeting['traystoragelabel'],
            },
        },
        distance = v.distance,
    })
end
-- Tray storage event
RegisterNetEvent('boii-whitewidow:client:OpenTrayStorage', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'wwtraystorage')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'wwtraystorage', {
        maxweight = 21000, -- Adjust storage weight here
        slots = 5, -- Adjust storage slots here
    })
end)
--<!>-- STORAGE TRAY END --<!>--

--<!>-- ROLLING JOINTS START --<!>--
for k, v in pairs(Config.JobSettings.Locations.Rolling) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:RollJointsMenu',
            icon = Language.Targeting['rollingicon'],
            label = Language.Targeting['rollinglabel'],
            job = Config.JobSettings.JobName
            },
        },
        distance = v.distance,
    })
end
--<!>-- JOINTS END --<!>--

--<!>-- STORES START --<!>--
for k, v in pairs(Config.JobSettings.Locations.JobStore) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:OpenJobStore',
            icon = Language.Targeting['jobstoreicon'],
            label = Language.Targeting['jobstorelabel'],
            job = Config.JobSettings.JobName
            },
        },
        distance = v.distance,
    })
end
for k, v in pairs(Config.JobSettings.Locations.SnackTable) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:OpenSnackTable',
            icon = Language.Targeting['snacktableicon'],
            label = Language.Targeting['snacktablelabel']
            },
        },
        distance = v.distance,
    })
end
-- Open job store
RegisterNetEvent('boii-whitewidow:client:OpenJobStore', function()
    local ShopItems = {}
    ShopItems.label = 'wwjobstore'
    ShopItems.items = Config.JobSettings.Stores.JobStore
    ShopItems.slots = #Config.JobSettings.Stores.JobStore
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'wwjobstore', ShopItems)
end)
-- Open snacks
RegisterNetEvent('boii-whitewidow:client:OpenSnackTable', function()
    local ShopItems = {}
    ShopItems.label = 'wwsnacks'
    ShopItems.items = Config.JobSettings.Stores.SnackTable
    ShopItems.slots = #Config.JobSettings.Stores.SnackTable
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'wwsnacks', ShopItems)
end)
--<!>-- STORES END --<!>--

--<!>-- OUTFITS START --<!>--
for k, v in pairs(Config.JobSettings.Locations.Clothing) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:ChangeOutfit',
            icon = Language.Targeting['outfiticon'],
            label = Language.Targeting['outfitlabel'],
            job = Config.JobSettings.JobName
            },
        },
        distance = v.distance,
    })
end
RegisterNetEvent('boii-whitewidow:client:ChangeOutfit', function()
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Clothes1', 0.4)
    TriggerEvent(ClothingEvent)
end)
--<!>-- OUTFITS END --<!>--

--<!>-- TRIMMING START --<!>--
for k, v in pairs(Config.JobSettings.Locations.Trimming) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:TrimmingMenu',
            icon = Language.Targeting['trimicon'],
            label = Language.Targeting['trimlabel'],
            job = Config.JobSettings.JobName
            },
        },
        distance = v.distance,
    })
end
--<!>-- TRIMMING END --<!>--

--<!>-- BONGS START --<!>--
for k, v in pairs(Config.JobSettings.Locations.BongTables) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:BongMenu',
            icon = Language.Targeting['bongicon'],
            label = Language.Targeting['bonglabel'],
            },
        },
        distance = v.distance,
    })
end
--<!>-- BONGS END --<!>--

--<!>-- HARVESTING START --<!>--
-- Strain 1
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain1) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain1',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain1label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 2
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain2) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain2',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain2label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 3
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain3) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain3',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain3label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 4
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain4) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain4',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain4label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 5
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain5) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain5',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain5label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 6
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain6) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain6',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain6label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 7
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain7) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain7',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain7label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
-- Strain 8
for k, v in pairs(Config.JobSettings.Locations.Harvest.Strain8) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:HarvestStrain8',
            icon = Language.Targeting['harvesticon'],
            label = Language.Targeting['strain8label'],
            job = Config.JobSettings.JobName,
            item = Config.JobSettings.Harvest.HarvestItem
            },
        },
        distance = v.distance,
    })
end
--<!>-- HARVESTING END --<!>--

--<!>-- EDIBLES TABLE START --<!>--
-- Targeting
for k, v in pairs(Config.JobSettings.Locations.Edibles) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-whitewidow:client:EdiblesMenu',
            icon = Language.Targeting['ediblesicon'],
            label = Language.Targeting['edibleslabel'],
            },s
        },
        distance = v.distance,
    })
end
-- Prepare edibles
RegisterNetEvent('boii-whitewidow:client:PrepareEdibles', function(args)
    local player = PlayerPedId()
    args = tonumber(args)
    name = ''
    gummy = ''
    gummyamount = ''
    timer = ''
    weedcrop = ''
    cropremove = ''
    item1name = ''
    item1amount = ''
    item2name = ''
    item2amount = ''
    item3name = ''
    item3amount = ''
    ProgressAnimationDict = Config.JobSettings.Edibles.ProgressAnimationDict
    ProgressAnimation = Config.JobSettings.Edibles.ProgressAnimation
    ProgressFlags = Config.JobSettings.Edibles.ProgressFlags
    if args == 1 then
        name = 'ww_edibles_s1'
        gummy = Config.JobSettings.Edibles.Strain1.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain1.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain1.Time
        weedcrop = Config.JobSettings.Harvest.Strain1.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain1.RemoveAmount
        item2name = Config.JobSettings.Edibles.Strain1.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain1.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain1.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain1.RequiredItems['3'].amount
    elseif args == 2 then
        name = 'ww_edibles_s2'
        gummy = Config.JobSettings.Edibles.Strain2.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain2.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain2.Time
        weedcrop = Config.JobSettings.Harvest.Strain2.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain2.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain2.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain2.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain2.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain2.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain2.RequiredItems['3'].amount
    elseif args == 3 then
        name = 'ww_edibles_s3'
        gummy = Config.JobSettings.Edibles.Strain3.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain3.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain3.Time
        weedcrop = Config.JobSettings.Harvest.Strain3.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain3.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain3.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain3.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain3.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain3.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain3.RequiredItems['3'].amount
    elseif args == 4 then
        name = 'ww_edibles_s4'
        gummy = Config.JobSettings.Edibles.Strain4.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain4.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain4.Time
        weedcrop = Config.JobSettings.Harvest.Strain4.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain4.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain4.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain4.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain4.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain4.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain4.RequiredItems['3'].amount
    elseif args == 5 then
        name = 'ww_edibles_s5'
        gummy = Config.JobSettings.Edibles.Strain5.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain5.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain5.Time
        weedcrop = Config.JobSettings.Harvest.Strain5.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain5.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain5.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain5.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain5.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain5.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain5.RequiredItems['3'].amount
    elseif args == 6 then
        name = 'ww_edibles_s6'
        gummy = Config.JobSettings.Edibles.Strain6.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain6.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain6.Time
        weedcrop = Config.JobSettings.Harvest.Strain6.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain6.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain6.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain6.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain6.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain6.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain6.RequiredItems['3'].amount
    elseif args == 7 then
        name = 'ww_edibles_s7'
        gummy = Config.JobSettings.Edibles.Strain7.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain7.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain7.Time
        weedcrop = Config.JobSettings.Harvest.Strain7.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain7.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain7.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain7.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain7.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain7.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain7.RequiredItems['3'].amount
    elseif args == 8 then
        name = 'ww_edibles_s8'
        gummy = Config.JobSettings.Edibles.Strain8.ReturnItem['1'].name
        gummyamount = Config.JobSettings.Edibles.Strain8.ReturnItem['1'].amount
        timer = Config.JobSettings.Edibles.Strain8.Time
        weedcrop = Config.JobSettings.Harvest.Strain8.ReturnItem['1'].name
        cropremove = Config.JobSettings.Edibles.Strain8.RemoveAmount
        item1name = Config.JobSettings.Edibles.Strain8.RequiredItems['1'].name
        item2name = Config.JobSettings.Edibles.Strain8.RequiredItems['2'].name
        item2amount = Config.JobSettings.Edibles.Strain8.RequiredItems['2'].amount
        item3name = Config.JobSettings.Edibles.Strain8.RequiredItems['3'].name
        item3amount = Config.JobSettings.Edibles.Strain8.RequiredItems['3'].amount
    end
    Core.Functions.Progressbar(name, Language.Locations.Edibles['makeedibles'], timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = ProgressAnimationDict,
        anim = ProgressAnimation,
        flags = ProgressFlags,
    }, {}, {}, function()
        TriggerServerEvent('boii-whitewidow:server:RemoveItem', weedcrop, cropremove)
        Wait(200)
        TriggerServerEvent('boii-whitewidow:server:RemoveItem', item2name, item2amount)
        TriggerServerEvent('boii-whitewidow:server:RemoveItem', item3name, item3amount)
        Wait(1000)
        TriggerServerEvent('boii-whitewidow:server:AddItem', gummy, gummyamount)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerClientEvent('boii-whitewidow:notifications', Language.Shared['cancelled'], 'primary')
    end)
end)
-- Eat edibles
RegisterNetEvent('boii-whitewidow:client:EatEdibles', function(args)
    local player = PlayerPedId()
    args = tonumber(args)
    name = ''
    edible = ''
    timer = ''
    armour = ''
    stress = ''
    ProgressAnimationDict = Config.DrugSettings.Edibles.ProgressAnimationDict
    ProgressAnimation = Config.DrugSettings.Edibles.ProgressAnimation
    ProgressFlags = Config.DrugSettings.Edibles.ProgressFlags
    if args == 1 then
        name = 'ww_ediblestrain1'
        edible = Config.JobSettings.Edibles.Strain1.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain1.Time
        armour = Config.DrugSettings.Edibles.Strain1.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain1.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain1.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain1.StessTime
    elseif args == 2 then
        name = 'ww_ediblestrain2'
        edible = Config.JobSettings.Edibles.Strain2.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain2.Time
        armour = Config.DrugSettings.Edibles.Strain2.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain2.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain2.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain2.StessTime
    elseif args == 3 then
        name = 'ww_ediblestrain3'
        edible = Config.JobSettings.Edibles.Strain3.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain3.Time
        armour = Config.DrugSettings.Edibles.Strain3.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain3.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain3.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain3.StessTime
    elseif args == 4 then
        name = 'ww_ediblestrain4'
        edible = Config.JobSettings.Edibles.Strain4.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain4.Time
        armour = Config.DrugSettings.Edibles.Strain4.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain4.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain4.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain4.StessTime
    elseif args == 5 then
        name = 'ww_ediblestrain5'
        edible = Config.JobSettings.Edibles.Strain5.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain5.Time
        armour = Config.DrugSettings.Edibles.Strain5.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain5.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain5.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain5.StessTime
    elseif args == 6 then
        name = 'ww_ediblestrain6'
        edible = Config.JobSettings.Edibles.Strain6.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain6.Time
        armour = Config.DrugSettings.Edibles.Strain6.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain6.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain6.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain6.StessTime
    elseif args == 7 then
        name = 'ww_ediblestrain7'
        edible = Config.JobSettings.Edibles.Strain7.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain7.Time
        armour = Config.DrugSettings.Edibles.Strain7.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain7.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain7.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain7.StessTime
    elseif args == 8 then
        name = 'ww_ediblestrain8'
        edible = Config.JobSettings.Edibles.Strain8.ReturnItem['1'].name
        timer = Config.DrugSettings.Edibles.Strain8.Time
        armour = Config.DrugSettings.Edibles.Strain8.Armour
        armourtimer = Config.DrugSettings.Edibles.Strain8.ArmourTime
        stress = Config.DrugSettings.Edibles.Strain8.Stress
        stresstimer = Config.DrugSettings.Edibles.Strain8.StessTime
    end
    Core.Functions.Progressbar(name, Language.Locations.Edibles['eatedibles'], timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = ProgressAnimationDict,
        anim = ProgressAnimation,
        flags = ProgressFlags,
    }, {}, {}, function()
        if Config.DrugSettings.Edibles.ScreenEffects == true then
            TriggerServerEvent('boii-whitewidow:server:RemoveItem', edible, 1)
            exports['qb-buffs']:AddArmorBuff(armourtimer, armour)
            Citizen.Wait(500)
            exports['qb-buffs']:AddStressBuff(stresstimer, stress)          
            ClearPedTasks(player)
            EdiblesEffect()
        elseif Config.DrugSettings.Edibles.ScreenEffects == false then
            TriggerServerEvent('boii-whitewidow:server:RemoveItem', edible, 1)
            exports['qb-buffs']:AddArmorBuff(armourtimer, armour)
            Citizen.Wait(500)
            exports['qb-buffs']:AddStressBuff(stresstimer, stress)  
            ClearPedTasks(player)
        end
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-whitewidow:notifications', Language.Shared['cancelled'], 'primary')
    end)
end)
-- Spawns table
CreateThread(function()
    RequestModel(`v_ret_fh_kitchtable`)
    while not HasModelLoaded(`v_ret_fh_kitchtable`) do 
        Wait(1) 
    end
    EdibleTable = CreateObject(`v_ret_fh_kitchtable`, 171.95, -234.50, 49.06, false, false, false)
    SetEntityHeading(EdibleTable,340.50)
    FreezeEntityPosition(EdibleTable, true)
end)
--<!>-- EDIBLES END --<!>--

--<!>-- GARAGE START --<!>--
if Config.MLOVersion == 'v1' then
    for k, v in pairs(Config.JobSettings.Locations.V1Garage) do
        exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading= v.heading,
            debugPoly= v.debugPoly,
            minZ = v.minZ,
            maxZ = v.maxZ,
            },{
            options = {
                {
                event = 'boii-whitewidow:client:AccessGarage',
                icon = Language.Targeting['garageicon'],
                label = Language.Targeting['garagelabel'],
                },
            },
            distance = v.distance,
        })
    end
end
RegisterNetEvent('boii-whitewidow:client:RentVehicle', function()
	Core.Functions.TriggerCallback('boii-whitewidow:server:MoneyCheck', function(price)
		if price then
            if Config.MLOVersion == 'v1' then
                Core.Functions.SpawnVehicle(Config.JobSettings.Garage.Vehicle, function(van)
                    SetVehicleNumberPlateText(van, 'WWIDOW')
                    exports[FuelEvent]:SetFuel(van, 100.0)
                    SetEntityHeading(van, Config.JobSettings.Garage.Heading)
                    TaskWarpPedIntoVehicle(PlayerPedId(), van, -1)
                    TriggerEvent('vehiclekeys:client:SetOwner', Core.Functions.GetPlate(van))
                    SetVehicleEngineOn(van, true, true)
                end, Config.JobSettings.Garage.Spawn, true)  
            elseif Config.MLOVersion == 'v2' then
                Core.Functions.SpawnVehicle(Config.JobSettings.Garage.Vehicle, function(van)
                    SetVehicleNumberPlateText(van, 'WWIDOW')
                    exports[FuelEvent]:SetFuel(van, 100.0)
                    SetEntityHeading(van, Config.JobSettings.Garage.V2Garage.Heading)
                    TaskWarpPedIntoVehicle(PlayerPedId(), van, -1)
                    TriggerEvent('vehiclekeys:client:SetOwner', Core.Functions.GetPlate(van))
                    SetVehicleEngineOn(van, true, true)
                end, Config.JobSettings.Garage.V2Garage.Spawn, true)
            end 
		end
	end)
end)
RegisterNetEvent('boii-whitewidow:client:ReturnVehicle', function()
	local player = PlayerPedId()
	if IsPedInAnyVehicle(player) then
        if Config.MLOVersion == 'v1' then
            local van = GetVehiclePedIsIn(player,true) 
            Core.Functions.DeleteVehicle(van)
            SetEntityCoords(player, Config.JobSettings.Garage.Spawn.x, Config.JobSettings.Garage.Spawn.y, Config.JobSettings.Garage.Spawn.z, 0, 0, 0, false) 
            SetEntityHeading(player, Config.JobSettings.Garage.Heading)
            TriggerServerEvent('boii-whitewidow:server:ReturnDeposit')
        elseif Config.MLOVersion == 'v2' then
            local van = GetVehiclePedIsIn(player,true) 
            Core.Functions.DeleteVehicle(van)
            SetEntityCoords(player, Config.JobSettings.Garage.V2Garage.Spawn.x, Config.JobSettings.Garage.V2Garage.Spawn.y, Config.JobSettings.Garage.V2Garage.Spawn.z, 0, 0, 0, false) 
            SetEntityHeading(player, Config.JobSettings.Garage.V2Garage.Heading)
            TriggerServerEvent('boii-whitewidow:server:ReturnDeposit')
        end
	end
end)
--<!>-- VEHICLE RENTAL MENU END --<!>--
