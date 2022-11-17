----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:HotDrinksMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language['hotdrinksmenuheader'], 
            txt = Language['hotdrinksmenuheadertext'], 
            isMenuHeader = true
        },
        {
            header = Language['coffeeheader'], 
            txt = Language['coffeeheadertext'],
            params = {
                event = "boii-billiardsbar:server:HotDrinks",
                isServer = true,
                args = 1
            }
        },
		{
            header = Language['teaheader'],
            txt = Language['teaheadertext'],
            params = {
                event = "boii-billiardsbar:server:HotDrinks",
                isServer = true,
                args = 2
            }
        },
        {
            header = Language['exitmenu'],
            params = {
                event = "boii-billiardsbar:client:StopMenu"
            }
        },
    })
end)