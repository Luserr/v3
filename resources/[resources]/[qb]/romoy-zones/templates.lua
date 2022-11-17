exports['qb-target']:AddBoxZone('BoxZoneName', vector3(123.4, -567.8, 910.11), 1, 1, {
    name='BoxZoneName', -- Name of the zone
    heading=57.45, -- Heading of zone
    debugPoly=false, -- If true will show a green box where the zone is located
    minZ = 6.04, -- Minimum Z value (Where they third eye)
    maxZ = 7.64, -- Maximum Z Value (Where they third eye)
    }, {
        options = {
            {
                type = 'client', --Client/ Server event
                event = 'ClientEventName', -- Name of the event
                icon = 'fas fa-user', -- Icon that shows up next to the label
                label = 'Target Label', -- Text that shows up when third eye'd
            },
        },
    distance = 3.5 -- Distance player has to be to interact
})

Config.Peds = {
    "g_m_importexport_0",
    "g_m_m_armboss_01"
}
exports['qb-target']:AddTargetModel(Config.Peds, {
	options = {
		{
			event = "request:CuffPed", --event
			icon = "fas fa-hands", -- Icon
			label = "Cuff / Uncuff", --Text
			item = 'handcuffs', --Item needed OPTIONAL
			job = "police" -- Job to access the zone
		},
		{
			event = "Rob:Ped", -- event for 2nd ped
			icon = "fas fa-sack-dollar", --  Icon
			label = "Rob", --Text
			canInteract = function(entity) -- Checks if player can interact, ensures they are not dead OPTIONAL
				if not IsPedAPlayer(entity) then
					return IsEntityDead(entity)
				end
			end,
		},
	},
	distance = 2.5,
})

This is an example from a postop resource. Players can rent delivery vehicles in order to make deliveries. When they rent a vehicle, we apply this target to that entity only, which allows them to "get packages" from the vehicle

This is an example using **exports**

Config.TargetEntities = {
    ["entity1"] = {
        entity = 'mule2',
        options = {
            {
                type = "client",
                event = "postop:getPackage",
                icon = "fas fa-box-circle-check",
                label = "Get Package",
                job = "postop",
            },
        },
        distance = 3.0,
    },
}

```lua
exports['qb-target']:AddTargetEntity('mule2', {
    options = {
        {
            type = "client",
            event = "postop:getPackage",
            icon = "fas fa-box-circle-check",
            label = "Get Package",
            job = "postop",
        },
    },
    distance = 3.0
})

This is an example using the model number of a object, object provided is for coffee machines

exports['qb-target']:AddTargetModel(690372739, {
    options = {
        {
            type = "client",
            event = "coffee:buy",
            icon = "fas fa-coffee",
            label = "Coffee",
            price = 5,
        },
    },
    distance = 2.5
})

Config.TargetModels = {
    ['buyCoffee'] = {
        models = 690372739,
        options = {
            {
                type = "client",
                event = "coffee:buy",
                icon = "fas fa-coffee",
                label = "Coffee",
                price = 5,
            },
        },
        distance = 2.5
    }
}

### EntityZone / Add a target in an event
This is an example of how you can dynamically create a target options in an event, for example, planting a potato plant.

This is an example using **exports**
This example is **not** advised to use with the provided config

```lua
AddEventHandler('plantpotato',function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	model = `prop_plant_fern_02a`
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
	local plant = CreateObject(model, coords.x, coords.y, coords.z, true, true)
	Wait(50)
	PlaceObjectOnGroundProperly(plant)
	SetEntityInvincible(plant, true)

	-- Logic to handle growth, create a thread and loop, or do something else. Up to you.

	exports['qb-target']:AddEntityZone("potato-growing-"..plant, plant, {
		name = "potato-growing-"..plant,
		heading = GetEntityHeading(plant),
		debugPoly = false,
	}, {
		options = {
			{
				type = "client",
				event = "farming:harvestPlant",
				icon = "fa-solid fa-scythe",
				label = "Harvest potato",
				plant = plant,
				job = "farmer",
				canInteract = function(entity)
					return Entity(entity).state.growth >= 100
				end,
			},
		},
		distance = 2.5
  	})
end)
