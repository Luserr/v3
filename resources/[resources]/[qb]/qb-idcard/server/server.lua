local QBCore = exports['qb-core']:GetCoreObject()

local ShowId = function(source, item, nui)
    local src = source
    local found = false
    local character = QBCore.Functions.GetPlayer(src)
    local PlayerPed = GetPlayerPed(src)
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local info = {
        ['name'] = item.info.firstname,
        ['lastname'] = item.info.lastname,
        ['gender'] = item.info.gender,
        ['dob'] = item.info.birthdate,
        ['nationality'] = item.info.nationality,
        ['type'] = item.info.type
    }
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local TargetPed = GetPlayerPed(v)
        local dist = #(PlayerCoords - GetEntityCoords(TargetPed))
        if dist < 3.0 and PlayerPed ~= TargetPed then
            TriggerClientEvent('QBCore:Notify', src, "You showed your idcard")
            TriggerClientEvent('qb-idcard:client:open', v, info, nui)
            found = true
            break
        end
    end
    if not found then TriggerClientEvent('qb-idcard:client:open', src, info, nui) end
    if nui == 'policecard' then TriggerClientEvent('qb-idcard:client:policebadgeanim', src) end
end

local ShowIdCit = function(source, item, nui)
    local src = source
    --local fuck = json.decode(itemInfo)
    local data = {
        ['DOB'] = item.info.birthdate,
        ['Name'] = item.info.firstname,
        ['Surname'] = item.info.lastname,
        ['Sex'] = item.info.gender,
        ['Identifier'] = item.info.citizenid,
        ['pref'] = "sex"
    } 

    if item.info.gender == 0 then
        data = {
            ['DOB'] = item.info.birthdate, 
            ['Name'] = item.info.firstname,
            ['Surname'] = item.info.lastname,
            ['Sex'] = "M",
            ['Identifier'] = item.info.citizenid,
            ['pref'] = "Male"
        }
    elseif item.info.gender == 1 then
        data = {
            ['DOB'] = item.info.birthdate,
            ['Name'] = item.info.firstname,
            ['Surname'] = item.info.lastname,
            ['Sex'] = "F",
            ['Identifier'] = item.info.citizenid,
            ['pref'] = "Female"
        }
    end
    TriggerClientEvent("chat:showCID", -1, data, src)
end

QBCore.Functions.CreateUseableItem("id_card", function(source,item)
    ShowIdCit(source, item, 'idcard')
end)

QBCore.Functions.CreateUseableItem("driver_license", function(source,item)
    ShowId(source, item, 'driverlicense')
end)

QBCore.Functions.CreateUseableItem("weaponlicense", function(source,item)
    ShowId(source, item, 'weaponlicense')
end)

QBCore.Functions.CreateUseableItem("lawyerpass", function(source,item)
    ShowId(source, item, 'lawyerpass')
end)

QBCore.Functions.CreateUseableItem("policecard", function(source,item)
    ShowId(source, item, 'policecard')
end)
