----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:LiquorMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language['liquormenuheader'],
            txt = Language['liquormenuheadertext'],
            isMenuHeader = true
        },
        {
            header = Language['whiskeyheader'],
            txt = Language['whiskeyheader'],
            params = {
                event = "boii-billiardsbar:server:PullLiquor",
                isServer = true,
                args = 1
            }
        },
		{
            header = Language['rumheader'],
            txt = Language['rumheader'],
            params = {
                event = "boii-billiardsbar:server:PullLiquor",
                isServer = true,
                args = 2
            }
        },
		{
            header = Language['vodkaheader'],
            txt = Language['vodkaheader'],
            params = {
                event = "boii-billiardsbar:server:PullLiquor",
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