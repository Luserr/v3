----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:PumpsMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language['pumpmenuheader'],
            txt = Language['pumpmenuheadertext'],
            isMenuHeader = true
        },
        {
            header = Language['amheader'],
            txt = Language['amheadertext'],
            params = {
                event = "boii-billiardsbar:server:PullPint",
                isServer = true,
                args = 1
            }
        },
		{
            header = Language['pisheader'],
            txt = Language['pisheadertext'],
            params = {
                event = "boii-billiardsbar:server:PullPint",
                isServer = true,
                args = 2
            }
        },
		{
            header = Language['loggerheader'],
            txt = Language['loggerheadertext'],
            params = {
                event = "boii-billiardsbar:server:PullPint",
                isServer = true,
                args = 3
            }
        },
		{
            header = Language['duscheheader'],
            txt = Language['duscheheadertext'],
            params = {
                event = "boii-billiardsbar:server:PullPint",
                isServer = true,
                args = 4
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
RegisterNetEvent('boii-billiardsbar:client:PumpsMenu2', function()
    exports[MenuName]:openMenu({
        {
            header = Language['pumpmenuheader'],
            txt = Language['pumpmenuheadertext'],
            isMenuHeader = true
        },
		{
            header = Language['loggerheader'],
            txt = Language['loggerheadertext'],
            params = {
                event = "boii-billiardsbar:server:PullPint",
                isServer = true,
                args = 3
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