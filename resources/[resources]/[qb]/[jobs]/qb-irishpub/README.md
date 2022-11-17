## Setup

- If you using qb-tequilala(qua-tequilala) check `withtequilala.lua` file. 



- qb-core/shared.lua or qb-core>shared>items.lua

```
['15clrum'] 			    = {['name'] = '15clrum', 			        ['label'] = '1.5cl Rum', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1.5 Cl Rum'},
['3clrum'] 			    	= {['name'] = '3clrum', 			        ['label'] = '3cl Rum', 			    	['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '3 Cl Rum'},
['45clrum'] 			    = {['name'] = '45clrum', 			        ['label'] = '4.5cl Rum', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '4.5 Cl Rum'},
['6clrum'] 			   		= {['name'] = '6clrum', 			        ['label'] = '6cl Rum', 			    	['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '6Cl Rum'},
['75clrum'] 			    = {['name'] = '75clrum', 			        ['label'] = '7.5cl Rum', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '7.5 Cl Rum'},
['1cuprum'] 			    = {['name'] = '1cuprum', 			        ['label'] = '1 Cup Rum', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '1cup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Rum'},	
-- Vodka
['15clvodka'] 			    = {['name'] = '15clvodka', 			        ['label'] = '1.5cl vodka', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1.5 Cl vodka'},
['3clvodka'] 			    = {['name'] = '3clvodka', 			        ['label'] = '3cl vodka', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '3 Cl vodka'},
['45clvodka'] 			    = {['name'] = '45clvodka', 			        ['label'] = '4.5cl vodka', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '4.5 Cl vodka'},
['6clvodka'] 			    = {['name'] = '6clvodka', 			        ['label'] = '6cl vodka', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '6Cl vodka'},
['75clvodka'] 			    = {['name'] = '75clvodka', 			        ['label'] = '7.5cl vodka', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '7.5 Cl vodka'},
['1cupvodka'] 			    = {['name'] = '1cupvodka', 			        ['label'] = '1 Cup vodka', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '1cup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup vodka'},	
--Whiskey
['15clwhiskey'] 			= {['name'] = '15clwhiskey', 			    ['label'] = '1.5cl Whiskey', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1.5 Cl whiskey'},
['3clwhiskey'] 			    = {['name'] = '3clwhiskey', 			    ['label'] = '3cl Whiskey', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '3 Cl whiskey'},
['45clwhiskey'] 			= {['name'] = '45clwhiskey', 			    ['label'] = '4.5cl Whiskey', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '4.5 Cl whiskey'},
['6clwhiskey'] 			    = {['name'] = '6clwhiskey', 			    ['label'] = '6cl Whiskey', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '6Cl whiskey'},
['75clwhiskey'] 			= {['name'] = '75clwhiskey', 			    ['label'] = '7.5cl Whiskey', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '7.5 Cl whiskey'},
['1cupwhiskey'] 			= {['name'] = '1cupwhiskey', 			    ['label'] = '1 Cup Whiskey', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = '1cup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup whiskey'},	

-- Irish Whiskey 

['dead_rabbit_irish'] 		= {['name'] = 'dead_rabbit_irish', 	    ['label'] = 'Dead Rabbit Irish', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'dead_rabbit_irish.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Dead Rabbit Irish'},	
['tullamoredew'] 			= {['name'] = 'tullamoredew', 	        ['label'] = 'Tullamore D.E.W.', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'tullamoredew.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Tullamore D.E.W.'},	
['redbreast15year'] 		= {['name'] = 'redbreast15year', 	    ['label'] = 'Redbreast 15 Year', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'redbreast15year.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Redbreast 15 Year'},	
['bushmillsoriginal'] 		= {['name'] = 'bushmillsoriginal', 	    ['label'] = 'Bushmills Original', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bushmillsoriginal.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup Bushmills Original'},	


-- Wine	
['15clwine'] 			    = {['name'] = '15clwine', 			        ['label'] = '1.5cl Wine', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1.5 Cl wine'},
['3clwine'] 			    = {['name'] = '3clwine', 			        ['label'] = '3cl Wine', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '3 Cl wine'},
['45clwine'] 			    = {['name'] = '45clwine', 			        ['label'] = '4.5cl Wine', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '4.5 Cl wine'},
['6clwine'] 			    = {['name'] = '6clwine', 			        ['label'] = '6cl Wine', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '6Cl wine'},
['75clwine'] 			    = {['name'] = '75clwine', 			        ['label'] = '7.5cl Wine', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '7.5 Cl wine'},
['1cupwine'] 			    = {['name'] = '1cupwine', 			        ['label'] = '1 Cup Wine', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '1cup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup wine'},	
--Tequila
['15cltequila'] 		    = {['name'] = '15cltequila', 			    ['label'] = '1.5cl Tequila', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1.5 Cl tequila'},
['3cltequila'] 			    = {['name'] = '3cltequila', 			    ['label'] = '3cl Tequila', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '3 Cl tequila'},
['45cltequila'] 			= {['name'] = '45cltequila', 			    ['label'] = '4.5cl Tequila', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '4.5 Cl tequila'},
['6cltequila'] 			    = {['name'] = '6cltequila', 			    ['label'] = '6cl Tequila', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '6Cl tequila'},
['75cltequila'] 			= {['name'] = '75cltequila', 			    ['label'] = '7.5cl Tequila', 			['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '7.5 Cl tequila'},
['1cuptequila'] 			= {['name'] = '1cuptequila', 			    ['label'] = '1 Cup Tequila', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = '1cup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup tequila'},	
---gin
['15clgin'] 			    = {['name'] = '15clgin', 			        ['label'] = '1.5cl Gin', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1.5 Cl gin'},
['3clgin'] 			    	= {['name'] = '3clgin', 			        ['label'] = '3cl Gin', 			    	['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '3 Cl gin'},
['45clgin'] 			    = {['name'] = '45clgin', 			        ['label'] = '4.5cl Gin', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '4.5 Cl gin'},
['6clgin'] 			    	= {['name'] = '6clgin', 			        ['label'] = '6cl Gin', 			    	['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '6Cl gin'},
['75clgin'] 			    = {['name'] = '75clgin', 			        ['label'] = '7.5cl Gin', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'cocktailcab.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '7.5 Cl gin'},
['1cupgin'] 			    = {['name'] = '1cupgin', 			        ['label'] = '1 Cup Gin', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '1cup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'One Cup gin'},	

-- Beer	
['33clbeer'] 			    = {['name'] = '33clbeer', 			        ['label'] = '33 cl Beer', 			    ['weight'] = 10, 		['type'] = 'item', 		['image'] = '33clbeer.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '33 Cl Cup Beer'},
['50clbeer'] 			    = {['name'] = '50clbeer', 			        ['label'] = '50 cl Beer', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeer.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Cup Beer'},	

--- Irish Beer
['50clbeerguinness'] 	    = {['name'] = '50clbeerguinness', 			['label'] = '50 Cl Guinness Beer', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeerguinness.png', ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Guinness Beer'},	
['50clbeermurphy'] 			= {['name'] = '50clbeermurphy', 			['label'] = '50 Cl Murphy', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeermurphy.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Murphy'},	
['50clbeermurphyred'] 	    = {['name'] = '50clbeermurphyred', 			['label'] = '50 cl Murphy Red',         ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeermurphyred.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Murphy Red'},	
['50clbeeririshscout'] 	    = {['name'] = '50clbeeririshscout', 		['label'] = '50 Cl Irish Scout', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeeririshscout.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Irish Scout'},	
['50clbeersmithwick'] 	    = {['name'] = '50clbeersmithwick', 			['label'] = '50 Cl Smithwick’s Ale', 	['weight'] = 500, 		['type'] = 'item', 		['image'] = '50clbeersmithwick.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '50 Cl Smithwick’s Ale'},	
   

--Liquer Menu
['orangejuice'] 			= {['name'] = 'orangejuice', 			    ['label'] = 'Orange Juice', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'orangejuice.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Orange Juice'},	
['bananaliqueur'] 			= {['name'] = 'bananaliqueur', 			    ['label'] = 'Banana Liqueur', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bananaliqueur.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Banana Liqueur'},	
['melonliqueur'] 			= {['name'] = 'melonliqueur', 			    ['label'] = 'Melon Liqueur', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'melonliqueur.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Melon Liqueur'},	
['appleliqueur'] 			= {['name'] = 'appleliqueur', 			    ['label'] = 'Apple Liqueur', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'appleliqueur.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Apple Liqueur'},	
--IceBreaker
['waterice'] 			    = {['name'] = 'waterice', 			        ['label'] = 'Ice', 			    		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'waterice.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'waterice'},	
--Shop 
['cocktailcream'] 			= {['name'] = 'cocktailcream', 			    ['label'] = 'Cocktail Cream', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cocktailcream.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cocktailcream'},	
['lime'] 			    	= {['name'] = 'lime', 			        	['label'] = 'Lime', 			    	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lime.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Lime'},	
['sugar'] 			    	= {['name'] = 'sugar', 			        	['label'] = 'Sugar', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'sugar.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sugar'},	
['cheese'] 			    	= {['name'] = 'cheese', 			        ['label'] = 'Cheese', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cheese.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cheese'},	
['nuts'] 			    	= {['name'] = 'nuts', 			            ['label'] = 'Nuts', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'nuts.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nuts'},	
['bacon'] 			    	= {['name'] = 'bacon', 			            ['label'] = 'Bacon', 			   		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bacon.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bacon'},
['irishsandvic'] 			= {['name'] = 'irishsandvic', 			    ['label'] = 'Irish Sandvic', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'irishsandvic.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Irish Sandvic'},		
-- Coffee
['americano'] 			    = {['name'] = 'americano', 			        ['label'] = 'Americano', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'americano.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Americano'},		

--Coctails
['topbanana'] 			    = {['name'] = 'topbanana', 			        ['label'] = 'Banana Liqueur', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'topbanana.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Top Banana'},	
['mimosa'] 			    	= {['name'] = 'mimosa', 			        ['label'] = 'Mimosa', 			    	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'mimosa.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mimosa'},	
['melonball'] 			    = {['name'] = 'melonball', 			        ['label'] = 'Melon Ball', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'melonball.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'melonball'},	
['appleeden'] 			    = {['name'] = 'appleeden', 			        ['label'] = 'Appleeden', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'appleeden.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'appleeden'},	
['junglejim'] 			    = {['name'] = 'junglejim', 			        ['label'] = 'Jungle Jim', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'junglejim.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'junglejim'},	
['sangria'] 			    = {['name'] = 'sangria', 			        ['label'] = 'Sangria', 			    	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'sangria.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'sangria'},	
['mojito'] 			    	= {['name'] = 'mojito', 			        ['label'] = 'Mojito', 			    	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'mojito.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'mojito'},	
['margarita'] 			    = {['name'] = 'margarita', 			        ['label'] = 'Margarita', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'margarita.png', 	    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'margarita'},	
['sexonthebeach'] 			= {['name'] = 'sexonthebeach', 			    ['label'] = 'Sex On TheBeach', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'sexonthebeach.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'sexonthebeach'},	
['julep'] 			    	= {['name'] = 'julep', 			        	['label'] = 'Julep', 			    	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'julep.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'julep'},	
['plasticcup'] 			    = {['name'] = 'plasticcup', 			        	['label'] = 'Plastic Cup', 			   		['weight'] = 50, 		['type'] = 'item', 		['image'] = 'plasticcup.png', 	    	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'PlasticCup'},	


```

## Job Install
- qb-core > shared.lua > job part or qb-core> shared > jobs.lua

```
["irishpub"] = {
    label = "Irish Pub",
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = "Bartender",
             payment = 50
        },
        ['1'] = {
            name = "Bartender",
            payment = 75
        },
        ['2'] = {
            name = "Bartender",
            payment = 100
        },
        ['3'] = {
            name = "Bartender",
            payment = 125
        },
        ['4'] = {
            name = "CEO",
            isboss = true,
            payment = 150
        },
    },       
},
```
## Boss Menu Install
- qb-bossmenu/config.lua

```
['irishpub'] = vector3(0, 0, -500)
```

## Drinkings 

- qb-smallresources/config.lua 
- Drink or Alcohol select one.

```
ConsumeablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
    ["topbanana"] = math.random(20, 40),
    ["mimosa"] = math.random(20, 40),
    ["melonball"] = math.random(20, 40),
    ["appleeden"] = math.random(20, 40),
    ["junglejim"] = math.random(20, 40),
    ["sangria"] = math.random(20, 40),
    ["mojito"] = math.random(20, 40),
    ["margarita"] = math.random(20, 40),
    ["sexonthebeach"] = math.random(20, 40),
    ["julep"] = math.random(20, 40),
    ["33clbeer"] = math.random(20, 40),
    ["50clbeer"] = math.random(20, 40),
    --- ###If you using qua-tequilala after this line add only
    ["50clbeerguinness"] = math.random(20, 40),
    ["50clbeermurphy"] = math.random(20, 40),
    ["50clbeermurphyred"] = math.random(20, 40),
    ["50clbeeririshscout"] = math.random(20, 40),
    ["50clbeersmithwick"] = math.random(20, 40),
    ["dead_rabbit_irish"] = math.random(20, 40),
    ["tullamoredew"] = math.random(20, 40),
    ["redbreast15year"] = math.random(20, 40),
    ["bushmillsoriginal"] = math.random(20, 40),
    ["1cupwhiskey"] = math.random(20, 40),
    ["1cupwine"] = math.random(20, 40),
    ["1cupvodka"] = math.random(20, 40),        
    ["1cuprum"] = math.random(20, 40),  
    ["1cupgin"] = math.random(20, 40),  
    ["1cuptequila"] = math.random(20, 40),  
}

ConsumeablesEat = {
    ["irishsandvic"] = math.random(20, 40),  
}

ConsumeablesDrinks = {
    ["americano"] = math.random(20, 40),  
}

```

- qb-smallresources/client/consumables.lua

```

RegisterNetEvent('consumables:client:DrinkAlcohol', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:RemoveItem", itemName, 1)
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


RegisterNetEvent("consumables:client:DrinkBottleBeer",function()
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_beer_bottle",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.14 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCupBeer",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_plastic_cup_02",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = 0.05 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCupRedWineGlass",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "p_wine_glass_s",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.05 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkCupWhiteWineGlass",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_drink_whtwine",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.05 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkTequila",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_tequila",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.09 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


RegisterNetEvent("consumables:client:DrinkCocktail",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cocktail",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.12 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


RegisterNetEvent("consumables:client:DrinkCocktailGlass",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_cocktail_glass",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.12 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

RegisterNetEvent("consumables:client:DrinkWhiskeyBottle",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "ba_prop_battle_whiskey_bottle_2_s",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = 0.01 },
        rotation = { x = 180.0, y = 180.0, z = 0.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


RegisterNetEvent("consumables:client:DrinkStzOpen",function(itemName)
    QBCore.Functions.Progressbar("snort_coke", "Drinking "..QBCore.Shared.Items[itemName]['label'].."", math.random(5000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@world_human_drinking@coffee@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {
        model = "prop_beer_stzopen",
        bone = 28422,
        coords = { x = 0.0, y = 0.0, z = -0.12 },
        rotation = { x = 180.0, y = 180.0, z = 30.0 },
    }, {}, function() -- Done
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesAlcohol[itemName])
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 3 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 3 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
			Effectdrunk()
        end
        
    end, function() -- Cancel
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)


function Effectdrunk()
   local ped = PlayerPedId()
   RequestAnimSet("move_m@drunk@verydrunk")
   SetPedMovementClipset(ped,"move_m@drunk@verydrunk", 0.5)
   StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
   StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
   Citizen.Wait(math.random(4000, 6000))    
   StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
   StopScreenEffect("DrugsMichaelAliensFightIn")
   StopScreenEffect("DrugsMichaelAliensFight")
   StopScreenEffect("DrugsMichaelAliensFightOut")
   Citizen.Wait(7000)
   ResetPedMovementClipset(ped)
   ClearPedTasks(ped)
end


```

- qb-smallresources/server/consumables.lua or server.lua  

```

QBCore.Functions.CreateUseableItem("topbanana", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("mimosa", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCupWhiteWineGlass", src, item.name)
    end 
end)

QBCore.Functions.CreateUseableItem("melonball", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end   
end)


QBCore.Functions.CreateUseableItem("junglejim", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("sangria", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("mojito", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("margarita", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end   
end)

QBCore.Functions.CreateUseableItem("sexonthebeach", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then    
        TriggerClientEvent("consumables:client:DrinkCocktail", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("julep", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end       
end)

QBCore.Functions.CreateUseableItem("33clbeer", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)


QBCore.Functions.CreateUseableItem("50clbeer", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)

---####If you using qua-tequilala after this line add

QBCore.Functions.CreateUseableItem("50clbeerguinness", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)
QBCore.Functions.CreateUseableItem("50clbeermurphy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)
QBCore.Functions.CreateUseableItem("50clbeermurphyred", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)
QBCore.Functions.CreateUseableItem("50clbeeririshscout", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end   
end)
QBCore.Functions.CreateUseableItem("50clbeersmithwick", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupBeer", src, item.name)
    end         
end)

QBCore.Functions.CreateUseableItem("1cuprum", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end     
end)

QBCore.Functions.CreateUseableItem("1cupvodka", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
   
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end        
end)
QBCore.Functions.CreateUseableItem("1cupwine", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkCupWhiteWineGlass", src, item.name)
    end      
end)

QBCore.Functions.CreateUseableItem("1cupwhiskey", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end  
end)

QBCore.Functions.CreateUseableItem("dead_rabbit_irish", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end  
end)
QBCore.Functions.CreateUseableItem("tullamoredew", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end  
end)
QBCore.Functions.CreateUseableItem("redbreast15year", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end      
end)
QBCore.Functions.CreateUseableItem("bushmillsoriginal", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkWhiskeyBottle", src, item.name)
    end    
end)
QBCore.Functions.CreateUseableItem("1cupgin", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)
QBCore.Functions.CreateUseableItem("1cuptequila", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:DrinkTequila", src, item.name)
    end
end)

--##Eats

QBCore.Functions.CreateUseableItem("irishsandvic", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

--##Drinks 


QBCore.Functions.CreateUseableItem("americano", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)


```

## Inreact-Sound

- Open qb-irishpub> assets > sounds > Copy all
- Open Interact-Sound File > client > html > sounds  Paste it.





