local JVF = JAM.VehicleFinance
local JVS = JAM.VehicleShop

JVF.PlayerTable = {}

ESX.RegisterServerCallback('JAM_VehicleFinance:CheckFunds', function(source, cb, financeAmount, lastVeh)	
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do Citizen.Wait(0); ESX.GetPlayerFromId(source); end
	if not JVS or not JVS.ShopData then return; end
	local model = lastVeh.veh
	local newPrice, profit
	for k,v in pairs(JVS.ShopData) do
		for k,v in pairs(v) do
			if model == v.model then
				newPrice = v.price
				if v.profit then profit = v.profit; end
			end
		end
	end
	if profit then 
		newVal = (newPrice + (newPrice * (profit / 100))) * (financeAmount / 100)
		newPrice = newPrice + (newPrice * (profit / 100))
	else
		newVal = (newPrice) * (financeAmount / 100)
	end
	if xPlayer.getMoney() >= newVal then cbData = true;
	else cbData = false
	end
	cb(cbData, newVal, newPrice)
end)

RegisterNetEvent('JAM_VehicleFinance:CompletePurchase')
AddEventHandler('JAM_VehicleFinance:CompletePurchase', function(vehicleProps, downpay, price)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do Citizen.Wait(0); ESX.GetPlayerFromId(source); end
	xPlayer.removeMoney(downpay)
	local repayTime = JVF.MaxRepayTime * 60
	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, finance, financetimer, vehicle, retailprice) VALUES (@owner, @plate, @finance, @financetimer, @vehicle, @retailprice)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@finance'] = price - downpay,
		['@financetimer'] = repayTime,
		['@vehicle'] = json.encode(vehicleProps),
		['@retailprice'] = price
	})
	local name = "PIG"
	local car = vehicleProps.name

	local message = "You just financed a " .. car .." with the plate " ..vehicleProps.plate .. ". You should store this car in a garage immediately."

	TriggerClientEvent('phone:addnotification', source, name, message)
end)



RegisterNetEvent('JAM_VehicleFinance:PlayerDropped')
AddEventHandler('JAM_VehicleFinance:PlayerDropped', function(startTime)
	local xPlayer = ESX.GetPlayerFromId(source)
	local tick = 0
	while not xPlayer and tick < 100 do
		Citizen.Wait(0)
		tick = tick + 1
		xPlayer = ESX.GetPlayerFromId(source)
	end

	local data = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE owner=@owner',{['@owner'] = xPlayer.getIdentifier()})
	if not data then return; end

	local curTime =  ((GetGameTimer() / 1000) / 60) - startTime
	for k,v in pairs(data) do
		if v.finance > 0 then
			MySQL.Async.execute('UPDATE owned_vehicles SET financetimer=@financetimer WHERE plate=@plate',{['@financetimer'] = v.financetimer - curTime, ['@plate'] = v.plate})
		end
	end
end)

RegisterNetEvent('JAM_VehicleFinance:MarkVehicles')
AddEventHandler('JAM_VehicleFinance:MarkVehicles', function(vehicles)
	TriggerClientEvent('JAM_VehicleFinance:MarkForRepo', -1, vehicles)
end)

ESX.RegisterServerCallback('JAM_VehicleFinance:RepoVehicle', function(source,cb,vehicleProps)
	local data = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE plate=@plate',{['@plate'] = vehicleProps.plate})
	if not data or not data[1] then return; end
	local cbData = false
	for k,v in pairs(data) do
		if v.finance > 0 and v.financetimer <= 0 then cbData = true; end
	end	
	cb(cbData)
end)

ESX.RegisterServerCallback('JAM_VehicleFinance:RepoVehicleEnd', function(source, cb, vehicle)
	while not xPlayer do Citizen.Wait(10); xPlayer = ESX.GetPlayerFromId(source); end
	local canDel = true
	local val = 0
	local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE plate=@plate",{['@plate'] = vehicle.plate})	
	local account = MySQL.Sync.fetchAll("SELECT * FROM addon_account_data WHERE account_name=@account_name",{['@account_name'] = 'society_cardealer'})	
	if not data or not data[1] then canDel = false; end	
	if data and data[1] then if data[1].finance <= 0 or data[1].financetimer > 0 then canDel = false; end; end
	if canDel then
		local datMon = account[1].money
		local model = (vehicle.model % 0x100000000)
		local carCost = 0
		for k,v in pairs(JVS.ShopData) do for k,v in pairs(v) do if (GetHashKey(v.model) % 0x100000000) == model then carCost = v.price; end; end; end
		local val = math.min(carCost / 20, 2000)
		xPlayer.addMoney(val)
		vehicleProps = vehicle
		price = data[1].finance
		MySQL.Async.execute("INSERT INTO repos_for_sale (seller, vehicleProps, price) VALUES (@seller, @vehProps, @vehPrice)",
				{	
					["@seller"] = xPlayer.getIdentifier(),
					["@vehProps"] = json.encode(vehicleProps),
					["@vehPrice"] = price
				}
			)
		MySQL.Sync.execute('UPDATE addon_account_data SET money=@money WHERE account_name=@account_name',{['@money'] = datMon + carCost,['@account_name'] = 'society_cardealer'})
		MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {['@plate'] = vehicle.plate})
		TriggerClientEvent("tp_repocarsales:refreshVehicles", -1)
		TriggerClientEvent('JAM_VehicleFinance:RemoveRepo', -1, vehicle)
		cb(canDel, val)
	else cb(false)
	end
end)

ESX.RegisterServerCallback('JAM_VehicleFinance:GetOwnedVehicles',function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do xPlayer = ESX.GetPlayerFromId(source); Citizen.Wait(0);end
	local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier",{['@identifier'] = xPlayer.identifier})		
	cb(data)
end)

ESX.RegisterServerCallback('JAM_VehicleFinance:RepayLoan', function(source, cb, plate, price)
	local xPlayer = ESX.GetPlayerFromId(source)
	while not xPlayer do
		xPlayer = ESX.GetPlayerFromId(source)
		Citizen.Wait(10)
	end
	local cbData
	if xPlayer.getMoney() >= price then xPlayer.removeMoney(price); cbData = true; else cbData = false; end
	if cbData then
		local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE plate=@plate",{['@plate'] = plate})	
		if not data or not data[1] then return; end
		local prevAmount = data[1].finance
		if prevAmount - price <= 0 or prevAmount - price <= 0.0 then settimer = 0; else settimer = JVF.MaxRepayTime * 60; end
		MySQL.Sync.execute('UPDATE owned_vehicles SET finance=@finance WHERE plate=@plate',{['@finance'] = prevAmount - price, ['@plate'] = plate})
		MySQL.Sync.execute('UPDATE owned_vehicles SET financetimer=@financetimer WHERE plate=@plate',{['@financetimer'] = settimer, ['@plate'] = plate})
	end

	local data = MySQL.Sync.fetchAll("SELECT * FROM addon_account_data WHERE account_name=@account_name",{['@account_name'] = 'society_cardealer'})	
	if not data then return; end	
	local datMon = data[1].money
	MySQL.Sync.execute('UPDATE addon_account_data SET money=@money WHERE account_name=@account_name',{['@money'] = datMon + price,['@account_name'] = 'society_cardealer'})
	cb(cbData)
end)

RegisterNetEvent('JAM_VehicleFinance:RemoveFromRepoList')
AddEventHandler('JAM_VehicleFinance:RemoveFromRepoList', function(vehicle)
	TriggerClientEvent('JAM_VehicleFinance:RemoveRepo', -1, vehicle)
end)

ESX.RegisterServerCallback('JAM_VehicleFinance:PlayerLogin', function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local tick = 0
	while not xPlayer and tick < 100 do
		Citizen.Wait(0)
		tick = tick + 1
		local xPlayer = ESX.GetPlayerFromId(source)
	end
	local data = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE owner=@owner',{['@owner'] = xPlayer.getIdentifier()})
	if not data or not data[1] then return; end

	local cbData = false
	for k,v in pairs(data) do
		if v.finance > 0 and v.financetimer <= 0 then 
			if not cbData then cbData = {}; end
			table.insert(cbData, v) 
		end
	end
	cb(cbData)
end)

AddEventHandler("playerConnecting", function()
	local src = source
	local identifiers, steamIdentifier = GetPlayerIdentifiers(source)
    for _, v in pairs(identifiers) do
        if string.find(v, "steam") then
            steamIdentifier = v
            break
        end
    end
	table.insert(JVF.PlayerTable, {sourceID = steamIdentifier, timeJoined = GetGameTimer()})
end)

AddEventHandler('playerDropped', function()
	local identifiers, steamIdentifier = GetPlayerIdentifiers(source)
  for _, v in pairs(identifiers) do
      if string.find(v, "steam") then
          steamIdentifier = v
          break
      end
  end
	local timeJoined, ky
	for k,v in pairs(JVF.PlayerTable) do 
		if v.sourceID == steamIdentifier then timeJoined = v.timeJoined; ky = k; end
	end
	if not timeJoined then return; end

	local identifier = steamIdentifier
	local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier",{['@identifier'] = identifier})	
	if not data then return; end

	for k,v in pairs(data) do
		if v.finance and v.finance > 0 then
			MySQL.Sync.execute('UPDATE owned_vehicles SET financetimer=@financetimer WHERE plate=@plate', {['@financetimer'] = math.floor(v.financetimer - (((GetGameTimer() - timeJoined) / 1000) / 60)), ['@plate'] = v.plate} )
		end
	end
	table.remove(JVF.PlayerTable, ky)
end)