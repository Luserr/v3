Installations steps for QBus:
1-Open the file in qb-core/server/player.lua

2-Search for the function CheckPlayerData and insert the following line, you can define a diferent rep name in your config file. If you change it replace here too:
   PlayerData.metadata["drugsrep"] = PlayerData.metadata["drugsrep"] ~= nil and PlayerData.metadata["drugsrep"] or 0

PAY ATENTION: IF YOU USE OUR QP-METHLABS OR QP-WEEDPLANTATIONS OR QP-COKE YOU ALREADY HAVE THIS LINE. YOU JUST NEED TO VERIFY IF THE NAME IS THE SAME, IF YOU HAVE A DIFFERENT NAME JUST CHANGE THE NAME IN THE CONFIG FILE

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


4-Check the items in the config and create them in your core or join or discord and ask us for the default items




Installations steps for ESX:
1-Check the items in the config and create them in your core or join or discord and ask us for the default items




IMPORTANT: If you want use the same poppy prop that i used in my youtube video, you need to install this package https://forum.cfx.re/t/free-props-addon-props/4799809