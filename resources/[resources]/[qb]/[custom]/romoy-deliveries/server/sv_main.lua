local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('venture-deliveries:server:PalletGive', function()
    local src = source
    local vPlayer = QBCore.Functions.GetPlayer(src)
        vPlayer.Functions.RemoveItem('burger-pallet', 1)
        vPlayer.Functions.AddItem('drift_coilovers', 1)
        vPlayer.Functions.AddItem('drift_angle_kit', 1)
        vPlayer.Functions.AddItem('drift_differential', 1)
        vPlayer.Functions.AddItem('drift_hydraulic_handbrake', 1)
        vPlayer.Functions.AddItem('drift_tires', 1)
        vPlayer.Functions.AddItem('drift_suspension', 1)
        vPlayer.Functions.AddItem('drift_engine', 1)
        vPlayer.Functions.AddItem('drift_transmission', 1)
end)

RegisterNetEvent('venture-deliveries:server:Pallet', function()
    local src = source
    local vPlayer = QBCore.Functions.GetPlayer(src)
        vPlayer.Functions.AddItem('burger-pallet', 1)
        --TriggerClientEvent('venture-deliveries:client:Pallet')
end)