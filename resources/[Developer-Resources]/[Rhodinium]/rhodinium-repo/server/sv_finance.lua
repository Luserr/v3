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
		if v.paymentamount > 0 and v.financetime <= 0 then cbData = true; end
	end	
	cb(cbData)
end)

QBCore.Functions.CreateCallback('JAM_VehicleFinance:RepoVehicleEnd', function(source, cb, vehicle)
	local canDel = true
	local val = 0
	local xPlayer = QBCore.Functions.GetPlayer(source)
	local citizenid = QBCore.Functions.GetPlayer(source).PlayerData.citizenid

	exports.oxmysql:execute('SELECT * FROM player_vehicles WHERE plate = ? ', {vehicle.plate}, function(result)
        if result and result[1] then
			if result[1].paymentamount <= 0 or result[1].financetime > 0 then 
				canDel = false
			end
		elseif not data or not data[1] then
			canDel = false
			print("no data for vehicle")
		end

		if canDel then
			vehicleProps = vehicle
			price = result[1].paymentamount
			exports.oxmysql:execute("INSERT INTO repos_for_sale (seller, vehicleProps, price) VALUES (@seller, @vehProps, @vehPrice)",
					{	
						["@seller"] = citizenid,
						["@vehProps"] = json.encode(vehicleProps),
						["@vehPrice"] = price
					}
				)
			exports.oxmysql:execute('DELETE FROM player_vehicles WHERE plate = @plate', {['@plate'] = vehicle.plate})
			TriggerClientEvent("tp_repocarsales:refreshVehicles", -1)
			TriggerClientEvent('JAM_VehicleFinance:RemoveRepo', -1, vehicle)
			cb(canDel, val)
		else 
			cb(false)
		end
    end)
	
end)

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