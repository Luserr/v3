RegisterInterfaceCallback("qpixel-ui:getLoans", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if data.type == "business" then
        local success, message = RPC.execute("GetLoansByBusinessId", data.id)
        cb({ data = message, meta = { ok = success, message = message } })
    elseif data.type == "state" then
        local success, message = RPC.execute("GetLoansByState")
        cb({ data = message, meta = { ok = success, message = message } })
    else
        local success, message = RPC.execute("GetLoansByCharacterId", data.id)
    end
end)

RegisterInterfaceCallback("qpixel-ui:loanOffer", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    RPC.execute("LoanOffer", data)
end)

RegisterInterfaceCallback("qpixel-ui:loanAccept", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local success, message = RPC.execute("LoanAccept", data)
end)

RegisterInterfaceCallback("qpixel-ui:loanPayment", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local success, message = RPC.execute("LoanPayment", data)
end)

RegisterInterfaceCallback("qpixel-ui:loanPaymentState", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local success, message = RPC.execute("LoanStatePayment", data)
end)

RegisterInterfaceCallback("qpixel-ui:getLoanConfig", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    local stateInterest, maxRate = RPC.execute("GetStateInterestRate")
    local data = {
        ["state_interest"] = stateInterest,
        ["max_interest_rate"] = maxRate,
    }
end)


--Convert to renewed phone popup
RegisterNetEvent("loans:loanAcceptPrompt")
AddEventHandler("loans:loanAcceptPrompt", function(data)
  SendUIMessage({
    source = "qpixel-nui",
    app = "phone",
    data = {
      action = "loan-offer",
      data = data,
    },
  })
end)
