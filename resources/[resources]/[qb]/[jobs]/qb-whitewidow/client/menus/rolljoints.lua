----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Joint rolling menu
RegisterNetEvent('boii-whitewidow:client:RollJointsMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language.Locations.Rolling['jointsmenuheader'],
            txt = Language.Locations.Rolling['jointsmenuheadertext'],
            icon = Language.Locations.Rolling['jointsmenuheadericon'],
            isMenuHeader = true
        },
        {
            header = Language.Locations.Rolling['strain1menuheader'],
            txt = Language.Locations.Rolling['strain1menuheadertext'],
            icon = Language.Locations.Rolling['strain1menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 1
            }
        },
        {
            header = Language.Locations.Rolling['strain2menuheader'],
            txt = Language.Locations.Rolling['strain2menuheadertext'],
            icon = Language.Locations.Rolling['strain2menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 2
            }
        },
        { 
            header = Language.Locations.Rolling['strain3menuheader'],
            txt = Language.Locations.Rolling['strain3menuheadertext'],
            icon = Language.Locations.Rolling['strain3menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 3
            }
        },
        { 
            header = Language.Locations.Rolling['strain4menuheader'],
            txt = Language.Locations.Rolling['strain4menuheadertext'],
            icon = Language.Locations.Rolling['strain4menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 4
            }
        },
        { 
            header = Language.Locations.Rolling['strain5menuheader'],
            txt = Language.Locations.Rolling['strain5menuheadertext'],
            icon = Language.Locations.Rolling['strain5menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 5
            }
        },
        { 
            header = Language.Locations.Rolling['strain6menuheader'],
            txt = Language.Locations.Rolling['strain6menuheadertext'],
            icon = Language.Locations.Rolling['strain6menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 6
            }
        },
        { 
            header = Language.Locations.Rolling['strain7menuheader'],
            txt = Language.Locations.Rolling['strain7menuheadertext'],
            icon = Language.Locations.Rolling['strain7menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
                isServer = true,
                args = 7
            }
        },
        { 
            header = Language.Locations.Rolling['strain8menuheader'],
            txt = Language.Locations.Rolling['strain8menuheadertext'],
            icon = Language.Locations.Rolling['strain8menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:RollJoints',
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