----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:MicrowaveMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language['microwavemenuheader'],
            txt = Language['microwavemenuheadertext'],
            isMenuHeader = true
        },
		{
            header = Language['cheesepieheader'],
            txt = Language['cheesepieheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 1
            }
        },
		{
            header = Language['meatpieheader'],
            txt = Language['meatpieheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 2
            }
        },
		{
            header = Language['steakpieheader'],
            txt = Language['steakpieheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 3
            }
        },
		{
            header = Language['chickenpieheader'],
            txt = Language['chickenpieheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 4
            }
        },
        {
            header = Language['mwburgerheader'],
            txt = Language['mwburgerheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 5
            }
        },
        {
            header = Language['mwcburgerheader'],
            txt = Language['mwcburgerheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 6
            }
        },
        {
            header = Language['mwbcburgerheader'],
            txt = Language['mwbcburgerheadertext'],
            params = {
                event = "boii-billiardsbar:server:MicrowaveFood",
                isServer = true,
                args = 7
            }
        },
        {
            header = Language['exitmenu'],
            params = {
                event = "boii-billiardsjob:client:StopMenu"
            }
        },
    })
end)