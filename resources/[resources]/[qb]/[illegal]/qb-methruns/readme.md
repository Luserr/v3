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
	["methcontainer"] 			     = {["name"] = "methcontainer",				    ["label"] = "Meth Container",			   	["weight"] = 9500,    	["type"] = "item",		["image"] = "methcontainer.png",         ["unique"] = true,		["useable"] = false,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Container full of white powder"},
	["methcase"] 			     = {["name"] = "methcase",				    ["label"] = "Shiny Case",			   	["weight"] = 4500,    	["type"] = "item",		["image"] = "securitycase.png",         ["unique"] = true,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Briefcase full of money"},
    	["floor-cleaner"] 			     = {["name"] = "floor-cleaner",				    ["label"] = "Floor Cleaner",			["weight"] = 1000,    	["type"] = "item",		["image"] = "floorcleaner.png",         	["unique"] = true,		["useable"] = false,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "",								["created"] = nil, 		["decay"] = 0.0	},

```

* Add the following line to qb-core > server > player.lua any where around 87-140 area under metadata
```lua
    PlayerData.metadata['methruns'] = PlayerData.metadata['methruns'] or 0
```


# Ps-Dispatch

* Add the following to cl_extraalerts.lua
```lua
local function MethRuns()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local gender = GetPedGender()
    TriggerServerEvent("dispatch:server:notify",{
        dispatchcodename = "methruns", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
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
        dispatchMessage = ('Suspicious Drug Activity'), -- message
        job = {"police"} -- jobs that will get the alerts
    })
end exports('MethRuns', MethRuns)
```

* Add the following to sv_dispatchcodes.lua
```lua
	["methruns"] =  {displayCode = '10-31', description = "Suspicious Drug Activity", radius = 0, recipientList = {'police'}, blipSprite = 514, blipColour = 43, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false"},
```
