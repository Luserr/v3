--[[ local QBCore = exports['qb-core']:GetCoreObject()

RPC.register("qpixel-lifer:check", function(pSource)
    local xPlayer = QBCore.Functions.GetPlayer(source)
	local citizenid = QBCore.Functions.GetPlayer(source).PlayerData.citizenid
    exports.oxmysql:execute('SELECT * FROM players WHERE cid = ?', {citizenid}, function(result)
        print(json.encode(result))
        if result[1] then
            if result[1].lifer then
                return true
            else
                return false
            end
        end
    end)
end) ]]
