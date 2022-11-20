local QBCore = exports['qb-core']:GetCoreObject() 

local inOutfitArea = false 

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    onDuty = player.job.onduty
end)

function isInOutfitArea()
    return inOutfitArea
end

exports('inOutfitArea', inOutfitArea)

CreateThread(function()
    exports["qb-polyzone"]:AddBoxZone("VehOutfits", vector3(147.22, 320.83, 112.14), 5.0, 7.0, {
        name="VehOutfits",
        heading=23,
        debugPoly = false,
        minZ = 109.34, 
        maxZ = 113.34
    })
end) 

RegisterNetEvent('qb-polyzone:enter')
AddEventHandler('qb-polyzone:enter', function(name)
    local InVehicle = IsPedInAnyVehicle(PlayerPedId())
    if name == "VehOutfits" then
        if InVehicle then
            inOutfitArea = true
            --if PlayerJob.name == "tuner" and onDuty then
                exports['qb-ui']:showInteraction("Vehicle Outfits")
            --end
        end
    end
end)

RegisterNetEvent('qb-polyzone:exit')
AddEventHandler('qb-polyzone:exit', function(name)
    if name == "VehOutfits" then
        inOutfitArea = false
        --if PlayerJob.name == "tuner" and onDuty then
            exports['qb-ui']:hideInteraction()
        --end
    end
end)

CreateThread(function()
	local bones = {
		"engine",
	}
	exports['qb-target']:AddTargetBone(bones, {
		options = {
			{
				type = "client",
				event = "rhodo-vehswap:client:saveMods",
				icon = "fas fa-plus",
				label = "Save Current Outfit",
				canInteract = function()
					return inOutfitArea
				end
			},
            {
				type = "client",
				event = "rhodo-vehswap:client:ChangeMods",
				icon = "fas fa-redo",
				label = "Swap Current Outfit",
				canInteract = function()
					return inOutfitArea
				end
			},

		},
		distance = 2.5, 
	})
end)

RegisterNetEvent('rhodo-vehswap:client:saveMods')
AddEventHandler('rhodo-vehswap:client:saveMods', function()
    exports['qb-menu']:openMenu({
      {
        header = "Vehicle Outfits",
        isMenuHeader = true,
        icon = 'fas fa-car-on'
      },
      {
          header = "Outfit One",
          txt = "Use to save or delete this outfit",
          icon = 'fas fa-power-off',
          params = {
            event = "rhodo-vehswap:client:endMenu",
            args = 1
          }
          
      },
      {
          header = "Outfit Two",
          txt = "Use to save or delete this outfit",
          icon = 'fas fa-power-off',
          params = {
            event = "rhodo-vehswap:client:endMenu",
            args = 2
          }
      },
      {
          header = "< Close Menu",
          params = {
              event = 'qb-menu:closeMenu',
          }
      },
    })
end) 

RegisterNetEvent('rhodo-vehswap:client:endMenu')
AddEventHandler('rhodo-vehswap:client:endMenu', function(outfit)
    exports['qb-menu']:openMenu({
      {
        header = "Vehicle Outfits",
        isMenuHeader = true,
        icon = 'fas fa-car-on'
      },
      {
          header = "Save Outfit",
          txt = "Use to save or delete this outfit",
          icon = 'fas fa-power-off',
          params = {
            event = "rhodo-vehswap:client:saveOutfit",
            args = outfit
          }
      },
      {
          header = "Delete Outfit",
          txt = "Use to apply outfit two",
          icon = 'fas fa-power-off',
          params = {
            event = "rhodo-vehswap:client:deleteOutfit",
            args = outfit 
          }
      },
      {
          header = "< Close Menu",
          params = {
              event = 'qb-menu:closeMenu',
          }
      },
    })
end) 

RegisterNetEvent('rhodo-vehswap:client:saveOutfit')
AddEventHandler('rhodo-vehswap:client:saveOutfit', function(outfit)
    print("SAVED OUTFIT".. outfit)
end)

RegisterNetEvent('rhodo-vehswap:client:deleteOutfit')
AddEventHandler('rhodo-vehswap:client:deleteOutfit', function(outfit)
    print("DELETED OUTFIT".. outfit)
end)

RegisterNetEvent('rhodo-vehswap:client:ChangeMods')
AddEventHandler('rhodo-vehswap:client:ChangeMods', function()
    exports['qb-menu']:openMenu({
      {
        header = "Vehicle Outfits",
        isMenuHeader = true
      },
      {
          header = "Outfit One",
          txt = "Use to apply outfit one",
          params = {
              event = "",
          }
      },
      {
          header = "Outfit Two",
          txt = "Use to apply outfit two",
          params = {
              event = "",
          }
      },
      {
          header = "< Close Menu",
          params = {
              event = 'qb-menu:closeMenu',
          }
      },
    })
end) 

--[[ RegisterUICallback("np-ui:car-clothing:swapCurrentOutfit", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = "done" } })
    exports["np-ui"]:closeApplication("textbox")
    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_WELDING", 0, true)
    local finished = exports["np-taskbar"]:taskBar(30000, "Swapping Outfit")
    ClearPedTasksImmediately(PlayerPedId())
    if finished ~= 100 then return end
    local rd = RPC.execute("np-car-clothing:swapCurrentOutfit", NetworkGetNetworkIdFromEntity(data.key), data.values)
    rd = rd[1]
    exports['np-vehicles']:SetVehicleAppearance(data.key, rd.app)
    exports['np-vehicles']:SetVehicleMods(data.key, rd.mods)
    exports['np-vehicles']:SetVehicleColors(data.key, rd.colors)
  end) ]]
  
  AddEventHandler("np-car-clothing:swapCurrentOutfit", function(p1, pEntity)
    exports["np-ui"]:openApplication("textbox", {
      callbackUrl = "np-ui:car-clothing:swapCurrentOutfit",
      key = pEntity,
      items = {
        {
          label = "Slot",
          name = "slot",
          _type = "select",
          options = {
            {
              name = "1",
              id = "1",
            },
            {
              name = "2",
              id = "2",
            },
          },
        },
      },
      show = true,
    })
  end)

AddEventHandler("np-car-clothing:saveCurrentOutfit", function(p1, pEntity, p3)
    exports["np-ui"]:openApplication("textbox", {
      callbackUrl = "np-ui:car-clothing:saveCurrentOutfit",
      key = pEntity,
      items = {
        { label = "Name", name = "name" },
        {
          label = "Slot",
          name = "slot",
          _type = "select",
          options = {
            {
              name = "1",
              id = "1",
            },
            {
              name = "2",
              id = "2",
            },
          },
        },
      },
      show = true,
    })
  end)

