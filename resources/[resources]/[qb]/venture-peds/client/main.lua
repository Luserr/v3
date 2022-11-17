local QBCore = exports['qb-core']:GetCoreObject();
local ped = PlayerPedId()

RegisterNetEvent('venture_peds:client:RegisterMenu', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local name = PlayerData.name
    local citizenid = PlayerData.citizenid
    reginfo = exports['qb-input']:ShowInput({
        header = "Register New Ped",
        inputs = {
            {
                text = "Citizen ID",
                name = 'citid',
                type = 'text',
                isRequired = true
            },
            {
                text = "Model Name",
                name = 'pedmodel',
                type = 'text',
                isRequired = true
            },
        }
    })
    if reginfo == nil then
        return
    end
    TriggerServerEvent('qb-log:server:CreateLog', 'bossmenu', 'New Registered Ped', 'blue', string.format('** '..name..'** **(citizenid: '..citizenid..'** Registered the ped '..reginfo.pedmodel..' for (citizenid: '..reginfo.citid..' and was successfully inputed in the database', true))
    QBCore.Functions.Notify('Ped was successfully registered', 'success')
    TriggerServerEvent('venture_peds:server:RegisterPed', reginfo.citid, reginfo.pedmodel)
end)

RegisterNetEvent('venture_peds:client:PedSet', function(ped, model)
    if IsModelInCdimage(model) and IsModelValid(model) then
    RequestModel(model)
    while not HasModelLoaded(model) do
         Citizen.Wait(0)
    end
end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    QBCore.Functions.Notify('The Model '..model..' was successfully loaded', 'success')
    print('Ped changed')
end)

RegisterNetEvent('venture_peds:client:RequestModelChange', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local citizenid = PlayerData.citizenid
    inputinfo = exports['qb-input']:ShowInput({
        header = 'Change Ped',
        inputs = {
            {
                text = "Ped Model Name",
                name = 'model',
                type = 'text',
                isRequired = true
            },
        }
    })
    if inputinfo == nil then
        return
    end
    TriggerServerEvent('venture_peds:server:PedCheck', citizenid, inputinfo.model)
end)

exports['qb-target']:AddBoxZone('donatorpeds', vector3(69.773696, -1389.133, 29.378423), 1, 1, {
    name='donatorpeds',
    heading=57.45,
    debugPoly=false,
    minZ = 27.04,
    maxZ = 31.64,
    }, {
        options = {
            {
                type = 'client',
                event = 'venture_peds:client:RequestModelChange',
                icon = 'fas fa-user',
                label = 'Change Ped (Donator Only)',
            },
        },
    distance = 1.5
})