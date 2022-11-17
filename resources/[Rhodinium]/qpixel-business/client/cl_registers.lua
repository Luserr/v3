local activeRegisters = {
    {
        polytarget = {
            vector3(-1196.33, -890.75, 13.98), 0.8, 1.0, {
                heading=35,
                minZ=13.78,
                maxZ=14.78,
            }
        },
        business="burger_shot",
    },
    {
        polytarget = {
            vector3(-1195.26, -892.33, 13.98), 0.6, 1.0, {
                heading=35,
                minZ=13.78,
                maxZ=14.78,
            }
        },
        business="burger_shot",
    },
    {
        polytarget = {
            vector3(-1194.28, -893.9, 13.98), 0.6, 1.0, {
                heading=35,
                minZ=13.78,
                maxZ=14.78,
            }
        },
        business="burger_shot",
    },
    {
        polytarget = {
            vector3(811.16, -750.75, 26.78), 0.7, 1.1, {
                heading=0,
                minZ=23.18,
                maxZ=27.18
            }
        },
        business="maldinis",
    },
    {
        polytarget = {
            vector3(811.15, -752.06, 26.78), 0.7, 1.1, {
                heading=0,
                minZ=23.18,
                maxZ=27.18
            }
        },
        business="maldinis",
    },
    {
        polytarget = {
            vector3(188.18, -243.59, 54.07), 0.5, 0.5, {
                heading=340,
                minZ=50.47,
                maxZ=54.47
            }
        },
        business="white_widow",
    },
    {
        polytarget = {
            vector3(188.96, -241.13, 54.07), 0.5, 0.5, {
                heading=340,
                minZ=50.47,
                maxZ=54.47
            }
        },
        business="white_widow",
    },
    {
        polytarget = {
            vector3(-171.18, 295.02, 93.76), 0.5, 0.9, {
                heading=0,
                minZ=90.16,
                maxZ=94.16
            }
        },
        business="warriors_table",
    },
    {
        polytarget = {
            vector3(295.88, -923.48, 52.82), 0.8, 0.8, {
                heading=340,
                minZ=49.42,
                maxZ=53.42
            }
        },
        business="skybar",
    },
    {
        polytarget = {
            vector3(296.46, -936.08, 52.81), 0.6, 0.8, {
                heading=5,
                minZ=49.41,
                maxZ=53.41
            }
        },
        business="skybar",
    },
    {
        polytarget = {
            vector3(380.24, -827.29, 29.3), 1, 0.6, {
                heading=0,
                minZ=24.3,
                maxZ=29.7
            }
        },
        business="best_buds",
    },
    {
        polytarget = {
            vector3(-584.03, -1061.47, 22.34), 1, 0.4, {
                heading=270,
                minZ=18.54,
                maxZ=22.54
            }
        },
        business="uwu_cafe",
    },
    {
        polytarget = {
            vector3(-584.04, -1058.72, 22.34), 1, 0.4, {
                heading=270,
                minZ=18.54,
                maxZ=22.54
            }
        },
        business="uwu_cafe",
    },
    {
        polytarget = {
            vector3(188.18, -243.59, 54.07), 0.5, 0.5, {
                heading=340,
                minZ=50.47,
                maxZ=54.47
            }
        },
        business="cosmic_cannabis",
    },
}

local activePurchases = {}

Citizen.CreateThread(function()
for id,register in ipairs(activeRegisters) do
        local ptId = "voidrp_business_register_" .. id
        exports["qpixel-polytarget"]:AddBoxZone(ptId, register.polytarget[1], register.polytarget[2], register.polytarget[3], register.polytarget[4])
        exports['qpixel-interact']:AddPeekEntryByPolyTarget(ptId, {{
            event = "qpixel-business:registerPurchasePrompt",
            id = ptId .. "_purchase",
            icon = "cash-register",
            label = "make payment",
            parameters = {registerId = id, business = register.business}
        }}, { distance = { radius = 2.0 } })
        exports['qpixel-interact']:AddPeekEntryByPolyTarget(ptId, {{
            event = "qpixel-business:registerChargePrompt",
            id = ptId .. "_charge",
            icon = "credit-card",
            label = "Charge Customer",
            parameters = {registerId = id, business = register.business}
        }}, { distance = { radius = 2.0 }, isEnabled = function(pEntity, pContext) return IsEmployedAt(register.business) end})
    end 
end)

AddEventHandler('qpixel-business:registerPurchasePrompt', function(pParameters, pEntity, pContext)
    local activeRegisterId = pParameters.registerId
    local activeRegister = activePurchases[activeRegisterId]
    if not activeRegister or activeRegister == nil then
        TriggerEvent("DoLongHudText", "No purchase active.")
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