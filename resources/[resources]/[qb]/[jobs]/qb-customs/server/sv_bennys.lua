local QBCore = exports['qb-core']:GetCoreObject()

local repairCost = vehicleBaseRepairCost


--[[ exports['Renewed-Banking']:handleTransaction(src, "business", -amount, "deposit", joblabel, (note ~= "" and note or "Withdraw from ".. job .."'s account from Business Computer."))
TriggerServerEvent("TransactionHandler")


RegisterNetEvent('TransactionHandler', function(RepairPrice)
    local src = source
	local xPlayer = QBCore.Functions.GetPlayer(src)
    xPlayer.Functions.RemoveMoney("bank", RepairPrice, "Bennys Repair")
end)
 ]]


RegisterNetEvent('qb-customs:attemptPurchase', function(type, upgradeLevel)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local balance = nil
    if Player.PlayerData.job.name == "tuner" or Player.PlayerData.job.name == "mechanic" or Player.PlayerData.job.name == "hayesauto" then
        --balance = exports['Renewed-Banking']:getAccountMoney(Player.PlayerData.job.name)
        balance = exports['Renewed-Banking']:getAccountMoney(Player.PlayerData.job.name)
        print(balance)
        if balance == nil then 
            TriggerClientEvent('QBCore:Notify', src, 'Cant find bank account, please report this', 'error')
            return
        end
    else
        balance = Player.Functions.GetMoney(moneyType)
    end

    


    if type == "repair" then 
        if balance >= repairCost then
            if Player.PlayerData.job.name == "tuner" or Player.PlayerData.job.name == "mechanic" or Player.PlayerData.job.name == "hayesauto" then
                --TriggerEvent('qb-management:server:removeAccountMoney', Player.PlayerData.job.name, repairCost)
                exports['Renewed-Banking']:removeAccountMoney(Player.PlayerData.job.name, repairCost, "Vehicle Repair")
                --[[ exports['Renewed-Banking']:handleTransaction(Player.PlayerData.job.name, Player.PlayerData.job.label, repairCost, "Vehicle Repair", Player.PlayerData.job.label, Player.PlayerData.job.label, "withdraw") ]]
            else
                Player.Functions.RemoveMoney(moneyType, repairCost, "tuner")
                exports['Renewed-Banking']:addAccountMoney("tuner", repairCost, "Vehicle Repair")
               --[[  exports['Renewed-Banking']:handleTransaction(Player.PlayerData.job.name, Player.PlayerData.job.label, repairCost, "Vehicle Repair", Player.PlayerData.job.label, Player.PlayerData.job.label, "deposit") ]]
            end
            TriggerClientEvent('qb-customs:purchaseSuccessful', source, Player.PlayerData.job.name, repairCost)
        else
            TriggerClientEvent('qb-customs:purchaseFailed', source) 
        end
    elseif type == "performance" then
        if balance >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('qb-customs:purchaseSuccessful', source, Player.PlayerData.job.name, repairCost)
            if Player.PlayerData.job.name == "tuner" or Player.PlayerData.job.name == "mechanic" or Player.PlayerData.job.name == "hayesauto" then
                --TriggerEvent('qb-management:server:removeAccountMoney', Player.PlayerData.job.name,
                    --vehicleCustomisationPrices[type].prices[upgradeLevel])
                exports['Renewed-Banking']:removeAccountMoney(Player.PlayerData.job.name, vehicleCustomisationPrices[type].prices[upgradeLevel], "Performance parts")
                --[[ exports['Renewed-Banking']:handleTransaction(Player.PlayerData.job.name, Player.PlayerData.job.label, vehicleCustomisationPrices[type].prices[upgradeLevel], "Performance Parts", Player.PlayerData.job.label, Player.PlayerData.job.label, "withdraw") ]]
            else
                Player.Functions.RemoveMoney(moneyType, vehicleCustomisationPrices[type].prices[upgradeLevel], "tuner")
                exports['Renewed-Banking']:addAccountMoney("tuner", vehicleCustomisationPrices[type].prices[upgradeLevel], "Performance parts")
                --[[ exports['Renewed-Banking']:handleTransaction(Player.PlayerData.job.name, Player.PlayerData.job.label, vehicleCustomisationPrices[type].prices[upgradeLevel], "Performance parts", Player.PlayerData.job.label, Player.PlayerData.job.label, "deposit") ]]
            end
        else
            TriggerClientEvent('qb-customs:purchaseFailed', source)
        end
    else
        if balance >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('qb-customs:purchaseSuccessful', source, Player.PlayerData.job.name, repairCost)
            if Player.PlayerData.job.name == "tuner" or Player.PlayerData.job.name == "mechanic" or Player.PlayerData.job.name == "hayesauto" then
                --TriggerEvent('qb-management:server:removeAccountMoney', Player.PlayerData.job.name,
                --    vehicleCustomisationPrices[type].price)
                exports['Renewed-Banking']:removeAccountMoney(Player.PlayerData.job.name, vehicleCustomisationPrices[type].price, "Cosmetic parts")
                --[[ exports['Renewed-Banking']:handleTransaction(Player.PlayerData.job.name, Player.PlayerData.job.label, vehicleCustomisationPrices[type].price, "Cosmetic parts", Player.PlayerData.job.label, Player.PlayerData.job.label, "withdraw")
  ]]
            else
                Player.Functions.RemoveMoney(moneyType, vehicleCustomisationPrices[type].price, "tuner")
                exports['Renewed-Banking']:addAccountMoney("tuner", vehicleCustomisationPrices[type].price, "Cosmetic parts")
                --[[ exports['Renewed-Banking']:handleTransaction(Player.PlayerData.job.name, Player.PlayerData.job.label, vehicleCustomisationPrices[type].price, "Cosmetic parts", Player.PlayerData.job.label, Player.PlayerData.job.label, "deposit")
                 ]]
            end
        else
            TriggerClientEvent('qb-customs:purchaseFailed', source)
        end
    end
end)

RegisterNetEvent('qb-customs:updateRepairCost', function(cost)
    repairCost = cost
end)

RegisterNetEvent("updateVehicle", function(myCar)
    local src = source
    if IsVehicleOwned(myCar.plate) then
        MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(myCar), myCar.plate})
    end
end)

function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then
        retval = true
    end
    return retval
end

RegisterNetEvent('qb-customs:paybiatch', function(RepairPrice)
    local src = source
	local xPlayer = QBCore.Functions.GetPlayer(src)
    xPlayer.Functions.RemoveMoney("bank", RepairPrice, "Bennys Repair")
end)
