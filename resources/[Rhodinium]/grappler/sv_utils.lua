-- Add your Discord webhook here if you have enabled logging
logging.webhook = ""

-- These setup the foundations for ESX / vRP / QBCore permissions
if grapplerCommand.ESX.enabled then
    ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

if grapplerCommand.vRP.enabled then
    Proxy = module("vrp", "lib/Proxy")
    vRP = Proxy.getInterface("vRP")
end

if grapplerCommand.QBCore.enabled then
    QBCore = exports["qb-core"]:GetCoreObject()
end
-- End of permissions setup

function userHasPermission(source, location)
    local permission = false
    local usingPermissions = false
    -- Ace Permissions
    if location.acePermissions.enabled then
        usingPermissions = true
        -- Ace Permission Validation (if enabled in config)
        if IsPlayerAceAllowed(source, "command."..location.commandName) then
            permission = true
        end
    end

    -- ESX Permissions
    if location.ESX.enabled then
        local xPlayer = ESX.GetPlayerFromId(source)
        if location.ESX.checkJob.enabled then
            usingPermissions = true
            for k, v in pairs(location.ESX.checkJob.jobs) do
                if xPlayer.job.name == v then
                    permission = true
                end
            end
        end
    end

    -- vRP Permission
    if location.vRP.enabled then
        if location.vRP.checkPermission.enabled then
            usingPermissions = true
            for k, v in pairs(location.vRP.checkPermission.permissions) do
                if vRP.hasPermission({vRP.getUserId({source}),v}) then
                    permission = true
                end
            end
        end

        if location.vRP.checkGroup.enabled then
            usingPermissions = true
            for k, v in pairs(location.vRP.checkGroup.groups) do
                if vRP.hasGroup({vRP.getUserId({source}),v}) then
                    permission = true
                end
            end
        end
    end

    -- QBCore Permission
    if location.QBCore.enabled then
        local player = QBCore.Functions.GetPlayer(source)
        if location.QBCore.checkJob.enabled then
            usingPermissions = true
            for k, v in pairs(location.QBCore.checkJob.jobs) do
                if player.PlayerData.job.name == v then
                    permission = true
                end
            end
        end
        if location.QBCore.checkPermission.enabled then
            usingPermissions = true
            for k, v in pairs(location.QBCore.checkPermission.permissions) do
                if QBCore.Functions.HasPermission(source, v) then
                    permission = true
                end
            end
        end
    end

    if not usingPermissions then
        permission = true
    end
    return permission
end

-- This handles the Discord logging system
function normalLog(source, action, data)
    if not logging.enabled then return nil end
    local embed = {
        {
            ["fields"] = {
              {
                  ["name"] = "**Player:**",
                  ["value"] = GetPlayerName(source).." ("..source..")",
                  ["inline"] = true
              },
              {
                  ["name"] = "**Action:**",
                  ["value"] = action,
                  ["inline"] = false
              },
              {
                  ["name"] = "**Data:**",
                  ["value"] = tostring(data),
                  ["inline"] = false
              },
            },
            ["color"] = logging.colour,
            ["title"] = logging.title,
            ["description"] = "",
            ["footer"] = {
                ["text"] = "Timestamp: "..os.date(logging.dateFormat),
                ["icon_url"] = logging.footerIcon,
            },
            ["thumbnail"] = {
                ["url"] = logging.icon,
            },
        }
    }
    PerformHttpRequest(logging.webhook, function(err, text, headers) end, 'POST', json.encode({username = logging.displayName, embeds = embed}), { ['Content-Type'] = 'application/json' })
end