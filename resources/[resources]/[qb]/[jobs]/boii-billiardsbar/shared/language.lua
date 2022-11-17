----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

-- Language settings
Language = {    
    -- Third eye
    ['dutyicon'] = 'fas fa-clipboard', -- Icon used by qb-target for on duty location visit; https://fontawesome.com to change
    ['dutylabel'] = 'Clock In/Out', -- Label used by qb-target for on duty location
    ['payicon'] = 'fas fa-cash-register', -- Icon used by qb-target for payment locations visit; https://fontawesome.com to change
    ['paylabel'] = 'Charge Customer', -- Label used by qb-target for payment locations
    ['storageicon'] = 'fas fa-box', -- Icon used by qb-target for storage locations visit; https://fontawesome.com to change
    ['storagelabel'] = 'Open Storage', -- Label used by qb-target for storage locations
    ['shopicon'] = 'fas fa-shopping-basket', -- Icon used by qb-target for shop locations visit; https://fontawesome.com to change
    ['shoplabel'] = 'Purchase Items', -- Label used by qb-target for storage locations
    ['outfiticon'] = 'fas fa-shirt', -- Icon used by qb-target for wardrobe location visit; https://fontawesome.com to change
    ['outfitlabel'] = 'Change Clothes', -- Label used by qb-target for wardrobe location
    ['pumpicon'] = 'fas fa-beer', -- Icon used by qb-target for pump locations visit; https://fontawesome.com to change
    ['pumplabel'] = 'Pull A Pint', -- Label used by qb-target for pump locations
    ['cocktailsicon'] = 'fas fa-cocktail', -- Icon used by qb-target for cocktail location visit; https://fontawesome.com to change
    ['cocktailslabel'] = 'Mix Cocktails', -- Label used by qb-target for cocktail location    
    ['liquoricon'] = 'fas fa-glass-whiskey', -- Icon used by qb-target for liquor location visit; https://fontawesome.com to change
    ['liquorlabel'] = 'Pull Hard Liquor', -- Label used by qb-target for liquor location    
    ['hotdrinksicon'] = 'fas fa-coffee', -- Icon used by qb-target for hot drinks location visit; https://fontawesome.com to change
    ['hotdrinkslabel'] = 'Make A Hot Drink', -- Label used by qb-target hot drinks location 
    ['microwaveicon'] = 'fas fa-utensils', -- Icon used by qb-target for microwave location visit; https://fontawesome.com to change
    ['microwavelabel'] = 'Cook Microwave Food', -- Label used by qb-target for microwave location  
    ['outfiticon'] = 'fas fa-shirt', -- Icon used by qb-target for microwave location visit; https://fontawesome.com to change
    ['outfitlabel'] = 'Change Clothes', -- Label used by qb-target for microwave location 
    ['snakeicon'] = 'fas fa-paw', -- Icon used by qb-target for snake location visit; https://fontawesome.com to change
    ['snakelabel'] = 'Feed The Snake', -- Label used by qb-target for snake location
    ['garageicon'] = 'fas fa-car', -- Icon used by qb-target for garage location visit; https://fontawesome.com to change
    ['garagelabel'] = 'Company Vehicle', -- Label used by qb-target for garage location  
    -- Duty
    ['dutymenuheader'] = 'Clock In/Out', -- Menu header
    ['dutymenuheadertext'] = 'Dont forget to clock in and out!', -- Menu header text
    ['dutytoggle'] = '• Clock In/Out', -- Menu header
    -- Stores
    ['jobstorelabel'] = 'Billards Bar Supplies', -- Label used by inventory for store name
    -- Billing
    ['paymenuheader'] = 'Billiards Bar', -- Menu header
    ['paymenuheadertext'] = 'Charge Customer', -- Menu header text
    ['invoicesent'] = 'Invoice sent successfully!', -- Notification
    ['invoicereceived'] = 'Invoice received!', -- Notification
    ['minamount'] = 'You cant charge someone nothing idiot..', -- Notification
    ['billself'] = 'You cant bill yourself idiot..', -- Notification
    ['billoffline'] = 'You cant bill someone whos not in city idiot..', -- Notification
    ['noaccess'] = 'You are not authorised to make sales..', -- Notification
    ['paytext'] = 'paypal id', -- Input text when charging customers
    ['payamount'] = '$ amount', -- Input text when charging customers
    -- Pumps 
    ['pumpmenuheader'] = 'Pull a Pint', -- Menu header
    ['pumpmenuheadertext'] = 'Required:</p>1x Pint Glass', -- Menu header text
    ['amheader'] = 'AM Beer', -- Menu header
    ['amheadertext'] = 'Mornings golden shower.', -- Menu header text
    ['pisheader'] = 'Piswasser', -- Menu header
    ['pisheadertext'] = 'Youre in for a good time.', -- Menu header text
    ['loggerheader'] = 'Logger', -- Menu header
    ['loggerheadertext'] = 'Best serve with your sister.', -- Menu header text
    ['duscheheader'] = 'Dusche Gold', -- Menu header
    ['duscheheadertext'] = 'Let it pour.', -- Menu header text
    ['pulledpint'] = 'You successfully pulled a pint!', -- Notification
    ['nopintglass'] = 'What are you planning to put the beer in dumbass..', -- Notification
    ['pullingpint'] = 'Pulling Pint..', -- Progressbar
    -- Cocktails
    ['cocktailsmenuheader'] = 'Cocktail Station', -- Menu header
    ['cocktailsmenuheadertext'] = 'Everyone loves a good cocktail!', -- Menu header text
    ['cocktailswhiskeyheader'] = 'Whiskey Cocktails', -- Menu header
    ['cocktailswhiskeyheadertext'] = 'View available recipes!', -- Menu header text
    ['cocktailsrumheader'] = 'Rum Cocktails', -- Menu header
    ['cocktailsrumheadertext'] = 'View available recipes!', -- Menu header text
    ['cocktailsvodkaheader'] = 'Vodka Cocktails', -- Menu header
    ['cocktailsvodkaheadertext'] = 'View available recipes!', -- Menu header text
    ['whiskeysourheader'] = 'Whiskey Sour', -- Menu header
    ['whiskeysourheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Whiskey</p>'..Config.IngredientAmount..'x Lemon</p>'..Config.IngredientAmount..'x Orange', -- Menu header text
    ['whiskeysmashheader'] = 'Whiskey Smash', -- Menu header
    ['whiskeysmashheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Whiskey</p>'..Config.IngredientAmount..'x Lemon</p>'..Config.IngredientAmount..'x Apple', -- Menu header text
    ['bloodsandheader'] = 'Blood and Sand', -- Menu header
    ['bloodsandheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Whiskey</p>'..Config.IngredientAmount2..'x Cherries</p>'..Config.IngredientAmount..'x Orange', -- Menu header text
    ['pinacoladaheader'] = 'Pina Colada', -- Menu header
    ['pinacoladaheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Rum</p>'..Config.IngredientAmount..'x Pineapple</p>'..Config.IngredientAmount..'x Coconut', -- Menu header text
    ['zombieheader'] = 'Zombie', -- Menu header
    ['zombieheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Rum</p>'..Config.IngredientAmount..'x Pineapple</p>'..Config.IngredientAmount..'x Orange', -- Menu header text
    ['maitaiheader'] = 'Mai Tai', -- Menu header
    ['maitaiheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Rum</p>'..Config.IngredientAmount..'x Lime</p>'..Config.IngredientAmount..'x Orange', -- Menu header text
    ['appletiniheader'] = 'Appletini', -- Menu header
    ['appletiniheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Vodka</p>'..Config.IngredientAmount..'x Lemon</p>'..Config.IngredientAmount..'x Apple', -- Menu header text
    ['cosmopolitanheader'] = 'Cosmopolitan', -- Menu header
    ['cosmopolitanheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Vodka</p>'..Config.IngredientAmount..'x Lime</p>'..Config.IngredientAmount3..'x Cranberries', -- Menu header text
    ['bloodymaryheader'] = 'Bloody Mary', -- Menu header
    ['bloodymaryheadertext'] = 'Required:</p>1x Cocktail Glass</p>'..Config.LiquorAmount..'x Glass of Vodka</p>'..Config.IngredientAmount..'x Lemon</p>'..Config.IngredientAmount2..'x Tomatoes', -- Menu header text
    ['enoughwhiskey'] = 'Looks like you dont have enough whiskey..', -- Notification
    ['nowhiskey'] = 'Looks like you dont have any whiskey..', -- Notification
    ['enoughrum'] = 'Looks like you dont have enough rum..', -- Notification
    ['norum'] = 'Looks like you dont have any rum..', -- Notification
    ['enoughvodka'] = 'Looks like you dont have enough vodka..', -- Notification
    ['novodka'] = 'Looks like you dont have any vodka..', -- Notification
    ['enoughorange'] = 'Looks like you dont have enough oranges..', -- Notification
    ['noorange'] = 'Looks like you dont have any orange..', -- Notification
    ['enoughlemon'] = 'Looks like you dont have enough lemons..', -- Notification
    ['nolemon'] = 'Looks like you dont have any lemon..', -- Notification
    ['enoughapple'] = 'Looks like you dont have enough apples..', -- Notification
    ['noapple'] = 'Looks like you dont have any apple..', -- Notification
    ['enoughlime'] = 'Looks like you dont have enough limes..', -- Notification
    ['nolime'] = 'Looks like you dont have any lime..', -- Notification
    ['enoughpineapple'] = 'Looks like you dont have enough pineapples..', -- Notification
    ['nopineapple'] = 'Looks like you dont have any pineapple..', -- Notification
    ['enoughcocomilk'] = 'Looks like you dont have enough coconut milk..', -- Notification
    ['nococomilk'] = 'Looks like you dont have any coconut milk..', -- Notification
    ['enoughcranberry'] = 'Looks like you dont have enough cranberries..', -- Notification
    ['nocranberry'] = 'Looks like you dont have any cranberries..', -- Notification
    ['enoughtomato'] = 'Looks like you dont have enough tomatoes..', -- Notification
    ['notomato'] = 'Looks like you dont have any tomato..', -- Notification
    ['nococktailglass'] = 'You need a cocktail glass stupid..', -- Notification
    ['mixedcocktail'] = 'You successfully mixed a cocktail!', -- Notification
    ['mixcocktail'] = 'Mixing Cocktail..', -- Progressbar
    -- Liquor
    ['liquormenuheader'] = 'Hard Liquor', -- Menu header
    ['liquormenuheadertext'] = 'Required:</p>1x Small Glass', -- Menu header text
    ['whiskeyheader'] = 'Mount Whiskey', -- Menu header
    ['whiskeyheadertext'] = 'Sour blend bourbon whiskey.', -- Menu header text
    ['rumheader'] = 'Ragga Rum', -- Menu header
    ['rumheadertext'] = 'Jamaicas finest rum.', -- Menu header text
    ['vodkaheader'] = 'Cherenkov Vodka', -- Menu header
    ['vodkaheadertext'] = 'Warms you to the core.', -- Menu header text
    ['noliquorglass'] = 'What are you planning to put the liquor in dumbass..', -- Notification
    ['pulledliquor'] = 'You successfully pulled some liquor!', -- Notification 
    ['pullingliquor'] = 'Pulling Liquor..', -- Progressbar
    -- Hot drinks 
    ['hotdrinksmenuheader'] = 'Coffee Machine', -- Menu header
    ['hotdrinksmenuheadertext'] = 'Required:</p>1x Empty Cup', -- Menu header text
    ['coffeeheader'] = 'Coffee', -- Menu header
    ['coffeeheadertext'] = 'Coffee is all about choice.', -- Menu header text
    ['teaheader'] = 'Tea', -- Menu header
    ['teaheadertext'] = 'A cup for every office.', -- Menu header text
    ['nocup'] = 'Im pretty sure you need a cup idiot..', -- Notification
    ['madehot'] = 'You successfully poured a hot drink!', -- Notification
    ['makehot'] = 'Making a Hot Drink..', -- Progressbar
    -- Microwave
    ['microwavemenuheader'] = 'Microwave', -- Menu header
    ['microwavemenuheadertext'] = 'Required:</p>1x Microwave meal or snack', -- Menu header text
    ['cheesepieheader'] = 'Cheese & Onion Pie', -- Menu header
    ['cheesepieheadertext'] = 'Keep calm & have a pie!', -- Menu header
    ['meatpieheader'] = 'Meat Pie', -- Menu header
    ['meatpieheadertext'] = 'Keep calm & have a pie!', -- Menu header
    ['steakpieheader'] = 'Steak & Kidney Pie', -- Menu header
    ['steakpieheadertext'] = 'Keep calm & have a pie!', -- Menu header
    ['chickenpieheader'] = 'Chicken & Mushroom Pie', -- Menu header
    ['chickenpieheadertext'] = 'Keep calm & have a pie!', -- Menu header
    ['mwburgerheader'] = 'Burger', -- Menu header
    ['mwburgerheadertext'] = 'Not as fresh but still tasty!', -- Menu header
    ['mwcburgerheader'] = 'Cheeseurger', -- Menu header
    ['mwcburgerheadertext'] = 'Not as fresh but still tasty!', -- Menu header
    ['mwbcburgerheader'] = 'Bacon Cheeseburger', -- Menu header
    ['mwbcburgerheadertext'] = 'Not as fresh but still tasty!', -- Menu header
    ['mademicrowave'] = 'You successfully microwaved some food!', -- Notification
    ['nofood'] = 'What are you planning on cooking? The air? Dont be stupid..', -- Notification
    ['microwavefood'] = 'Microwaving Food..', -- Progressbar
    -- Consumables
    ['eatpie'] = 'Eating A Pie..', -- Progressbar
    ['eatburger'] = 'Eating A Burger..', -- Progressbar
    ['drinkbeer'] = 'Drinking Beer..', -- Progressbar
    ['drinkliquor'] = 'Drinking Liquor..', -- Progressbar
    ['drinkcocktail'] = 'Drinking Cocktail..', -- Progressbar
    ['drinktea'] = 'Drinking Tea..', -- Progressbar
    ['drinkcoffee'] = 'Drinking Coffee..', -- Progressbar
    ['drinkcola'] = 'Drinking Sprunk..', -- Progressbar
    ['drinkcola'] = 'Drinking Kurkakola..', -- Progressbar
    -- Snake
    ['snakeheader'] = 'Snake Enclosure', -- Menu header
    ['snakeheadertext'] = 'Dont forget to feed your snake!', -- Menu header text
    ['feedsnakeheader'] = 'Feed Snake', -- Menu header
    ['feedsnakeheadertext'] = 'Feeding the snake removes stress!', -- Menu header text
    ['snakefoodheader'] = 'Collect Mouse', -- Menu header
    ['snakefoodheadertext'] = 'Take a mouse to feed to your snake!', -- Menu header text
    ['gotsnakefood'] = 'Successfully collected a mouse!', -- Notification
    ['fedsnake'] = 'Successfully fed the snake!', -- Notification
    ['getsnakefood'] = 'Collecting A Mouse..', -- Progressbar
    ['feedsnake'] = 'Feeding The Snake..', -- Progressbar
    -- Shared
    ['cancel'] = 'Action cancelled..', -- Notification
    ['returnmenu'] = '< Return', -- Menu header
    ['exitmenu'] = '< Exit', -- Menu header
    -- Vehicle
    ['returnedvan'] = 'Thank you for returning the van!', -- Notification
    ['rentedvan'] = 'You took out a van! Return it when your done!', -- Notification
    ['nomoney'] = 'You cant afford the deposit dumbass..', -- Notification
    ['rentheader'] = 'Billiards Bar Garage', -- Menu header
    ['rentmenuheader'] = 'Company Van', -- Menu header
    ['rentmenutext'] = 'A deposit of $'..Config.VehicleDeposit..' is required.', -- Menu text
    ['returnmenuheader'] = 'Return Van', -- Menu header
    ['returnmenutext'] = 'Return Vehicle to receive $'..math.floor(Config.VehicleDeposit/2), -- Menu text
}