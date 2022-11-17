-- Stops vehicles from spawning that cause issues in OneSync
TrafficAmount = 20
PedestrianAmount = 40
ParkedAmount = 20

Citizen.CreateThread(function()
	while true do
		Wait(0)
		SetVehicleDensityMultiplierThisFrame((TrafficAmount/100)+.0)
		SetPedDensityMultiplierThisFrame((PedestrianAmount/100)+.0)
		SetRandomVehicleDensityMultiplierThisFrame((TrafficAmount/100)+.0)
		SetParkedVehicleDensityMultiplierThisFrame((ParkedAmount/100)+.0)
		SetScenarioPedDensityMultiplierThisFrame((PedestrianAmount/100)+.0, (PedestrianAmount/100)+.0)
		SetGarbageTrucks(false)
		SetRandomBoats(false)
		SetCreateRandomCops(false)
		SetCreateRandomCopsNotOnScenarios(false)
		SetCreateRandomCopsOnScenarios(false)
    	SetVehicleModelIsSuppressed(GetHashKey("rubble"), true)
    	SetVehicleModelIsSuppressed(GetHashKey("dump"), true)
    	SetVehicleModelIsSuppressed(GetHashKey("taco"), true)
    	SetVehicleModelIsSuppressed(GetHashKey("biff"), true)
    	SetVehicleModelIsSuppressed(GetHashKey("blimp"), true)
		SetVehicleModelIsSuppressed(GetHashKey("boxville5"), true)
    	SetVehicleModelIsSuppressed(GetHashKey("technical"), true)
		SetVehicleModelIsSuppressed(GetHashKey("ninef"), true)
		SetVehicleModelIsSuppressed(GetHashKey("comet"), true)
		SetVehicleModelIsSuppressed(GetHashKey("bullet"), true)
		SetVehicleModelIsSuppressed(GetHashKey("carbonizzare"), true)
		SetVehicleModelIsSuppressed(GetHashKey("neon"), true)
		SetVehicleModelIsSuppressed(GetHashKey("tropos"), true)
    end
end)

local allowpolice = 0
local function SetGamePlayVars()
    Citizen.CreateThread(function()
        for i = 1, 25 do
            EnableDispatchService(i, false)
        end

        -- enable pvp
        for i = 0, 255 do
            if NetworkIsPlayerConnected(i) then
                if NetworkIsPlayerConnected(i) and GetPlayerPed(i) ~= nil then
                    SetCanAttackFriendly(GetPlayerPed(i), true, true)
                end
            end
        end

        NetworkSetFriendlyFireOption(true)

        -- Disable vehicle rewards
        DisablePlayerVehicleRewards(PlayerId())
        
        while true do
            Citizen.Wait(0)

            local ped = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(ped, false)            
            local timer = 0

            if IsPedInAnyVehicle(ped, false) then
                if GetPedInVehicleSeat(GetVehiclePedIsIn(ped, false), 0) == ped then
                    if GetIsTaskActive(ped, 165) then
                    --    SetPedIntoVehicle(ped, GetVehiclePedIsIn(ped, false), 0)
                    end
                end

                timer = 0
            else
                if IsPedWearingHelmet(ped) then
                    timer = timer + 1

                    if timer >= 5000 and not IsPedInAnyVehicle(ped, true) then
                        RemovePedHelmet(ped, false)
                        timer = 0
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()

        while true do
            Wait(1000)

            local id = PlayerId()
            if allowpolice == 0 then
                SetPlayerWantedLevel(id, 0, false)
                SetPlayerWantedLevelNow(id, false)
            else
                if allowpolice == 1 then
                    for i = 1, 25 do
                        EnableDispatchService(i, false)
                    end
                else
                    for i = 1, 25 do
                        EnableDispatchService(i, true)
                    end
                end

                SetPlayerWantedLevel(id, 2, false)
                SetPlayerWantedLevelNoDrop(id, 2, false)
                SetPlayerWantedLevelNow(id)
                print(GetPlayerWantedLevel(id))
            end
        end

    end)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local playerPed = PlayerPedId()
		local playerLocalisation = GetEntityCoords(playerPed)
			ClearAreaOfCops(playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, 400.0)
		end
	end)

local gamePlayStarted = false

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    if gamePlayStarted then return end
    gamePlayStarted = true
    SetGamePlayVars()
end)
