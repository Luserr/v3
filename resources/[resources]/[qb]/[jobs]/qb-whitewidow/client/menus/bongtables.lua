----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Bong table menu
RegisterNetEvent('boii-whitewidow:client:BongMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language.Locations.BongTables['bongmenuheader'],
            txt = Language.Locations.BongTables['bongmenuheadertext'],
            icon = Language.Locations.BongTables['bongmenuheadericon'],
            isMenuHeader = true
        },
        {
            header = Language.Locations.BongTables['strain1menuheader'],
            txt = Language.Locations.BongTables['strain1menuheadertext'],
            icon = Language.Locations.BongTables['strain1menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 1
            }
        },
        {
            header = Language.Locations.BongTables['strain2menuheader'],
            txt = Language.Locations.BongTables['strain2menuheadertext'],
            icon = Language.Locations.BongTables['strain2menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 2
            }
        },
        {
            header = Language.Locations.BongTables['strain3menuheader'],
            txt = Language.Locations.BongTables['strain3menuheadertext'],
            icon = Language.Locations.BongTables['strain3menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 3
            }
        },
        {
            header = Language.Locations.BongTables['strain4menuheader'],
            txt = Language.Locations.BongTables['strain4menuheadertext'],
            icon = Language.Locations.BongTables['strain4menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 4
            }
        },
        {
            header = Language.Locations.BongTables['strain5menuheader'],
            txt = Language.Locations.BongTables['strain5menuheadertext'],
            icon = Language.Locations.BongTables['strain5menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 5
            }
        },
        {
            header = Language.Locations.BongTables['strain6menuheader'],
            txt = Language.Locations.BongTables['strain6menuheadertext'],
            icon = Language.Locations.BongTables['strain6menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 6
            }
        },
        {
            header = Language.Locations.BongTables['strain7menuheader'],
            txt = Language.Locations.BongTables['strain7menuheadertext'],
            icon = Language.Locations.BongTables['strain7menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
                isServer = true,
                args = 7
            }
        },
        {
            header = Language.Locations.BongTables['strain8menuheader'],
            txt = Language.Locations.BongTables['strain8menuheadertext'],
            icon = Language.Locations.BongTables['strain8menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:UseBong',
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