CreateThread(function()
    while true do
        local sleep = 0
        if LocalPlayer.state.isLoggedIn then
            sleep = (1000 * 60) * QBCore.Config.UpdateInterval
            local hungerRate = 0
            local thirstRate = 0
            if exports["qb-buffs"]:HasBuff("super-hunger") then hungerRate = QBConfig.Player.HungerRate/2 else hungerRate = QBConfig.Player.HungerRate end
            if exports["qb-buffs"]:HasBuff("super-thirst") then thirstRate = QBConfig.Player.ThirstRate/2 else thirstRate = QBConfig.Player.ThirstRate end
            TriggerServerEvent('QBCore:UpdatePlayer', hungerRate, thirstRate)
        end 
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            if (QBCore.PlayerData.metadata['hunger'] <= 0 or QBCore.PlayerData.metadata['thirst'] <= 0) and not QBCore.PlayerData.metadata['isdead'] then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                local decreaseThreshold = math.random(5, 10)
                SetEntityHealth(ped, currentHealth - decreaseThreshold)
            end
        end
        Wait(QBCore.Config.StatusInterval)
    end
end)
