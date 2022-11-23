function startCall(phoneNumber, callerID, receiverID)
    TriggerClientEvent("rhodinium:voice:phone:call:start", callerID, receiverID, phoneNumber)
    TriggerClientEvent("rhodinium:voice:phone:call:start", receiverID, callerID, phoneNumber)
end

function endCall(phoneNumber, callerID, receiverID)
    TriggerClientEvent("rhodinium:voice:phone:call:end", callerID, receiverID, phoneNumber)
    TriggerClientEvent("rhodinium:voice:phone:call:end", receiverID, callerID, phoneNumber)
end

RegisterServerEvent("rhodinium:voice:server:phone:startCall")
AddEventHandler("rhodinium:voice:server:phone:startCall", startCall)

RegisterServerEvent("rhodinium:voice:server:phone:endCall")
AddEventHandler("rhodinium:voice:server:phone:endCall", endCall)