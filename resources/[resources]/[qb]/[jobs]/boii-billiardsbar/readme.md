-------------------------------
---------- CASE#2506 ----------
-------------------------------

### BOII | DEVELOPMENT - BILLIARDS BAR JOB SCRIPT ###

Here we have an indepth job for your billiards bar mlo!
Script covers everything you could want from a bar work job!
You can pull pints, hard liquor, mix cocktails, prepare food or even make your citizens a coffee for the drive home!
Job store to purchase ingredients and storage location setup!
Wardrobe location in the office and you can even feed your pet snake to reduce stress!
31 consumables ready to add to your city!
Drunk effects included!

### USAGE ###

- Third-eye targeting for all locations
- Target computer to go on/off duty
- Target coat rack to use wardrobe
- Target safe to use job storage
- Target snake to collect mice and feed to remove stress
- Target pumps to pull pints
- Target liquor to pull glasses of hard liquor
- Target cocktail mixer to mix cocktails
- Target coffee machine to make hot drinks
- Target microwave to cook food
- Combine drinks in inventory to mix aditional drinks
- Target cash register to bill customers
- Target wall outside to access vehicle spawner

### INSTALL ###

1) Customise `config.lua` to your liking (this is pretty extensive sorry)
2) Add `boii-billiardsbar` into your server resources
3) Add `boii-billiardsbar` to your server config ensuring all requirements are ensured before `boii-billiardsbar` refer to `load-order` in our discord F.A.Q if unsure
4) Add job and item information provided below into your `qb-core/shared.lua` or `qb-core/shared/jobs.lua` and `qb-core/shared/items.lua` respectively
5) Add item images provided into your `qb-inventory/html/images`
6) Restart your city
7) Enjoy!

### REQUIREMENTS ### 
-- You should have all required resources already with your base qbcore repo
qb-menu - https://github.com/qbcore-framework/qb-menu
qb-input - https://github.com/qbcore-framework/qb-input
qb-target - https://github.com/BerkieBb/qb-target
progressbar - https://github.com/qbcore-framework/progressbar

### SHARED.LUA INFORMATION ###
-- Job information
["billiards"] = {
		label = "Billiards Bar",
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Trial',
				payment = 25
		},
			['1'] = {
				name = 'Apprentice Bartender',
				payment = 50
		},
			['2'] = {
				name = 'Bartender',
				payment = 75
		},
        },
			['2'] = {
				name = 'Supervisor',
				payment = 100
		},
        },
			['2'] = {
				name = 'Manager',
                isboss = true,
				payment = 125
		},
			['3'] = {
				name = 'Owner',
				isboss = true,
				payment = 150
			},
		},
	},

-- Item information

	-- Billiards bar
    ["pintglass"]                = {["name"] = "pintglass",                 ["label"] = "Pint Glass",               ["weight"] = 200,       ["type"] = "item",      ["image"] = "pintglass.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A standard pint glass."},
    ["smallglass"]               = {["name"] = "smallglass",                ["label"] = "Small Glass",              ["weight"] = 200,       ["type"] = "item",      ["image"] = "smallglass.png",           ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A small drinking glass"},
    ["emptycup"]                 = {["name"] = "emptycup",                	["label"] = "Cup",               		["weight"] = 200,       ["type"] = "item",      ["image"] = "emptycup.png",             ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A empty cup for tea or coffee."},
    ["wineglass"]                = {["name"] = "wineglass",                 ["label"] = "Wine Glass",               ["weight"] = 200,       ["type"] = "item",      ["image"] = "wineglass.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for wine"},
    ["cocktailglass"]            = {["name"] = "cocktailglass",             ["label"] = "Cocktail Glass",           ["weight"] = 200,       ["type"] = "item",      ["image"] = "cocktailglass.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for cock... tails"},
    ["pint_ambeer"]              = {["name"] = "pint_ambeer",               ["label"] = "Pint of AM Beer",          ["weight"] = 400,       ["type"] = "item",      ["image"] = "pint_ambeer.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Morning sun!"},
    ["pint_piswasser"]           = {["name"] = "pint_piswasser",            ["label"] = "Pint of Piswasser",        ["weight"] = 400,       ["type"] = "item",      ["image"] = "pint_piswasser.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Your in for a good time!"},
    ["pint_logger"]              = {["name"] = "pint_logger",               ["label"] = "Pint of Logger",           ["weight"] = 400,       ["type"] = "item",      ["image"] = "pint_logger.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "The beer that brings the forest down!"},
    ["pint_dusche"]              = {["name"] = "pint_dusche",               ["label"] = "Pint of Dusche Gold",      ["weight"] = 400,       ["type"] = "item",      ["image"] = "pint_dusche.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Golden shower!"},
	["sprunk"]         	         = {["name"] = "sprunk",         			["label"] = "Sprunk",       			["weight"] = 100,       ["type"] = "item",      ["image"] = "sprunk.png",     			["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sprunk!"},
    ["glass_whiskey"]            = {["name"] = "glass_whiskey",             ["label"] = "Glass of Whiskey",         ["weight"] = 200,       ["type"] = "item",      ["image"] = "glass_whiskey.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = {accept = {"kurkakola"}, reward = "glass_whiskeycoke", anim = {["dict"] = "anim@amb@clubhouse@bar@drink@one", ["lib"] = "one_bartender", ["text"] = "Mixing Whiskey and Coke..", ["timeOut"] = 5500,}},   ["description"] = "A small glass of whiskey!"},
    ["glass_vodka"]              = {["name"] = "glass_vodka",               ["label"] = "Glass of Vodka",           ["weight"] = 200,       ["type"] = "item",      ["image"] = "glass_vodka.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = {accept = {"sprunk"}, reward = "glass_vodkalemon", anim = {["dict"] = "anim@amb@clubhouse@bar@drink@one", ["lib"] = "one_bartender", ["text"] = "Mixing Vodka Lemonade..", ["timeOut"] = 5500,}},   ["description"] = "A small glass of vodka!"},
    ["glass_rum"]                = {["name"] = "glass_rum",                 ["label"] = "Glass of Rum",             ["weight"] = 200,       ["type"] = "item",      ["image"] = "glass_rum.png",          	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = {accept = {"sprunk"}, reward = "glass_rumlemon", anim = {["dict"] = "anim@amb@clubhouse@bar@drink@one", ["lib"] = "one_bartender", ["text"] = "Mixing Rum and Lemonade..", ["timeOut"] = 5500,}},   ["description"] = "A small glass of vodka!"},
	
    ["glass_whiskeycoke"]        = {["name"] = "glass_whiskeycoke",         ["label"] = "Glass of Whiskey Coke",    ["weight"] = 200,       ["type"] = "item",      ["image"] = "glass_whiskeycoke.png",    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A small glass of whiskey and coke!"},
    ["glass_rumlemon"]           = {["name"] = "glass_rumlemon",          	["label"] = "Glass of Rum Lemonade",  	["weight"] = 200,       ["type"] = "item",      ["image"] = "glass_rumlemon.png",     	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A small glass of rum lemonade!"},	
	["glass_vodkalemon"]         = {["name"] = "glass_vodkalemon",          ["label"] = "Glass of Vodka Lemonade",  ["weight"] = 200,       ["type"] = "item",      ["image"] = "glass_vodkalemon.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A small glass of vodka lemonade!"},

	["steakpie"]         	     = {["name"] = "steakpie",         			["label"] = "Microwavable Steak Pie",   ["weight"] = 400,       ["type"] = "item",      ["image"] = "steakpie.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable steak pie!"},
	["chickenpie"]         	     = {["name"] = "chickenpie",         		["label"] = "Microwavable Chicken Pie", ["weight"] = 400,       ["type"] = "item",      ["image"] = "chickenpie.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable chicken and mushroom pie!"},
	["meatpie"]         	     = {["name"] = "meatpie",         			["label"] = "Microwavable Meat Pie",    ["weight"] = 400,       ["type"] = "item",      ["image"] = "meatpie.png",     	        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable meat pie!"},
	["cheesepie"]         	     = {["name"] = "cheesepie",         	    ["label"] = "Microwavable Cheese Pie",  ["weight"] = 400,       ["type"] = "item",      ["image"] = "cheesepie.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable cheese and onion pie!"},
	["cookedsteakpie"]         	 = {["name"] = "cookedsteakpie",         	["label"] = "Steak Pie",    			["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedsteakpie.png",     	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked steak pie!"},
	["cookedchickenpie"]         = {["name"] = "cookedchickenpie",         	["label"] = "Chicken Pie",       		["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedchickenpie.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked chicken and mushroom pie!"},
	["cookedmeatpie"]         	 = {["name"] = "cookedmeatpie",         	["label"] = "Meat Pie",       			["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedmeatpie.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked meat pie!"},
	["cookedcheesepie"]          = {["name"] = "cookedcheesepie",         	["label"] = "Cheese Pie",       		["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedcheesepie.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked cheese and onion pie!"},

	["mwburger"]          		 = {["name"] = "mwburger",         			["label"] = "Microwave Burger",   		["weight"] = 300,       ["type"] = "item",      ["image"] = "mwburger.png",      		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable burger!"},
	["mwcburger"]          		 = {["name"] = "mwcburger",         		["label"] = "Microwave Cheeseburger",   ["weight"] = 300,       ["type"] = "item",      ["image"] = "mwcburger.png",      		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable cheeseburger!"},
	["mwbcburger"]          	 = {["name"] = "mwbcburger",         		["label"] = "Microwave Bacon Burger",   ["weight"] = 300,       ["type"] = "item",      ["image"] = "mwbcburger.png",      		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A microwavable bacon cheeseburger!"},
	["cookedmwburger"]           = {["name"] = "cookedmwburger",        	["label"] = "Burger",   				["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedmwburger.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked microwavable burger!"},
	["cookedmwcburger"]          = {["name"] = "cookedmwcburger",        	["label"] = "Cheeseburger",   			["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedmwcburger.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked microwavable cheeseburger!"},
	["cookedmwbcburger"]         = {["name"] = "cookedmwbcburger",        	["label"] = "Bacon Cheeseburger",   	["weight"] = 300,       ["type"] = "item",      ["image"] = "cookedmwbcburger.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cooked microwavable bacon cheeseburger!"},


	["livemouse"]         	     = {["name"] = "livemouse",         		["label"] = "Live Mouse",    			["weight"] = 450,       ["type"] = "item",      ["image"] = "livemouse.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A mouse! A snakes favorite meal!"},
    ["cupcoffee"]                = {["name"] = "cupcoffee",                	["label"] = "Cup of Coffee",            ["weight"] = 200,       ["type"] = "item",      ["image"] = "cupcoffee.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = {accept = {"glass_whiskey"}, reward = "irishcoffee", anim = {["dict"] = "anim@amb@clubhouse@bar@drink@one", ["lib"] = "one_bartender", ["text"] = "Making Irish Coffee..", ["timeOut"] = 5500,}},   ["description"] = "A cup of coffee."},
	["cuptea"]                	 = {["name"] = "cuptea",                	["label"] = "Cup of Tea",               ["weight"] = 200,       ["type"] = "item",      ["image"] = "cuptea.png",            	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cup of tea."},
	["irishcoffee"]              = {["name"] = "irishcoffee",               ["label"] = "Irish Coffee",             ["weight"] = 200,       ["type"] = "item",      ["image"] = "irishcoffee.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cup of irish coffee."},
	["redwoodcigs"]              = {["name"] = "redwoodcigs",               ["label"] = "Redwood Cigarettes",       ["weight"] = 200,       ["type"] = "item",      ["image"] = "redwoodcigs.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Be a real man. Smoke Redwood!"},
	["debonairecigs"]            = {["name"] = "debonairecigs",             ["label"] = "Debonaire Cigarettes",     ["weight"] = 200,       ["type"] = "item",      ["image"] = "debonairecigs.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A fresh American taste."},
--
	["cherry"]            		 = {["name"] = "cherry",             		["label"] = "Cherry",     				["weight"] = 20,        ["type"] = "item",      ["image"] = "cherry.png",        		["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cherry!"},
	["lime"]            		 = {["name"] = "lime",             			["label"] = "Lime",     				["weight"] = 40,        ["type"] = "item",      ["image"] = "lime.png",        		    ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lime!"},
	["lemon"]            		 = {["name"] = "lemon",             		["label"] = "Lemon",     				["weight"] = 40,        ["type"] = "item",      ["image"] = "lemon.png",        		["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lemon!"},	
	["pineapple"]                = {["name"] = "pineapple",             	["label"] = "Pineapple",     			["weight"] = 60,        ["type"] = "item",      ["image"] = "pineapple.png",        	["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lemon!"},
	["coconut"]            		 = {["name"] = "coconut",             		["label"] = "Coconut",     				["weight"] = 80,        ["type"] = "item",      ["image"] = "coconut.png",        		["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Coconut!"},
	["cranberry"]            	 = {["name"] = "cranberry",             	["label"] = "Cranberry",     			["weight"] = 20,        ["type"] = "item",      ["image"] = "cranberry.png",        	["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cranberry!"},
--
	["whiskeysour"]            	 = {["name"] = "whiskeysour",             	["label"] = "Whiskey Sour",     	    ["weight"] = 400,       ["type"] = "item",      ["image"] = "whiskeysour.png",        	["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Whiskey Sour!"},
	["whiskeysmash"]             = {["name"] = "whiskeysmash",             	["label"] = "Whiskey Smash",     	    ["weight"] = 400,       ["type"] = "item",      ["image"] = "whiskeysmash.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Whiskey Smash!"},
	["bloodandsand"]             = {["name"] = "bloodandsand",             	["label"] = "Blood and Sand",     	    ["weight"] = 400,       ["type"] = "item",      ["image"] = "bloodandsand.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Blood & Sand!"},
	["pinacolada"]               = {["name"] = "pinacolada",             	["label"] = "Pina Colada",     	    	["weight"] = 400,       ["type"] = "item",      ["image"] = "pinacolada.png",           ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Pina Colada!"},
	["zombie"]                   = {["name"] = "zombie",             		["label"] = "Zombie",     	    		["weight"] = 400,       ["type"] = "item",      ["image"] = "zombie.png",           	["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Zombie!"},
	["maitai"]               	 = {["name"] = "maitai",             		["label"] = "Mai Tai",     	    		["weight"] = 400,       ["type"] = "item",      ["image"] = "maitai.png",           	["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Mai Tai!"},
	["appletini"]                = {["name"] = "appletini",             	["label"] = "Appletini",     	    	["weight"] = 400,       ["type"] = "item",      ["image"] = "appletini.png",            ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Cubra Libre!"},
	["cosmopolitan"]             = {["name"] = "cosmopolitan",             	["label"] = "Cosmopolitan",     	    ["weight"] = 400,       ["type"] = "item",      ["image"] = "cosmopolitan.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Cosmopolitan!"},
	["bloodymary"]             	 = {["name"] = "bloodymary",             	["label"] = "bloodymary",     	        ["weight"] = 400,       ["type"] = "item",      ["image"] = "bloodymary.png",           ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Bloody Mary!"},
--

### PREVIEW ###
https://www.youtube.com/watch?v=_8LqWeRZbm0
### SUPPORT ### 
https://discord.gg/MUckUyS5Kq