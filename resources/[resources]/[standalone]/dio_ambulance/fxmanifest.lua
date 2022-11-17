fx_version 'cerulean'
game 'gta5'

author 'Dioxazine'
version '1.0.0'
lua54 'yes'

client_script 'client.lua'
server_script 'server.lua'
shared_script 'config.lua'
escrow_ignore {
	'README.md',  -- Only ignore one file
  }

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/images/*',
}



--Add to items--
--[[
	["advil"] 		 	 	 	 = {["name"] = "advil",           			["label"] = "Advil",	 			["weight"] = 25, 		["type"] = "item", 		["image"] = "advil.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Generic Name: Ibuprofen"},
	["tylenol"] 		 	 	 = {["name"] = "tylenol",           		["label"] = "Tylenol",	 			["weight"] = 25, 		["type"] = "item", 		["image"] = "tylenol.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Generic Name: Acetaminophen"},
	["morphine"] 		 	 	 = {["name"] = "morphine",           		["label"] = "Morphine",	 			["weight"] = 25, 		["type"] = "item", 		["image"] = "morphine.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Makes the pain go away."},
	["amoxicillin"] 		 	 = {["name"] = "amoxicillin",           	["label"] = "Amoxicillin",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "amoxicillin.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Kills all the bacteria."},
	["narcan"] 		 	 	 	 = {["name"] = "narcan",           			["label"] = "Narcan",	 			["weight"] = 25, 		["type"] = "item", 		["image"] = "narcan.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Generic Name: Naloxone"},
	["vitals_machine"] 		 	 = {["name"] = "vitals_machine",           	["label"] = "Vitals Machine",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "vitals_machine.png", 	["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = false,   ["description"] = "A machine that displays a person's vital signs."},
	["dopram"] 		 	 	 	 = {["name"] = "dopram",           			["label"] = "Dopram",	 			["weight"] = 25, 		["type"] = "item", 		["image"] = "doxapram.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Generic Name: Doxapram."},
	["ivbag"] 		 	 	 	 = {["name"] = "ivbag",           			["label"] = "Fluids Bag",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "ivbag.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Fluid bag filled with 1L of NS."},
	["oxygenmask"] 		 	 	 = {["name"] = "oxygenmask",           		["label"] = "Oxygen Mask",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "oxygenmask.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Face Mask that provides oxygen."},
	["epipen"] 		 	 	 	 = {["name"] = "epipen",           			["label"] = "EpiPen",	 			["weight"] = 25, 		["type"] = "item", 		["image"] = "epipen.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Pen filled with Epinephrine."},
	["iv"] 		 	 	 	     = {["name"] = "iv",           			    ["label"] = "IV Needle",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "iv.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "IV Needle 20G"},
	["hydralazine"] 		 	 = {["name"] = "hydralazine",           	["label"] = "Hydralazine",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "hydralazine.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Hydralazine."},
	["adenosine"] 		 	 	 = {["name"] = "adenosine",           		["label"] = "Adenosine",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "adenosine.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "Adenosine"},
	["cpr"] 		 	 	     = {["name"] = "cpr",           		    ["label"] = "CPR Machine",	 		["weight"] = 25, 		["type"] = "item", 		["image"] = "cpr.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = true,   ["description"] = "An advanced medical device that performs CPR on a patient."},
]]
dependency '/assetpacks'