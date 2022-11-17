Installations steps for QBus:
1-Open the file in qb-core/server/player.lua

2-Search for the function CheckPlayerData and insert the following line:
   PlayerData.metadata["moneylaundryrep"] = PlayerData.metadata["moneylaundryrep"] ~= nil and PlayerData.metadata["moneylaundryrep"] or 0


3-Open you QB-core in the file qb-core/server/player.lua and paste the following function code inside the function QBCore.Player.CreatePlayer

   function self.Functions.GetItemsAmountByName(item)
		local item = tostring(item):lower()
		local amount = 0
		local slots = QBCore.Player.GetSlotsByItem(self.PlayerData.items, item)
		for _, slot in pairs(slots) do
			if slot ~= nil then
				amount += self.PlayerData.items[slot].amount
			end
		end
		return amount
	end