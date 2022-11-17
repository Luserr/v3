Installations steps for QBus:
1-Open the file in qb-core/server/player.lua

2-Search for the function CheckPlayerData and insert the following line, you can define a diferent rep name in your config file. If you change it replace here too:
   PlayerData.metadata["drugsrep"] = PlayerData.metadata["drugsrep"] ~= nil and PlayerData.metadata["drugsrep"] or 0

3-If you want the addon map that we show in the video, open a discord ticket

