local QBCore = exports['qb-core']:GetCoreObject()
local isRoll = false
local car = false

QBCore.Functions.CreateCallback('qb-luckywheel:CheckCanSpin', function(source, cb)
    local source = source
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local chips = xPlayer.Functions.GetItemByName('casinochips')
    if chips and chips.amount >= Config.Amount and isRoll == false then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-luckywheel:server:getLucky', function()
    local source = source
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if not isRoll then
        if xPlayer then
            local chips = xPlayer.Functions.GetItemByName('casinochips')
            if chips and chips.amount >= Config.Amount then
                xPlayer.Functions.RemoveItem('casinochips', Config.Amount)
                exports['Renewed-Banking']:addAccountMoney('casino', Config.Amount*1000, "Casino Winnings")
                isRoll = true

                local _randomPrice = math.random(1, 100)
                if _randomPrice == 1 then
                    -- Win car
                    local _subRan = math.random(1,100000)
                    if _subRan <= 1 then
                        _priceIndex = 19
                    else
                        _priceIndex = 3
                    end
                elseif _randomPrice > 1 and _randomPrice <= 6 then
                    -- Win skin AK Gold
                    _priceIndex = 12
                    local _subRan = math.random(1,200)
                    if _subRan <= 2 then
                        _priceIndex = 12
                    else
                        _priceIndex = 7
                    end
                elseif _randomPrice > 15 and _randomPrice <= 25 then
                    -- Win 300,000$
                    -- _priceIndex = 5
                    local _subRan = math.random(1,600)
                    if _subRan <= 2 then
                        _priceIndex = 5
                    else
                        _priceIndex = 20
                    end
                elseif _randomPrice > 25 and _randomPrice <= 40 then
                    -- 1, 9, 13, 17
                    local _sRan = math.random(1, 4)
                    if _sRan == 1 then
                        _priceIndex = 1
                    elseif _sRan == 2 then
                        _priceIndex = 9
                    elseif _sRan == 3 then
                        _priceIndex = 13
                    else
                        _priceIndex = 17
                    end
                elseif _randomPrice > 40 and _randomPrice <= 60 then
                    local _itemList = {}
                    _itemList[1] = 2
                    _itemList[2] = 6
                    _itemList[3] = 10
                    _itemList[4] = 14
                    _itemList[5] = 18
                    _priceIndex = _itemList[math.random(1, 5)]
                elseif _randomPrice > 60 and _randomPrice <= 100 then
                    local _itemList = {}
                    _itemList[1] = 3
                    _itemList[2] = 7
                    _itemList[3] = 15
                    _itemList[4] = 20
                    _priceIndex = _itemList[math.random(1, 4)]
                end
                SetTimeout(6000, function()
                    isRoll = false
                    -- Give Price
                    if _priceIndex == 1 or _priceIndex == 9 or _priceIndex == 13 or _priceIndex == 17 then
                        xPlayer.Functions.AddItem('casinochips', 1)
                        TriggerClientEvent('QBCore:Notify', source, 'You Won 1 Casino Chips!', 'success')
                    elseif _priceIndex == 2 or _priceIndex == 6 or _priceIndex == 10 or _priceIndex == 14 or _priceIndex == 18 then
                        xPlayer.Functions.AddItem('sandwich', 2)
                        xPlayer.Functions.AddItem('water_bottle', 2)
                        TriggerClientEvent('QBCore:Notify', source, 'You Won....Sandwich and Water?', 'success')
                    elseif _priceIndex == 3 or _priceIndex == 7 or _priceIndex == 15 or _priceIndex == 20 then
                        local _money = 0
                        if _priceIndex == 3 then
                            _money = 1500
                        elseif _priceIndex == 7 then
                            _money = 10000
                        elseif _priceIndex == 15 then
                            _money = 500
                        elseif _priceIndex == 20 then
                            _money = 250
                        end
                        xPlayer.Functions.AddMoney('cash', _money)
                        TriggerClientEvent('QBCore:Notify', source, 'You Won $'.._money..'!', 'success')
                        exports['Renewed-Banking']:removeAccountMoney('casino', _money, "Casino Win")
                    elseif _priceIndex == 5 then
                        xPlayer.Functions.AddMoney('cash', 300000)
                        TriggerClientEvent('QBCore:Notify', source, 'You Won $300,000 Cash!', 'success')
                        exports['Renewed-Banking']:removeAccountMoney('casino', 300000, "Casino Prize")
                    elseif _priceIndex == 12 then
                        xPlayer.Functions.AddItem('nightvision', 1)
                        TriggerClientEvent('QBCore:Notify', source, 'You Won A Night Vision Goggles!!', 'success')
                    elseif _priceIndex == 19 then
                        if Config.GiveCarOnWin then 
                            TriggerClientEvent('qb-luckywheel:client:winCar', source)
                            car = true
                        else
                            TriggerClientEvent('qb-luckywheel:client:winCarEmail', source)
                        end
                    end
                    TriggerClientEvent('qb-luckywheel:client:rollFinished', -1)
                end)
                TriggerClientEvent('qb-luckywheel:client:doRoll', -1, _priceIndex)
            else
                TriggerClientEvent('QBCore:Notify', source, 'You Need '..Config.Amount..' Chips To Spin!', 'error')
            end
        end
    end
end)

RegisterNetEvent('qb-luckywheel:server:carRedeem', function(vehicleProps)
    local source = source

    local xPlayer = QBCore.Functions.GetPlayer(source)
    local plate = 'CSNO'
    local getPlate = true
    local plateAvailable = ''
    while getPlate do
        Citizen.Wait(0)
        local plateNumbers = math.random(1000,9999)
        local testplate = plate..plateNumbers
        local result = exports.oxmysql:scalarSync('SELECT * from player_vehicles WHERE plate=  = ?', {plate})
            plateAvailable = result[1]
        if plateAvailable == nil then
            vehicleProps.plate = testplate
            getPlate = false
        end
    end
    local vehiclePropsjson = json.encode(vehicleProps)
    if car then
        car = false 
        TriggerClientEvent('QBCore:Notify', source, 'You won a fucking nice car!', 'success')
        TriggerClientEvent('qb-luckywheel:client:winCarEmail', source)
        exports.oxmysql:insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
            xPlayer.PlayerData.license,
            xPlayer.PlayerData.citizenid,
            Config.Vehicle,
            `Config.Vehicle`,
            vehiclePropsjson,
            vehicleProps.plate,
            'casino',
            1
        })
    else
        --can ban here, would be a modder triggering event to get a free car
    end
end)
