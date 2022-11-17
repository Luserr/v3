----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

### BOII | DEVELOPMENT - JOBS: WHITE WIDOW ###

Here we have the most in depth dispensary script available!
You can harvest 8 different strains. 
Trim your crops into bags to sell to customers. 
Or why not roll them into joints, or prepare edibles!
Script is heavily customisable through config.lua

Script is protected by FiveM native escrow so please be aware some code you will not have access to. 
However this will not affect script functions!

All credits to † INFY †#8209 of SkylineRP for the edibles table :)

### USAGE ###

- Third-eye for all interactions
- Target back table in office to clock on duty
- Target boss desk for job management
- Target safe in office for job storage
- Target EPOS machines to take payments *(all 3 locations are set up)*
- Target counter to purchase stock items
- Target coat rack to change outfits
- Target plants to harvest crops *(8 different strains set up)*
- Target tables to trim crops into bags
- Target edibles table to prepare gummies *(8 types one for each strain)*
- Target counter upstairs to roll joint *(8 types one for each strain)*
- Target bong tables to hit the bong *(8 types one for each strain)*
- Target snack table to purchase snacks
- Open menu to view all preset items

### INSTALL ###

1) Customise `config.lua` to your liking do not forget to select the correct mlo
2) Drag and drop `boii-whitewidow` into your server resources
3) Add `ensure boii-whitewidow` into your server.cfg 
4) Copy images from `boii-whitewidow/html/images` into your `qb-inventory/html/images`
5) Add the information under ### BOSS MENU ### into your sql `management_funds`
6) Add the job information found under ### QB-CORED/SHARED/JOBS.LUA ### into your `qb-core/shared/jobs.lua`
7) Add the item information found under ### QB-CORE/SHARED/ITEMS.LUA ### into your `qb-core/shared/items.lua`

### BOSS MENU ###
-- Add the following into your server sql `management_funds` table
-- Ensure that you place the correct job ID for your server
-- Ensure that you have named the job here the same as you Config.JobSettings.JobName

INSERT INTO `management_funds` (`id`, `job_name`, `amount`, `type`) VALUES
(13, 'whitewidow', 0, 'boss'),

### QB-CORED/SHARED/JOBS.LUA ###
-- Inset the following into your `qb-core/shared/jobs.lua`
-- Ensure that you have named the job here the same as you Config.JobSettings.JobName

['whitewidow'] = {
		label = 'White Widow',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 50
            },
			['1'] = {
                name = 'Deliveries',
                payment = 75
            },
			['2'] = {
                name = 'Sales',
                payment = 100
            },
			['3'] = {
                name = 'Grower',
                payment = 125
            },
			['4'] = {
                name = 'Assistant Manager',
                payment = 150
            },
			['5'] = {
                name = 'Manager',
				isboss = true,
                payment = 175
            },
			['6'] = {
                name = 'Owner',
				isboss = true,
                payment = 200
            },
        },
	},

### QB-CORE/SHARED/ITEMS.LUA ###
-- Insert the items provided into your `qb-core/shared/items.lua`
-- Remember to edit items accordingly if you have edited them in the `config.lua`

	--<!>-- WHITE WIDOW --<!>--
	-- Tools
	['drug_shears'] 			    = {['name'] = 'drug_shears', 		        	['label'] = 'Trimming Shears', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'drug_shears.png', 					['unique'] = false,    	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A set of high quality trimming shears.'},	
	['drug_grinder'] 			    = {['name'] = 'drug_grinder', 		        	['label'] = 'Tobacco Grinder', 		    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'drug_grinder.png', 				['unique'] = false,    	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A tobacco grinder or something more..'},	
	['rollingpapers'] 				= {['name'] = 'rollingpapers', 					['label'] = 'Rolling Papers', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'rollingpapers.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Paper made specifically for encasing and smoking tobacco or cannabis.'},
	['lighter'] 			 		= {['name'] = 'lighter', 						['label'] = 'Lighter', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lighter.png', 						['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A lighter, everybody has to have one of these on hand!'},
	['empty_weed_bag'] 				= {['name'] = 'empty_weed_bag', 			    ['label'] = 'Resealable Bag', 			['weight'] = 1, 		['type'] = 'item', 		['image'] = 'empty_weed_bag.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A small empty bag'},
	['gummybearmould'] 				= {['name'] = 'gummybearmould', 			    ['label'] = 'Gummy Bear Mould', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gummybearmould.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A BPA free mould, shaped like a bear!'},
	['wwmenu'] 						= {['name'] = 'wwmenu', 			    		['label'] = 'White Widow Menu', 		['weight'] = 10, 		['type'] = 'item', 		['image'] = 'wwmenu.png', 						['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A menu for the white widoe medical dispensary!'},

	-- Ingredients
	['gelatine'] 					= {['name'] = 'gelatine', 			    		['label'] = 'Gelatine', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gelatine.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A packet of gelatine, good for making sweets!'},
	['rawhoney'] 					= {['name'] = 'rawhoney', 			    		['label'] = 'Raw Honey', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'rawhoney.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A jar of rawhoney, good for making sweets!'},

	-- Crops
	['weed_skunk_cbd_crop'] 	 	= {['name'] = 'weed_skunk_cbd_crop', 			['label'] = 'CBD Skunk Crop', 			['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_skunk_cbd_crop.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD Skunk!'},
	['weed_og-kush_cbd_crop'] 	 	= {['name'] = 'weed_og-kush_cbd_crop', 			['label'] = 'CBD OG Kush Crop', 		['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_og-kush_cbd_crop.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD OG Kush'},
	['weed_white-widow_cbd_crop'] 	= {['name'] = 'weed_white-widow_cbd_crop',  	['label'] = 'CBD White Widow Crop', 	['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_white-widow_cbd_crop.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD White Widow'},
	['weed_ak47_cbd_crop'] 		 	= {['name'] = 'weed_ak47_cbd_crop', 	    	['label'] = 'CBD AK 47 Crop', 			['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_ak47_cbd_crop.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD AK47!'},
	['weed_amnesia_cbd_crop'] 		= {['name'] = 'weed_amnesia_cbd_crop',  		['label'] = 'CBD Amnesia Crop', 		['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_amnesia_cbd_crop.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD Amnesia!'},
	['weed_purple-haze_cbd_crop'] 	= {['name'] = 'weed_purple-haze_cbd_crop', 	    ['label'] = 'CBD Purple-Haze Crop', 	['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_purple-haze_cbd_crop.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD Purple-Haze!'},
	['weed_gelato_cbd_crop'] 		= {['name'] = 'weed_gelato_cbd_crop',  			['label'] = 'CBD Gelato Crop', 			['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_gelato_cbd_crop.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD Gelato!'},
	['weed_zkittlez_cbd_crop'] 		= {['name'] = 'weed_zkittlez_cbd_crop',  		['label'] = 'CBD Zkittlez Crop', 		['weight'] = 1200, 		['type'] = 'item', 		['image'] = 'weed_zkittlez_cbd_crop.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A crop of CBD Zkittlez!'},

	-- Bags
	['weed_skunk_cbd'] 			 	= {['name'] = 'weed_skunk_cbd', 				['label'] = 'CBD Skunk 2g', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_skunk_cbd.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD Skunk!'},
	['weed_og-kush_cbd'] 		 	= {['name'] = 'weed_og-kush_cbd', 				['label'] = 'CBD OGKush 2g', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_og-kush_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD OG Kush!'},
	['weed_white-widow_cbd'] 	 	= {['name'] = 'weed_white-widow_cbd', 	    	['label'] = 'CBD White Widow 2g', 		['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_white-widow_cbd.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD White Widow!'},
	['weed_ak47_cbd'] 			 	= {['name'] = 'weed_ak47_cbd', 					['label'] = 'CBD AK47 2g', 				['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_ak47_cbd.png', 			    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD AK47!'},
	['weed_amnesia_cbd'] 			= {['name'] = 'weed_amnesia_cbd',  				['label'] = 'CBD Amnesia 2g', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_amnesia_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD Amnesia!'},
	['weed_purple-haze_cbd'] 		= {['name'] = 'weed_purple-haze_cbd', 	    	['label'] = 'CBD Purple-Haze 2g', 		['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_purple-haze_cbd.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD Purple-Haze!'},
	['weed_gelato_cbd'] 			= {['name'] = 'weed_gelato_cbd',  				['label'] = 'CBD Gelato 2g', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_gelato_cbd.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD Gelato!'},
	['weed_zkittlez_cbd'] 			= {['name'] = 'weed_zkittlez_cbd',  			['label'] = 'CBD Zkittles 2g', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_zkittlez_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'A 2g bag of CBD Zkittlez!'},
	
	-- Joints
	['weed_skunk_cbd_joint'] 	    = {['name'] = 'weed_skunk_cbd_joint', 			['label'] = 'CBD Skunk Joint', 			['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_skunk_cbd_joint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that skunk son!'},
	['weed_og-kush_cbd_joint'] 		= {['name'] = 'weed_og-kush_cbd_joint', 		['label'] = 'CBD OG Kush Joint', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_og-kush_cbd_joint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that og kush son!'},
	['weed_white-widow_cbd_joint'] 	= {['name'] = 'weed_white-widow_cbd_joint', 	['label'] = 'CBD White Widow Joint', 	['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_white-widow_cbd_joint.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that white widow son!'},
	['weed_ak47_cbd_joint'] 		= {['name'] = 'weed_ak47_cbd_joint', 			['label'] = 'CBD AK 47 Joint', 			['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_ak47_cbd_joint.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that ak47 son!'},
	['weed_amnesia_cbd_joint'] 		= {['name'] = 'weed_amnesia_cbd_joint',  		['label'] = 'CBD Amnesia Joint', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_amnesia_cbd_joint.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that amnesia son!'},
	['weed_purple-haze_cbd_joint'] 	= {['name'] = 'weed_purple-haze_cbd_joint', 	['label'] = 'CBD Purple-Haze Joint', 	['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_purple-haze_cbd_joint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that purple haze son!'},
	['weed_gelato_cbd_joint'] 		= {['name'] = 'weed_gelato_cbd_joint',  		['label'] = 'CBD Gelato Joint', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_gelato_cbd_joint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that gelato son!'},
	['weed_zkittlez_cbd_joint'] 	= {['name'] = 'weed_zkittlez_cbd_joint',  		['label'] = 'CBD Zkittlez Joint', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'weed_zkittlez_cbd_joint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Light up that zkittlez son!'},

	-- Edibles
	['gummy_skunk_cbd'] 			= {['name'] = 'gummy_skunk_cbd', 			    ['label'] = 'CBD Skunk Gummy', 			['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_skunk_cbd.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd skunk gummy bear!'},
	['gummy_og-kush_cbd'] 			= {['name'] = 'gummy_og-kush_cbd', 			    ['label'] = 'CBD OG-Kush Gummy', 		['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_og-kush_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd og kush gummy bear!'},
	['gummy_white-widow_cbd'] 		= {['name'] = 'gummy_white-widow_cbd', 			['label'] = 'CBD White-Widow Gummy', 	['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_white-widow_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd white widow gummy bear!'},
	['gummy_ak47_cbd'] 				= {['name'] = 'gummy_ak47_cbd', 			    ['label'] = 'CBD AK47 Gummy', 			['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_ak47_cbd.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd ak47 gummy bear!'},
	['gummy_amnesia_cbd'] 			= {['name'] = 'gummy_amnesia_cbd', 			    ['label'] = 'CBD Amnesia Gummy', 		['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_amnesia_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd og kush gummy bear!'},
	['gummy_purple-haze_cbd'] 		= {['name'] = 'gummy_purple-haze_cbd', 			['label'] = 'CBD Purple-Haze Gummy', 	['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_purple-haze_cbd.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd purple haze gummy bear!'},
	['gummy_gelato_cbd'] 			= {['name'] = 'gummy_gelato_cbd', 			    ['label'] = 'CBD Gelato Gummy', 		['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_gelato_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd gelato gummy bear!'},
	['gummy_zkittlez_cbd'] 			= {['name'] = 'gummy_zkittlez_cbd', 			['label'] = 'CBD Zkittlez Gummy', 		['weight'] = 4, 		['type'] = 'item', 		['image'] = 'gummy_zkittlez_cbd.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A edible cbd zkittlez gummy bear!'},
	

### PREVIEWS ###
V1.4.1 https://www.youtube.com/shorts/27BzWXHAY3s
V1.4.0 https://www.youtube.com/watch?v=SXQ7cIz0tlY
### SUPPORT ###
https://discord.gg/MUckUyS5Kq

