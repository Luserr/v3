
# Description

# Dependencies
* [QBCore Framework](https://github.com/qbcore-framework)
* [mkalasers by mkafrin](https://github.com/mkafrin/mka-lasers)
* [Pacific Bank by K4MB1 MAPS](https://k4mb1.tebex.io/package/4692112)
* [Memorygame by pushkart2](https://github.com/pushkart2/memorygame)
* [dim-passhack by Dimbo Scripts](https://dimbo-scripts.tebex.io/package/4616362)
* [Hack minigame by Jasper-Hustad](https://github.com/Jesper-Hustad/NoPixel-minigame)
* [qb-target by BerkieBb](https://github.com/BerkieBb/qb-target)
* [ms-peds by MiddleSkillz](https://github.com/MiddleSkillz/ms-peds*)
* [qb-powerplant by Lionh34rt#4305](https://lionh34rt.tebex.io/)

# Installation
* **Add the items to your shared > items.lua**
* **Add the correct lines to your giveitem command**
* **Install all the dependencies**
* **Add the sound effects (bankdrill) to your interact-sound resource**
* **Create nightvision in smallresources**
* **You may have to change the clothing piece in the nightvision.lua**
* **Rename and add entries to the scoreboard triggers: 'Fleeca', 'Paleto', 'Pacific'**
* **Change the doorlock triggers to match your corresponding doorlockId**
* **Make a few changes to your qb-doorlock configs, see below for the actual snippets.**

# Items for shared.lua
```lua
["usb_green"] 		 	 		 = {["name"] = "usb_green",           			["label"] = "USB Drive",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "usb_green.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   	["combinable"] = nil,   	["description"] = "A green USB flash drive"},
["usb_red"] 		 	 		 = {["name"] = "usb_red",           			["label"] = "USB Drive",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "usb_red.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   	["combinable"] = nil,   	["description"] = "A red USB flash drive"},
["usb_blue"] 		 	 		 = {["name"] = "usb_blue",           			["label"] = "USB Drive",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "usb_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   	["combinable"] = nil,   	["description"] = "A blue USB flash drive"},
["usb_gold"] 		 	 		 = {["name"] = "usb_gold",           			["label"] = "USB Drive",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "usb_gold.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   	["combinable"] = nil,   	["description"] = "A gold USB flash drive"},
["usb_grey"] 		 	 		 = {["name"] = "usb_grey",           			["label"] = "USB Drive",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "usb_grey.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "A grey USB flash drive"},


["laptop_green"] 		 	 	 = {["name"] = "laptop_green",           		["label"] = "Laptop",	 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "laptop_green.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A laptop that you got from Ph03nix"},
["laptop_red"] 		 	 		 = {["name"] = "laptop_red",           			["label"] = "Laptop",	 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "laptop_red.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A laptop that you got from Plague"},
["laptop_blue"] 		 	 	 = {["name"] = "laptop_blue",           		["label"] = "Laptop",	 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "laptop_blue.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A laptop that you got from Ramsay"},
["laptop_gold"] 		 	 	 = {["name"] = "laptop_gold",        		   	["label"] = "Laptop",	 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "laptop_gold.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A laptop that you got from Trinity"},

["lowervaultcodes"] 			 = {["name"] = "lowervaultcodes", 				["label"] = "Access Codes", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "lowervaultcodes.png", 		["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,	["combinable"] = nil,   ["description"] = "A copy of the Pacific Bank lower vault access code.."},

["explosive"] 					 = {["name"] = "explosive", 					["label"] = "Explosive", 				["weight"] = 5000, 		["type"] = "item", 		["image"] = "explosive.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,   	["description"] = "An improvised explosive of fireworks and thermite"},
["nightvision"] 			 	 = {["name"] = "nightvision", 					["label"] = "Night Vision Goggles", 	["weight"] = 6000, 		["type"] = "item", 		["image"] = "nightvision.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,	   	["combinable"] = nil,   ["description"] = "These allow you to see in the dark"},
```

# ADD THE FOLLOWING TO YOUR QB-INVENTORY/SERVER/MAIN.LUA UNDER THE GIVEITEM COMMAND
```lua
elseif itemData["name"] == "laptop_green" then
	info.uses = 3
elseif itemData["name"] == "laptop_blue" then
	info.uses = 3
elseif itemData["name"] == "laptop_red" then
	info.uses = 3
elseif itemData["name"] == "laptop_gold" then
	info.uses = 3
elseif itemData["name"] == "usb_grey" then
	info.uses = 3
```

# Add to your inventory app.js to display the vault codes as an item:
```js
} else if (itemData.name == "lowervaultcodes") {
	$(".item-info-title").html('<p>'+itemData.label+'</p>')
	$(".item-info-description").html('<p>'+itemData.description+'</p><p>Access Code: '+itemData.info.codes+'</p>');
```

# Add this to your ms-peds config:
```lua
{
	model = `hc_hacker`,
	coords = vector4(517.44, 174.29, 100.25, 158.45),
	gender = 'male'
},
{
	model = `g_f_y_vagos_01`,
	coords = vector4(-458.65, -2274.4, 8.52, 266.45),
	gender = 'male'
},
{
	model = `ig_talcc`,
	coords = vector4(1579.43, 3617.83, 38.78, 166.87),
	gender = 'male'
},
{
	model = `s_f_y_clubbar_01`,
	coords = vector4(-1600.27, 3070.47, 33.66, 137.83),
	gender = 'male'
},
{
	model = `g_f_importexport_01`,
	coords = vector4(-3169.54, 1093.57, 20.86, 27.67),
	gender = 'female'
},
```

# Nightvision
```lua
--Server side:
QBCore.Functions.CreateUseableItem("nightvision", function(source)
    TriggerClientEvent("nightvision:UseNightvision", source)
end)

--Client Side:
local nightvision = false

RegisterNetEvent("nightvision:UseNightvision", function()
    nightvision = not nightvision
    QBCore.Functions.Progressbar("remove_gear", "Nightvision..", 250, false, true, {}, {}, {}, {}, function()
        if nightvision then
            SetNightvision(true)
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "nv", 0.25)
            SetPedPropIndex(PlayerPedId(), 0, 117, 0, true)
        else
            SetNightvision(false)
            SetPedPropIndex(PlayerPedId(), 0, 116, 0, true)
        end
    end)
end)
```

# qb-doorlock:
1. Remove the first Paleto doorlock and replace it with the one Sandy Shores Fleeca bank
Change
```lua
-- Paleto Door 1 opened with security card A
{
	objName = 'v_ilev_cbankvaulgate01',
	objCoords  = vec3(-105.77, 6472.59, 31.81),
	textCoords = vec3(-105.77, 6472.59, 31.81),
	objYaw = 45.0,
	authorizedJobs = { 'police' },
	locked = false,
	pickable = false,
	distance = 1.5
},
```

To:
```lua
{
	authorizedJobs = { ['police'] = 0 },
	distance = 2,
	objYaw = 0.0,
	doorRate = 1.0,
	fixText = false,
	objName = -1591004109,
	objCoords = vec3(1172.291138, 2713.146240, 38.386253),
	doorType = 'door',
	audioRemote = false,
},
```

2. Set the following door's pickable state on false (so that it has to be thermited)
```lua
-- First Pacific Door opened with lockpick
{
	objName = 'hei_v_ilev_bk_gate_pris',
	objCoords  = vec3(257.41, 220.25, 106.4),
	textCoords = vec3(257.41, 220.25, 106.4),
	authorizedJobs = { 'police' },
	objYaw = -20.0,
	locked = true,
	pickable = false,
	distance = 1.5
},
```