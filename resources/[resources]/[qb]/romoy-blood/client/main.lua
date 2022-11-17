local QBCore = exports['qb-core']:GetCoreObject()

local ped = PlayerPedId()

local inlabtest = false

local claimed = false

local claimable = false

RegisterNetEvent('romoy:client:blood:BloodData', function()
    if inlabtest == false then 
    bloodnumber = exports['qb-input']:ShowInput({
        header = 'Blood Number',
        inputs = {
            { 
                text = 'Blood Number',
                name = 'blood',
                type = 'number',
                isRequired = true
            },
        }
    })
    if bloodnumber == nil then
        QBCore.Functions.Notify('No data inputed', 'error')
        return
    end

    LocalPlayer.state:set("inv_busy", true, true)
    QBCore.Functions.Progressbar('bloodtest', 'Setting Up Lab Test', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_vehicle_mechanic@male@base',
        anim = 'base',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        QBCore.Functions.Notify('Lab Test Will be completed in 15 Minutes', 'primary')
        inlabtest = true
        LocalPlayer.state:set("inv_busy", false, true)
        Citizen.Wait(120000)

        QBCore.Functions.Notify('Results are ready for pickup', 'primary')
        claimable = true

    exports['qb-target']:AddBoxZone('labpickup', vector3(486.65603, -993.3469, 30.6898), 1, 1, {
        name='labpickup',
        heading=57.45,
        debugPoly=false,
        minZ = 27.04,
        maxZ = 32.64,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'romoy:client:ItemPickup',
                    icon = 'fas fa-laptop',
                    label = 'Pickup Lab Results',
                    job = Shared.Job
                },
            },
        distance = 1.5
    })
    inlabtest = false
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Lab Test Cancelled', 'error')
    end)
else
    if inlabtest == true then
        QBCore.Functions.Notify('There is already a lab test being processed', 'error')
    end
    end
end)

RegisterNetEvent('romoy:client:ItemPickup', function()
    if claimable == false  then
        QBCore.Functions.Notify('Nothing to Claim', 'error')
    else
        if claimable == true then
        TriggerServerEvent('romoy:server:BloodCheck', bloodnumber.blood)
        claimable = false
        end
    end
end)

exports['qb-target']:AddBoxZone('policebloodtest', vector3(483.75738, -987.9705, 30.689805), 1, 1, {
    name='policebloodtest',
    heading=57.45,
    debugPoly=false,
    minZ = 28.04,
    maxZ = 32.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'romoy:client:blood:BloodData',
                icon = 'fas fa-tint',
                label = 'Blood Test',
                job = Shared.Job
            },
        },
    distance = 1.5
})

