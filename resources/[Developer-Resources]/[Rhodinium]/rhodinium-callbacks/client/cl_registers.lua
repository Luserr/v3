local QBCore = exports['qb-core']:GetCoreObject()
local activePurchases = {}

Citizen.CreateThread(function()
    --uwucafe
    exports['qb-target']:AddBoxZone("uwu1", vector3(-584.04, -1058.72, 22.34), 1, 0.4, {
        name = "uwu1_purchase",
        heading = 270,
        debugPoly = false,
        minZ = 18.54,
        maxZ = 22.54,
    }, {
        options = {
            {
                type = "client",
                event = "qpixel-business:registerPurchasePrompt",
                icon = "fas fa-cash-register",
                label = "Make Payment",
                registerId = 1, 
                business = "uWu Cafe",
            },
            {
                type = "client",
                event = "qpixel-business:registerChargePrompt",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "uwu",
                registerId = 1, 
                business = "uWu Cafe",
            },
        },
        distance = 2.5
    })
    --uwu register 2
    exports['qb-target']:AddBoxZone("uwu2", vector3(-584.03, -1061.47, 22.34), 1, 0.4, {
        name = "uwu_purchase2",
        heading = 270,
        debugPoly = false,
        minZ = 18.54,
        maxZ = 22.54,
    }, {
        options = {
            {
                type = "client",
                event = "qpixel-business:registerPurchasePrompt",
                icon = "fas fa-cash-register",
                label = "Make Payment",
                registerId = 2, 
                business = "uWu Cafe",
            },
            {
                type = "client",
                event = "qpixel-business:registerChargePrompt",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "uwu",
                registerId = 2, 
                business = "uWu Cafe",
            },
        },
        distance = 2.5
    })

end)

AddEventHandler('qpixel-business:registerPurchasePrompt', function(pParameters, pEntity, pContext)
    print(json.encode(pParameters.registerId))
    local activeRegisterId = pParameters.registerId
    local activeRegister = activePurchases[activeRegisterId]
    if not activeRegister or activeRegister == nil then
        QBCore.Functions.Notify("No purchase active.", "error")
        return
    end
    local priceWithTax = RPC.execute("PriceWithTaxString", activeRegister.cost, "Goods")
    local acceptContext = {
        {
            title = "Restaurant Purchase",
            description = "$" .. priceWithTax.text .. " | " .. activeRegister.comment,
        },
        {
            title = "Purchase with Bank",
            action = "qpixel-business:finishPurchasePrompt",
            icon = 'credit-card',
            key = {cost = priceWithTax.cost, comment = activeRegister.comment, registerId = pParameters.registerId, charger = activeRegister.charger, business = pParameters.business, tax = priceWithTax.tax, cash = false},
        },
        {
            title = "Purchase with Cash",
            action = "qpixel-business:finishPurchasePrompt",
            icon = 'money-bill',
            key = {cost = priceWithTax.cost, comment = activeRegister.comment, registerId = pParameters.registerId, charger = activeRegister.charger, business = pParameters.business, tax = priceWithTax.tax, cash = true},
        }
    }
    exports['qpixel-interface']:showContextMenu(acceptContext)
end)

AddEventHandler('qpixel-business:registerChargePrompt', function(pParameters, pEntity, pContext)
    exports['qpixel-interface']:openApplication('textbox', {
        callbackUrl = 'qpixel-interface:business:charge',
        key = {registerId = pParameters.registerId, business = pParameters.business},
        items = {
          {
            icon = "dollar-sign",
            label = "Cost",
            name = "cost",
          },
          {
            icon = "pencil-alt", 
            label = "Comment",
            name = "comment",
          },
        },
        show = true,
    })
end)

--Add to purchases at registerId pos
RegisterNetEvent('qpixel-business:activePurchase')
AddEventHandler("qpixel-business:activePurchase", function(data)
    activePurchases[data.registerId] = data
end)

--Remove at registerId pos
RegisterNetEvent('qpixel-business:closePurchase')
AddEventHandler("qpixel-business:closePurchase", function(data)
    activePurchases[data.registerId] = nil
end)

RegisterInterfaceCallback('qpixel-business:finishPurchasePrompt', function (data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local success, message = RPC.execute("qpixel-business:completePurchase", data.key)  
    if not success then
        print("ISSUE")
        TriggerEvent("DoLongHudText", message, 2)
    end 
end)

RegisterInterfaceCallback("qpixel-interface:business:charge", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    exports['qpixel-interface']:closeApplication('textbox')
    local cost = tonumber(data.values.cost)
    local comment = data.values.comment
    if cost == nil or not cost then return end
    if comment == nil then comment = "" end

    if cost < 1 then cost = 1 end --Minimum $1

    --Send event to everyone indicating a purchase is ready at specified register
    RPC.execute("qpixel-business:startPurchase", {cost = cost, comment = comment, registerId = data.key.registerId, business = data.key.business})
end)