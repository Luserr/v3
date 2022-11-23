local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('JAM_VehicleFinance:MarkVehicles')
AddEventHandler('JAM_VehicleFinance:MarkVehicles', function(vehicles)
	TriggerClientEvent('JAM_VehicleFinance:MarkForRepo', -1, vehicles)
end)

QBCore.Functions.CreateCallback('JAM_VehicleFinance:RepoVehicle', function(source,cb,vehicleProps)
	local data = exports.oxmysql:execute('SELECT * FROM player_vehicles WHERE plate=@plate',{['@plate'] = vehicleProps.plate})
	if not data or not data[1] then return; end
	local cbData = false
	for k,v in pairs(data) do
		if v.finance > 0 and v.financetimer <= 0 then cbData = true; end
	end	
	cb(cbData)
end)

--[[ QBCore.Functions.CreateCallback('JAM_VehicleFinance:RepoVehicleEnd', function(source, cb, vehicle)
	while not xPlayer do Citizen.Wait(10); xPlayer = ESX.GetPlayerFromId(source); end
	local canDel = true
	local val = 0
	local data = exports.oxmysql:execute("SELECT * FROM player_vehicles WHERE plate=@plate",{['@plate'] = vehicle.plate})	
	local account = exports.oxmysql:execute("SELECT * FROM addon_account_data WHERE account_name=@account_name",{['@account_name'] = 'society_cardealer'})	
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
		MySQL.Async.execute('DELETE FROM player_vehicles WHERE plate = @plate', {['@plate'] = vehicle.plate})
		TriggerClientEvent("tp_repocarsales:refreshVehicles", -1)
		TriggerClientEvent('JAM_VehicleFinance:RemoveRepo', -1, vehicle)
		cb(canDel, val)
	else cb(false)
	end
end) ]]

RegisterNetEvent('JAM_VehicleFinance:RemoveFromRepoList')
AddEventHandler('JAM_VehicleFinance:RemoveFromRepoList', function(vehicle)
	TriggerClientEvent('JAM_VehicleFinance:RemoveRepo', -1, vehicle)
end)

QBCore.Functions.CreateCallback('JAM_VehicleFinance:PlayerLogin', function(source,cb)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	local citizenid = QBCore.Functions.GetPlayer(source).PlayerData.citizenid
	local tick = 0
	while not xPlayer and tick < 100 do
		Citizen.Wait(0)
		tick = tick + 1
		local xPlayer = QBCore.Functions.GetPlayer(source)
	end

	exports.oxmysql:execute('SELECT * FROM player_vehicles WHERE citizenid = ? ', {citizenid}, function(result)
        if result[1] ~= nil then
            local cbData = false
			for k,v in pairs(result) do
				if v.paymentamount > 0 and v.financetime <= 0 then 
					if not cbData then cbData = {}; end
					table.insert(cbData, v) 
				end
			end
			cb(cbData)
        else
            cb(nil)
        end
    end)
end)