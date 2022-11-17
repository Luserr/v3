local QBCore = exports['qb-core']:GetCoreObject()
local blueteam = {}
local redteam = {}
local Rteam = 0
local Bteam = 0
local maxTeam = Config.MaxTeam
local allplayers = {}
local spectateplayers = {}
local gameStarted = false
local placementred = 0
local placementblue = 0
local lives = 0
local cashprize = Config.MinWager
local richplayers = 0
local arena = 'random'

local function round(x)
    return x>=0 and math.floor(x+0.5) or math.ceil(x-0.5)
end

local function CheckToEndGame()
	local Rteam = (#redteam)
	local Bteam = (#blueteam)
	if Rteam <= 0 then
		for k, v in pairs(allplayers) do
			TriggerClientEvent('QBCore:Notify', v, 'Blue team won!')
			TriggerClientEvent('Pug:paintball:removeFromArena',v)
		end
		if cashprize > 0 then
			for k, v in pairs(blueteam) do
				local Players = QBCore.Functions.GetPlayer(v)
				local prize = round(cashprize * (#allplayers) / (#blueteam) * 0.85)
				print('blue team won $', prize)
				Players.Functions.AddMoney('cash', prize)
			end
		end
		Wait(500)
		spectateplayers = {}
		blueteam = {}
		redteam = {}
		allplayers = {}
		gameStarted = false
		placementred = 0
		placementblue = 0
		richplayers = 0
		lives = 0
	elseif Bteam <= 0 then
		for k, v in pairs(allplayers) do
			TriggerClientEvent('QBCore:Notify', v, 'Red team won!')
			TriggerClientEvent('Pug:paintball:removeFromArena',v)
		end
		if cashprize > 0 then
			for k, v in pairs(redteam) do
				local Players = QBCore.Functions.GetPlayer(v)
				local prize = round(cashprize * (#allplayers) / (#redteam) * 0.85)
				print('red team won $', prize)
				Players.Functions.AddMoney('cash', prize)
			end
		end
		Wait(500)
		spectateplayers = {}
		blueteam = {}
		redteam = {}
		allplayers = {}
		gameStarted = false
		placementred = 0
		placementblue = 0
		richplayers = 0
		lives = 0
	end
end

local function RemoveAllFromArena()
	for k, v in pairs(allplayers) do
		TriggerClientEvent('QBCore:Notify', v, 'Everyone has been refunded!')
		TriggerClientEvent('Pug:paintball:removeFromArena',v)
	end
	if cashprize > 0 then
		for k, v in pairs(allplayers) do
			local Players = QBCore.Functions.GetPlayer(v)
			print('Everyone has been refunded $', cashprize)
			Players.Functions.AddMoney('cash', cashprize)
		end
	end
	Wait(500)
	spectateplayers = {}
	blueteam = {}
	redteam = {}
	allplayers = {}
	gameStarted = false
	placementred = 0
	placementblue = 0
	richplayers = 0
	lives = 0
end

QBCore.Functions.CreateCallback('Pug:SVCB:VrVheckIfInPaintBall', function(source, cb)
    local src = source
	local IsIn = false
	for k, v in pairs(allplayers) do
		if v == src then
			IsIn = true
		end
	end
	Wait(100)
	cb(IsIn)
end)

QBCore.Functions.CreateCallback('Pug:SVCB:GetLobbyDetails', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local Rteam = (#redteam)
	local Bteam = (#blueteam)
	local lobby = {}
	local playred = nil
	local playblue = nil
	local playreddisplay = {}
	local playbluedisplay = {}
	if (#allplayers) >= 1 then
		if Rteam >= 1 and Bteam == 0 then
			for k,v in pairs(redteam) do
				playred = QBCore.Functions.GetPlayer(v)
				if playred ~= nil then
					playreddisplay[#playreddisplay+1] = playred.PlayerData.charinfo.firstname
				end
			end
			lobby = {
				life = lives,
				redT = Rteam,
				blueT = Bteam,
				playsred = playreddisplay,
				playsblue = '0/8',
				amount = cashprize,
				map = arena,
			}
		elseif Bteam >= 1 and Rteam == 0 then
			for k,v in pairs(blueteam) do
				playblue = QBCore.Functions.GetPlayer(v)
				if playblue ~= nil then
					playbluedisplay[#playbluedisplay+1] = playblue.PlayerData.charinfo.firstname
				end
			end
			lobby = {
				life = lives,
				redT = Rteam,
				blueT = Bteam,
				playsred = '0/8',
				playsblue = playbluedisplay,
				amount = cashprize,
				map = arena,
			}
		elseif Bteam >= 1 and Rteam >= 1 then
			for k,v in pairs(blueteam) do
				playblue = QBCore.Functions.GetPlayer(v)
				if playblue ~= nil then
					playbluedisplay[#playbluedisplay+1] = playblue.PlayerData.charinfo.firstname
				end
			end
			for k,v in pairs(redteam) do
				playred = QBCore.Functions.GetPlayer(v)
				if playred ~= nil then
					playreddisplay[#playreddisplay+1] = playred.PlayerData.charinfo.firstname
				end
			end
			lobby = {
				life = lives,
				redT = Rteam,
				blueT = Bteam,
				playsred = playreddisplay,
				playsblue = playbluedisplay,
				amount = cashprize,
				map = arena,
			}
		end
	else
		lobby = {
			life = lives,
			redT = Rteam,
			blueT = Bteam,
			amount = cashprize,
			map = arena,
		}
	end
	cb(lobby)
end)

QBCore.Functions.CreateCallback('Pug:serverCB:Checkongoinggame', function(source, cb)
	cb(gameStarted)
end)

RegisterNetEvent("Pug:server:DeleteClonePaintball", function(owner, entity)
    TriggerClientEvent("Pug:DeleteClonePaintball", source, owner, entity)
end)
RegisterServerEvent('Pug:SV:SetlivesOfPlayers',function(lifeNum)
	lives = lifeNum
	for k, v in pairs(allplayers) do
		TriggerClientEvent('QBCore:Notify', v, lives..' lives per player has been set!')
	end
end)
RegisterServerEvent('Pug:SV:SetArenaMap',function(arenaMap)
	if arenaMap == 'random' then
		arena = 'random'
		for k, v in pairs(allplayers) do
			TriggerClientEvent('QBCore:Notify', v, 'Map has been set to random')
		end
	else
		arena = Config.Arenas[arenaMap].map
		for k, v in pairs(allplayers) do
			TriggerClientEvent('QBCore:Notify', v, 'Map has been set to '..Config.Arenas[arenaMap].name)
		end
	end
end)
RegisterServerEvent('Pug:SV:SetWagerOfLobby',function(WageNum)
	cashprize = WageNum
	for k, v in pairs(allplayers) do
		TriggerClientEvent('QBCore:Notify', v, '$'..cashprize..' has been set for the prize pool!')
	end
end)

RegisterServerEvent('Pug:SV:AddItem',function(item,amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(item, amount, false)
end)

RegisterServerEvent('Pug:SV:RemoveItem',function(item,amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.RemoveItem(item, amount, false)
end)

QBCore.Functions.CreateCallback('Pug:SVCB:Specatateplayers', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
	local info = {}
	if gameStarted then
		if (#spectateplayers) >= 1 then
			for k, v in pairs(spectateplayers) do
				local targetped = GetPlayerPed(v)
				local ped = QBCore.Functions.GetPlayer(v)
				table.insert(info, {
					coords = GetEntityCoords(targetped),
					name = ped.PlayerData.charinfo.firstname,
                    id = v,
                })
			end
		else
			cb(false)
			TriggerClientEvent('QBCore:Notify', src, 'There are no players in game')
		end
	else
		cb(false)
		TriggerClientEvent('QBCore:Notify', src, 'A game needs to be ongoing to spectate')
	end
	cb(info)
end)

RegisterServerEvent('Pug:SV:NotifyLivesLeft',function(lifeLeft)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	for k, v in pairs(allplayers) do
		TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' has '..lifeLeft..' lives left')
		TriggerClientEvent("Pug:client:PlayerKilledNotification", v)
	end
end)
RegisterServerEvent('Pug:paintball:Leave',function(team)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if team == 'redteam' then
		for k, v in pairs(allplayers) do
			if v == src then
				table.remove(allplayers,k)
			end
			TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' left the red team!', 'error')
			TriggerClientEvent("Pug:client:PlayerKilledNotification", v)
		end
		for k,v in pairs(redteam) do
			if v == src then
				placementred = placementred - 1
				table.remove(redteam,k)
			end
		end
		for k,v in pairs(spectateplayers) do
			if v == src then
				table.remove(spectateplayers,k)
			end
		end
		TriggerClientEvent('Pug:paintball:removeFromArena',src)
	else
		for k, v in pairs(allplayers) do
			if v == src then
				table.remove(allplayers,k)
			end
			TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' left the blue team!', 'error')
			TriggerClientEvent("Pug:client:PlayerKilledNotification", v)
		end
		for k,v in pairs(blueteam) do
			if v == src then
				placementblue = placementblue - 1
				table.remove(blueteam,k)
			end
		end
		for k,v in pairs(spectateplayers) do
			if v == src then
				table.remove(spectateplayers,k)
			end
		end
		TriggerClientEvent('Pug:paintball:removeFromArena', src)
	end
	local Rteam = (#redteam)
	local Bteam = (#blueteam)
	if Rteam <= 0 and Bteam <= 0 then
		spectateplayers = {}
		blueteam = {}
		redteam = {}
		allplayers = {}
		gameStarted = false
		placementred = 0
		placementblue = 0
		lives = 0
	end
end)

AddEventHandler('playerDropped', function()
    local src = source
    -- local ped = GetPlayerPed(src)
	local PlayerLost = false
	for k, v in pairs(allplayers) do
		if v == src then
			local Player = QBCore.Players[src]
			if Player ~= nil then  else Player = QBCore.Functions.GetPlayer(src) end
			PlayerLost = true
			table.remove(allplayers,k)
			for i, j in pairs(allplayers) do
				TriggerClientEvent('QBCore:Notify', j, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' Lagged out!', 'error')
				TriggerClientEvent("Pug:client:PlayerKilledNotification", j)
			end
		end
	end
	Wait(550)
	if PlayerLost then
		for k,v in pairs(blueteam) do
			if v == src then
				table.remove(blueteam,k)
				placementblue = placementblue - 1
			end
		end
		Wait(100)
		for k,v in pairs(redteam) do
			if v == src then
				table.remove(redteam,k)
				placementred = placementred - 1
			end
		end
		Wait(100)
		for k,v in pairs(spectateplayers) do
			if v == src then
				table.remove(spectateplayers,k)
			end
		end
		Wait(100)
		CheckToEndGame()
	end
end)

RegisterServerEvent('Pug:paintball:JoinTeam',function(team)
	local _source = source
	local Player = QBCore.Functions.GetPlayer(source)
	local team = team
	local Rteam = (#redteam)
	local Bteam = (#blueteam)
	if team == 'redteam' then
		if Rteam < maxTeam then
			table.insert(redteam,source)
			table.insert(allplayers,source)
			table.insert(spectateplayers,source)
			placementred = placementred + 1
			TriggerClientEvent('Pug:paintball:joinedTeam',_source,team,placementred)
			for k, v in pairs(allplayers) do
				TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' joined the red team!', 'error')
			end
		else
			TriggerClientEvent('QBCore:Notify', source, 'Team is full', 'error')
		end
	else
		if Bteam < maxTeam then
			table.insert(blueteam,source)
			table.insert(allplayers,source)
			table.insert(spectateplayers,source)
			placementblue = placementblue + 1
			TriggerClientEvent('Pug:paintball:joinedTeam',_source,team,placementblue)
			for k, v in pairs(allplayers) do
				TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' joined the blue team!')
			end
		else
			TriggerClientEvent('QBCore:Notify', source, 'Team is full', 'error')
		end
	end
end)

RegisterServerEvent('Pug:paintball:RemovePlayer',function(team)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent('Pug:paintball:removeFromArena',src)
	if team == 'redteam' then
		for k,v in pairs(redteam) do
			if v == src then
				-- table.remove(redteam,k)
				for i,j in pairs(spectateplayers) do
					if j == src then
						table.remove(spectateplayers,i)
					end
				end
				placementred = placementred - 1
				for k, v in pairs(allplayers) do
					if placementred >= 1 then
						TriggerClientEvent('InteractSound_CL:PlayOnOne', v, "eliminated", 0.5)
						TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' has been eliminated!')
						Wait(1000)
						TriggerClientEvent('QBCore:Notify', v, placementred..' players left on the red team!')
						-- TriggerClientEvent("Pug:client:PlayerKilledNotification", v)
					else
						-- TriggerClientEvent("Pug:client:AllPlayersKilledNotification", v)
						TriggerClientEvent('InteractSound_CL:PlayOnOne', v, "redteam", 0.5)
					end
				end
			end
		end
	else
		for k,v in pairs(blueteam) do
			if v == src then
				-- table.remove(blueteam,k)
				for i,j in pairs(spectateplayers) do
					if j == src then
						table.remove(spectateplayers,i)
					end
				end
				placementblue = placementblue - 1
				for k, v in pairs(allplayers) do
					if placementblue >= 1 then
						TriggerClientEvent('InteractSound_CL:PlayOnOne', v, "eliminated", 0.5)
						TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..' has been eliminated!')
						Wait(1000)
						TriggerClientEvent('QBCore:Notify', v, placementblue..' players left on the blue team!')
						-- TriggerClientEvent("Pug:client:PlayerKilledNotification", v)
					else
						-- TriggerClientEvent("Pug:client:AllPlayersKilledNotification", v)
						TriggerClientEvent('InteractSound_CL:PlayOnOne', v, "blueteam", 0.5)
					end
				end
			end
		end
	end
	local Rteam = (#redteam)
	local Bteam = (#blueteam)
	if placementred <= 0 then
		for k, v in pairs(allplayers) do
			TriggerClientEvent('QBCore:Notify', v, 'Blue team won!')
			if v == src then
			else
				TriggerClientEvent('Pug:paintball:removeFromArena',v)
			end
		end
		if cashprize > 0 then
			for k, v in pairs(blueteam) do
				local Players = QBCore.Functions.GetPlayer(v)
				local prize = round(cashprize * (#allplayers) / (#blueteam) * 0.85)
				print('blue team won $', prize)
				Players.Functions.AddMoney('cash', prize)
			end
		end
		Wait(500)
		spectateplayers = {}
		blueteam = {}
		redteam = {}
		allplayers = {}
		gameStarted = false
		placementred = 0
		placementblue = 0
		richplayers = 0
		lives = 0
	elseif placementblue <= 0 then
		for k, v in pairs(allplayers) do
			TriggerClientEvent('QBCore:Notify', v, 'Red team won!')
			if v == src then
			else
				TriggerClientEvent('Pug:paintball:removeFromArena',v)
			end
		end
		if cashprize > 0 then
			for k, v in pairs(redteam) do
				local Players = QBCore.Functions.GetPlayer(v)
				local prize = round(cashprize * (#allplayers) / (#redteam) * 0.85)
				print('red team won $', prize)
				Players.Functions.AddMoney('cash', prize)
			end
		end
		Wait(500)
		spectateplayers = {}
		blueteam = {}
		redteam = {}
		allplayers = {}
		gameStarted = false
		placementred = 0
		placementblue = 0
		richplayers = 0
		lives = 0
	end
	return
end)
local function moneycheck(players)
	local Player = players
	if Player.PlayerData.money["cash"] >= cashprize then
		richplayers = richplayers + 1
		return true
	end
	richplayers = richplayers - 1
	for k, v in pairs(allplayers) do
		TriggerClientEvent('QBCore:Notify', v, Player.PlayerData.charinfo.firstname .. ' '.. Player.PlayerData.charinfo.lastname ..'is missing '.. cashprize - Player.PlayerData.money["cash"])
	end
	return false
end
RegisterServerEvent('Pug:paintball:startGame',function()
	if (#redteam) >= 1 and (#blueteam) >= 1 or Config.RequirePlayersOnBothTeams then
		if not gameStarted then
			if cashprize > 0 then
				for k, v in pairs(allplayers) do
					local Player = QBCore.Functions.GetPlayer(v)
					moneycheck(Player)
					if richplayers >= (#allplayers) then
						gameStarted = true
						if arena == 'random' then
							arena = Config.Arenas[math.random(#Config.Arenas)].map
						end
						for k, v in pairs(blueteam) do
							TriggerClientEvent('Pug:paintball:tpToLocation',v,arena,lives)
						end
			
						for k, v in pairs(redteam) do
							TriggerClientEvent('Pug:paintball:tpToLocation',v,arena,lives)
						end
						for k, v in pairs(allplayers) do
							local Players = QBCore.Functions.GetPlayer(v)
							Players.Functions.RemoveMoney('cash', cashprize)
						end
					end
				end
			else
				gameStarted = true
				if arena == 'random' then
					arena = Config.Arenas[math.random(#Config.Arenas)].map
				end
				print(map)
				for k, v in pairs(blueteam) do
					TriggerClientEvent('Pug:paintball:tpToLocation',v,arena,lives)
				end
	
				for k, v in pairs(redteam) do
					TriggerClientEvent('Pug:paintball:tpToLocation',v,arena,lives)
				end
			end
		else
			TriggerClientEvent('QBCore:Notify', source, 'A game is already started')
		end
		richplayers = 0
	else
		TriggerClientEvent('QBCore:Notify', source, 'Needs to be at least 1 player per team', 'error')
	end
end)

QBCore.Functions.CreateUseableItem('paint_ammo', function(source, item)
    TriggerClientEvent('weapon:client:AddAmmo', source, 'AMMO_PAINT', 50, item)
end)

RegisterServerEvent('Pug:server:SavePaintballItems')
AddEventHandler('Pug:server:SavePaintballItems', function(jailTime)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = 10
    if Player.PlayerData.metadata["gameitems"] == nil or next(Player.PlayerData.metadata["gameitems"]) == nil then 
        Player.Functions.SetMetaData("gameitems", Player.PlayerData.items)
        Wait(2000)
        Player.Functions.ClearInventory()
    end
end)
RegisterServerEvent('Pug:server:GivePaintballItems')
AddEventHandler('Pug:server:GivePaintballItems', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	-- Player.Functions.ClearInventory()
    Wait(1000)
    for k, v in pairs(Player.PlayerData.metadata["gameitems"]) do
        Player.Functions.AddItem(v.name, v.amount, false, v.info)
    end
    Wait(1000)
    Player.Functions.SetMetaData("gameitems", {})
end)