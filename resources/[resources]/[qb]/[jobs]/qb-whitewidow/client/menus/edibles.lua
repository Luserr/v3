----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Edibles menu
RegisterNetEvent('boii-whitewidow:client:EdiblesMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language.Locations.Edibles['ediblesmenuheader'],
            txt = Language.Locations.Edibles['ediblesmenuheadertext'],
            icon = Language.Locations.Edibles['ediblesmenuheadericon'],
            isMenuHeader = true
        },
        {
            header = Language.Locations.Edibles['strain1menuheader'],
            txt = Language.Locations.Edibles['strain1menuheadertext'],
            icon = Language.Locations.Edibles['strain1menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 1
            }
        },
        {
            header = Language.Locations.Edibles['strain2menuheader'],
            txt = Language.Locations.Edibles['strain2menuheadertext'],
            icon = Language.Locations.Edibles['strain2menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 2
            }
        },
        {
            header = Language.Locations.Edibles['strain3menuheader'],
            txt = Language.Locations.Edibles['strain3menuheadertext'],
            icon = Language.Locations.Edibles['strain3menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 3
            }
        },
        {
            header = Language.Locations.Edibles['strain4menuheader'],
            txt = Language.Locations.Edibles['strain4menuheadertext'],
            icon = Language.Locations.Edibles['strain4menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 4
            }
        },
        {
            header = Language.Locations.Edibles['strain5menuheader'],
            txt = Language.Locations.Edibles['strain5menuheadertext'],
            icon = Language.Locations.Edibles['strain5menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 5
            }
        },
        {
            header = Language.Locations.Edibles['strain6menuheader'],
            txt = Language.Locations.Edibles['strain6menuheadertext'],
            icon = Language.Locations.Edibles['strain6menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 6
            }
        },
        {
            header = Language.Locations.Edibles['strain7menuheader'],
            txt = Language.Locations.Edibles['strain7menuheadertext'],
            icon = Language.Locations.Edibles['strain7menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 7
            }
        },
        {
            header = Language.Locations.Edibles['strain8menuheader'],
            txt = Language.Locations.Edibles['strain8menuheadertext'],
            icon = Language.Locations.Edibles['strain8menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:PrepareEdibles',
                isServer = true,
                args = 8
            }
        },
        {
            header = Language.Shared['exitmenu'],
            icon = Language.Shared['exitmenuicon'],
            params = {
                event = 'boii-whitewidow:client:StopMenu'
            }
        }
    })
end)