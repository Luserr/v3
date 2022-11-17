QBCore = exports['qb-core']:GetCoreObject()
local playerData, playerJob = nil, nil
Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(200)
	end

	while QBCore.Functions.GetPlayerData() == nil do
		Wait(0)
	end

	while QBCore.Functions.GetPlayerData().job == nil do
		Wait(0)
	end

	playerData = QBCore.Functions.GetPlayerData()
    playerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent("QBCore:Client:OnJobUpdate")
AddEventHandler("QBCore:Client:OnJobUpdate", function(jobInfo)
    playerJob = jobInfo
    playerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent("nn-usb:openshop")
AddEventHandler("nn-usb:openshop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "drugdealerone", Config.Items["dealer_one"])
end)

CreateThread(function()
    for k,v in pairs(Config.Items["dealer_one"]["items"] and Config.Items["dealer_two"]["items"]) do
        v.slot = k
    end
    while true do
        Wait(1)
        local plyPed = PlayerPedId()
        local plyCoords = GetEntityCoords(plyPed)
        local letSleep = true
        
        if playerJob and playerJob.name == "drugdealerone" and playerData.job.isboss then
            local dealerOneShop = GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, Config.Locations["dealer_one"]['shop']["x"], Config.Locations["dealer_one"]['shop']["y"], Config.Locations["dealer_one"]['shop']["z"], true)
            if dealerOneShop < 20 then
                letSleep = false
                if dealerOneShop < 2.5 then
                    DrawText3Ds(Config.Locations["dealer_one"]['shop']["x"], Config.Locations["dealer_one"]['shop']["y"], Config.Locations["dealer_one"]['shop']["z"], "~g~E~s~ - Shop")
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent("inventory:server:OpenInventory", "shop", "drugdealerone", Config.Items["dealer_one"])
                    end
                end
            end
        elseif playerJob and playerJob.name == "drugdealertwo" and playerData.job.isboss then
            local dealerTwoShop = GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, Config.Locations["dealer_two"]['shop']["x"], Config.Locations["dealer_two"]['shop']["y"], Config.Locations["dealer_two"]['shop']["z"], true)
            if dealerTwoShop < 20 then
                letSleep = false
                if dealerTwoShop < 2.5 then
                    DrawText3Ds(Config.Locations["dealer_two"]['shop']["x"], Config.Locations["dealer_two"]['shop']["y"], Config.Locations["dealer_two"]['shop']["z"], "~g~E~s~ - Shop")
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent("inventory:server:OpenInventory", "shop", "drugdealertwo", Config.Items["dealer_two"])
                    end
                end
            end
        end

        if letSleep then
            Wait(1500)
        end
    end
end)