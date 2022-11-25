ESX = nil

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)

local VehiclesForSale = 0

ESX.RegisterServerCallback("tp_repocarsales:retrieveVehicles", function(source, cb)
	local src = source
	local identifier = ESX.GetPlayerFromId(src)["identifier"]

    MySQL.Async.fetchAll("SELECT vehicleProps, price FROM repos_for_sale", {}, function(result)
        local vehicleTable = {}

        VehiclesForSale = 0

        if result[1] ~= nil then
            for i = 1, #result, 1 do
                VehiclesForSale = VehiclesForSale + 1

				local seller = false

				if result[i]["seller"] == identifier then
					seller = true
				end

                table.insert(vehicleTable, { ["price"] = result[i]["price"], ["vehProps"] = json.decode(result[i]["vehicleProps"]), ["owner"] = seller })
            end
        end

        cb(vehicleTable)
    end)
end)

ESX.RegisterServerCallback("tp_repocarsales:isVehicleValid", function(source, cb, vehicleProps, price)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
    
    local plate = vehicleProps["plate"]

	local isFound = false

	RetrievePlayerVehicles(xPlayer.identifier, function(ownedVehicles)

		for id, v in pairs(ownedVehicles) do

			if Trim(plate) == Trim(v.plate) and #Config.VehiclePositions ~= VehiclesForSale then
                
                MySQL.Async.execute("INSERT INTO repos_for_sale (seller, vehicleProps, price) VALUES (@sellerIdentifier, @vehProps, @vehPrice)",
                    {
						["@sellerIdentifier"] = xPlayer["identifier"],
                        ["@vehProps"] = json.encode(vehicleProps),
                        ["@vehPrice"] = price
                    }
                )

				MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', { ["@plate"] = plate})

                TriggerClientEvent("tp_repocarsales:refreshVehicles", -1)

				isFound = true
				break

			end		

		end

		cb(isFound)

	end)
end)

ESX.RegisterServerCallback("tp_repocarsales:buyVehicle", function(source, cb, vehProps, price)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
    
	local price = price
	local plate = vehProps["plate"]
	if xPlayer.getAccount("bank")["money"] >= price or price == 0 then

		MySQL.Async.fetchAll('SELECT price FROM repos_for_sale WHERE vehicleProps LIKE "%' .. plate .. '%"', {}, function(result)
			if result[1] ~= nil then
				if result[1]["price"] ~= price then
					TriggerEvent('banCheater', source, "Well what a fuckwit you are..... 😈")
					TriggerClientEvent('LG_CLBan', source)
					TriggerEvent('DiscordBot:ToDiscord', DiscordWebhookSystemInfos, SystemName, '```css\n' .. GetPlayerName(source) .. '\n```', SystemAvatar, false)
					TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'I would appriciate it if you wouldnt cheat....'})
				else
					xPlayer.removeAccountMoney("bank", price)
					MySQL.Async.execute("INSERT INTO owned_vehicles (plate, owner, vehicle, state, stored, garage) VALUES (@plate, @identifier, @vehProps, @state, @stored, @garage)",
						{
							["@plate"] = plate,
							["@identifier"] = xPlayer["identifier"],
							["@vehProps"] = json.encode(vehProps),
							["@state"] = true,
							["@stored"] = true,
							["@garage"] = "A"
						}
					)
					TriggerClientEvent('reposales_DeleteVehicle', source, result[1]["price"])
					TriggerClientEvent("tp_repocarsales:refreshVehicles", -1)
					--UpdateCash(result[1]["seller"], result[1]["price"])
					MySQL.Async.execute('DELETE FROM repos_for_sale WHERE vehicleProps LIKE "%' .. plate .. '%"', {})
				end
			else
			end
		end)

		cb(true)
	else
		cb(false, xPlayer.getAccount("bank")["money"])
	end
end)

ESX.RegisterServerCallback("tp_repocarsales:removeVehicleLG", function(source, cb, vehProps, price)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local price = price
	local plate = vehProps["plate"]

	if xPlayer.getAccount("bank")["money"] >= price or price == 0 then
		MySQL.Async.execute("INSERT INTO owned_vehicles (plate, owner, vehicle, state, stored, garage) VALUES (@plate, @identifier, @vehProps, @state, @stored, @garage)",
			{
				["@plate"] = plate,
				["@identifier"] = xPlayer["identifier"],
				["@vehProps"] = json.encode(vehProps),
				["@state"] = true,
				["@stored"] = true,
				["@garage"] = "A"
			}
		)
		TriggerClientEvent("tp_repocarsales:refreshVehicles", -1)
		MySQL.Async.execute('DELETE FROM vehicles_for_sale WHERE vehicleProps LIKE "%' .. plate .. '%"', {})
		cb(true)
	else
		cb(false, xPlayer.getAccount("bank")["money"])
	end
end)

function RetrievePlayerVehicles(newIdentifier, cb)
	local identifier = newIdentifier

	local yourVehicles = {}

	MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner = @identifier", {['@identifier'] = identifier}, function(result) 

		for id, values in pairs(result) do

			local vehicle = json.decode(values.vehicle)
			local plate = values.plate

			table.insert(yourVehicles, { vehicle = vehicle, plate = plate })
		end

		cb(yourVehicles)

	end)
end

function UpdateCash(identifier, cash)
	local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

	if xPlayer ~= nil then
		xPlayer.addAccountMoney("bank", cash)
		TriggerClientEvent("pNotify:SendNotification", {text = 'someone bought your vehicle for '.. cash ..':-', layout = "centerLeft", timeout = 5000, type = 'success', progressBar = true, theme = 'lg', animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
		--TriggerClientEvent("esx:showNotification", xPlayer.source, "Someone bought your vehicle and transferred $" .. cash)
	else
		MySQL.Async.fetchAll('SELECT bank FROM users WHERE identifier = @identifier', { ["@identifier"] = identifier }, function(result)
			if result[1]["bank"] ~= nil then
				MySQL.Async.execute("UPDATE users SET bank = @newBank WHERE identifier = @identifier",
					{
						["@identifier"] = identifier,
						["@newBank"] = result[1]["bank"] + cash
					}
				)
			end
		end)
	end
end

Trim = function(word)
	if word ~= nil then
		return word:match("^%s*(.-)%s*$")
	else
		return nil
	end
end