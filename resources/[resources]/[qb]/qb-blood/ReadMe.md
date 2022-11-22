BLOOD SCRIPT FOR QBCORE MADE BY ROMOY#9144
ABILITY TO DO A BLOODTEST IN THE LAB AND GET THE PLAYERS NAME

**INSTALLATION**

(1) Add to qb-core/server/player.lua around line 52 to 62
    PlayerData.charinfo.blood = PlayerData.charinfo.blood ~= nil and PlayerData.charinfo.blood or QBCore.Functions.CreateBloodNumber()

(2) Add to qb-core/server/player.lua around the bottom of it

    function QBCore.Functions.CreateBloodNumber()
    local UniqueFound = false
    local BloodNumber = nil
    while not UniqueFound do
        BloodNumber = math.random(1000000,9999999)
        local query = '%' .. BloodNumber .. '%'
        local result = MySQL.Sync.prepare('SELECT COUNT(*) as count FROM players WHERE metadata LIKE ?', { query })
        if result == 0 then
            UniqueFound = true
        end
    end
    return BloodNumber
end

(3) Add to qb-core/server/players.lua where  function QBCore.Player.Save()

    where INSERT INTO players, add in that line bloodnumber, VALUES :bloodnumber and where DUPLICATE KEY UPDATE bloodnumber = :bloodnumber

    bloodnumber = tonumber(PlayerData.charinfo.blood)

(4) Add to qb-inventory/html/js/app.js at the function FormatItemInfo()

    } else if (itemData.name == "labresults") {
            $(".item-info-title").html('<p>'+itemData.label+'</p>')
            $(".item-info-description").html('<p>'+itemData.description+'</p><p>Blood Test Results: '+itemData.info.data+'</p>');

(5) Add to qb-core/shared/items.lua

['labresults'] 			 		 = {['name'] = 'labresults', 			  			['label'] = 'Lab Results', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'labresults.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Blood Test Results'},

(6) Add to qb-inventory/html/images 

    The image file provided

(7) Run SQL Provided

(8) Enjoy!!!