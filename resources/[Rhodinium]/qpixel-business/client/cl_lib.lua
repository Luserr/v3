local QBCore = exports['qb-core']:GetCoreObject()

local EmployedAt, UpdatedAt = {}, 0
local PermissionCache = {}

function RefreshEmploymentList()
    local characterId = QBCore.Functions.GetPlayerData().citizenid
    local employment = RPC.execute("GetEmploymentInformation", characterId)
    EmployedAt, UpdatedAt = {}, GetGameTimer()
    for _, business in ipairs(employment) do
        print(business.business_id)
        if business.business_id then
            EmployedAt[business.business_id] = true
        end
    end
end

exports('RefreshEmploymentList', RefreshEmploymentList)

function IsEmployedAt(pBusiness)
    if (GetGameTimer() - UpdatedAt) > 15 * 60000 then RefreshEmploymentList() end

    return EmployedAt[pBusiness] == true
end

exports('IsEmployedAt', IsEmployedAt)

function HasPermission(pBusiness, pPermission)
    if not PermissionCache[pBusiness] then
        PermissionCache[pBusiness] = {}
    end
    if not PermissionCache[pBusiness][pPermission] or (GetGameTimer() - PermissionCache[pBusiness][pPermission].UpdatedAt) > 15 * 60000 then
        local cid = QBCore.Functions.GetPlayerData().citizenid
        local success = RPC.execute("qpixel-business:hasPermission", pBusiness, pPermission, cid)
        PermissionCache[pBusiness][pPermission] = {
            UpdatedAt = GetGameTimer(),
            hasPermission = success
        }
    end 
    return PermissionCache[pBusiness][pPermission].hasPermission
end

exports('HasPermission', HasPermission)

-- On player spawn do this - and when opening the phone.
RegisterNetEvent('qpixel-spawn:characterSpawned')
AddEventHandler('qpixel-spawn:characterSpawned', function()
    RefreshEmploymentList()
end)

RegisterNetEvent('qpixel-spawn:phonerefresh')
AddEventHandler('qpixel-spawn:phonerefresh', function()
    RefreshEmploymentList()
end)

RegisterCommand("hotreload", function()
    RefreshEmploymentList()
end)
 
-- this event gets triggered whenever you get fired from a job. and your in the city
RegisterNetEvent('qpixel-business:employmentStatus')
AddEventHandler('qpixel-business:employmentStatus', function(pBusiness, pEmployed)
    EmployedAt[pBusiness] = pEmployed
end)