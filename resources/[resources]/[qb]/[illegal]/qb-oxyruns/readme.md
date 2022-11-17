# Dependencies
- QBCore (latest)
- qb-target https://github.com/qbcore-framework/qb-target
- polyzone
- qb-phone
- qb-inventory/lj-inventory
- ps-zones https://github.com/Project-Sloth/ps-zones
------------------------------------------------------------------------------------

* Add the images from the images file into your inventory html images
* Add the below lines into your qb-core>shared>item.lua at the bottom
```lua
	["oxy-box"] 			    	 = {["name"] = "oxy-box",				    ["label"] = "Drug Package",			   	["weight"] = 40000,    	["type"] = "item",		["image"] = "oxy-box.png",         	["unique"] = true,		["useable"] = false,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "",								["created"] = nil, 		["decay"] = 0.0	},

```

# Ps-Dispatch

* Add the following to cl_extraalerts.lua
```lua
local function Oxy()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local gender = GetPedGender()
    TriggerServerEvent("dispatch:server:notify",{
        dispatchcodename = "oxyruns", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-31",
        firstStreet = locationInfo,
        gender = gender,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = ('Drug Activity'), -- message
        job = {"police"} -- jobs that will get the alerts
    })
end exports('Oxy', Oxy)
```

* Add the following to sv_dispatchcodes.lua
```lua
	["oxyruns"] =  {displayCode = '10-31', description = "Drug Activity", radius = 0, recipientList = {'police'}, blipSprite = 51, blipColour = 17, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false"},

```
