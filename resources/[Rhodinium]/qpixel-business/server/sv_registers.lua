RPC.register("PriceWithTaxString", function(pSource, pCost, pType)
    local type = pType
    local cost = tonumber(pCost)
    local amount = 15
    if type == "Goods" then
        local tax = math.ceil(cost / 100 * amount)
        local total = cost + tax
        local taxString = tostring(total) .. " Incl. " .. tostring(amount) .. "% tax" 
        return {cost = total, text = taxString, tax = tax}
    end
end)

function taxTotal(pCost)
    local amount = 15
    local tax = math.ceil(pCost / 100 * amount) + pCost
    return tax
end

exports('taxTotal',taxTotal)

RPC.register("qpixel-business:startPurchase", function(pSource, pData)
    local source = pSource
    local data = pData
    local insert = {
        charger = source, 
        cost = data.cost, 
        comment = data.comment,
        registerId = data.registerId,
        business = data.business
    }
    TriggerClientEvent("qpixel-business:activePurchase", -1, insert)
end)

local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

function dump(o)
	if type(o) == 'table' then
	   local s = '{ '
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. '['..k..'] = ' .. dump(v) .. ','
	   end
	   return s .. '} '
	else
	   return tostring(o)
	end
 end

RPC.register("qpixel-business:completePurchase", function(pSource, pData)
    -- here we need to grab tax amount, and add to state account
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local data = pData
    local amount = data.cost
    local tax = data.tax -- tax amount taken, and added to the state account

    local getInfoByCID = Await(SQL.execute("SELECT cash, bank FROM characters WHERE id = @id", {
        ["id"] = char.id
    }))

    if data.cash == true then
        if not (tonumber(getInfoByCID[1].cash) > tonumber(amount)) then return false, "You can't afford this purchase" end
        user:removeMoney(tonumber(amount))
    else
        if not (tonumber(getInfoByCID[1].bank) > tonumber(amount)) then return false, "You can't afford this purchase" end
        user:removeBank(tonumber(amount))
    end

    local owner = exports["qpixel-base"]:getModule("Player"):GetUser(data.charger)
    local char = owner:getCurrentCharacter()
    information = {
        ["Price"] = tonumber(amount),
        ["Creator"] = char.first_name .. " " ..char.last_name,
        ["Comment"] = data.comment
    }
    TriggerClientEvent("player:receiveItem", data.charger, "ownerreceipt", 1, true, information)
    local getBizNameByID = Await(SQL.execute("SELECT business_name FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = data.business
    }))
    local businessname = getBizNameByID[1].business_name
    local comment = "Thanks for your order at " .. businessname

    local insert = {
    registerId = data.registerId
    }

    local newAmount = format_int(tonumber(amount))

    local message = "$" .. tostring(newAmount) .. " was withdrawn from your account."

    TriggerClientEvent("qpixel-business:closePurchase", -1, insert)

    TriggerClientEvent('qpixel-phone:businessRegisterNoti', pSource, "SERVICE CHARGE", message)

    print(dump(pData))

    

    local getBusinessNameByID = Await(SQL.execute("SELECT business_name FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = businessname
    }))

    print("HI")

    exports.oxmysql:execute("SELECT `bank` FROM `businesses` WHERE business_name = @pBizName", {['@pBizName'] = businessname}, function(pValues)
        exports.oxmysql:execute('UPDATE `businesses` SET `bank` = @newAmt WHERE `business_name` = @bizName', {
            ['@newAmt'] = pValues[1].bank + amount, ['@bizName'] = businessname
        }, function()
        end)
    end)

    print("MAYBE")

    local transactionId = uuid()
    -- insert biz transaction log

    exports.oxmysql:execute("INSERT INTO bank_transactions (identifier, sender, target, label, amount, iden, type, date, business_id, transaction_id) VALUES (@identifier, @sender, @target, @label, @amount, @iden, @type, @date, @business_id, @transaction_id)", {
        ["identifier"] = 0,
        ["sender"] = businessname,
        ["target"] = char.first_name .. " " .. char.last_name, -- change to biz name,
        ["label"] = data.comment,
        ["amount"] = amount,
        ["iden"] = "PURCHASE",
        ["type"] = "pos",
        ["date"] = os.date(), 
        ["business_id"] = data.business,
        ["transaction_id"] = transactionId
    }, function(pValues) 
    end)

    exports.oxmysql:execute("INSERT INTO bank_transactions (identifier, sender, target, label, amount, iden, type, date, transaction_id) VALUES (@identifier, @sender, @target, @label, @amount, @iden, @type, @date, @transaction_id)", {
        ["identifier"] = char.id,
        ["sender"] = char.first_name .. " " .. char.last_name,
        ["target"] = businessname,
        ["label"] = data.comment, 
        ["amount"] = amount,
        ["iden"] = "PURCHASE", 
        ["type"] = "neg",
        ["date"] = os.date(),
        ["transaction_id"] = transactionId
    }, function(pValues) 
    end)

    print("DONE")

    --[[ exports.oxmysql:execute("SELECT `bank` FROM `businesses` WHERE business_name = @pBizName", {['@pBizName'] = businessname}, function(pValues)
        exports.oxmysql:execute('UPDATE `businesses` SET `bank` = @newAmt WHERE `business_name` = @bizName', {
            ['@newAmt'] = pValues[1].bank + amount, ['@bizName'] = businessname
        }, function()
        end)
    end) ]]
    return true
end)