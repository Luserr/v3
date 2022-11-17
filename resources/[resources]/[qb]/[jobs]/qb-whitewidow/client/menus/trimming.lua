----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Trimming menu
RegisterNetEvent('boii-whitewidow:client:TrimmingMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language.Locations.Trimming['trimmenuheader'],
            txt = Language.Locations.Trimming['trimmenuheadertext'],
            icon = Language.Locations.Trimming['trimmenuheadericon'],
            isMenuHeader = true
        },
        {
            header = Language.Locations.Trimming['strain1menuheader'],
            txt = Language.Locations.Trimming['strain1menuheadertext'],
            icon = Language.Locations.Trimming['strain1menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 1
            }
        },
        {
            header = Language.Locations.Trimming['strain2menuheader'],
            txt = Language.Locations.Trimming['strain2menuheadertext'],
            icon = Language.Locations.Trimming['strain2menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 2
            }
        },
        { 
            header = Language.Locations.Trimming['strain3menuheader'],
            txt = Language.Locations.Trimming['strain3menuheadertext'],
            icon = Language.Locations.Trimming['strain3menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 3
            }
        },
        { 
            header = Language.Locations.Trimming['strain4menuheader'],
            txt = Language.Locations.Trimming['strain4menuheadertext'],
            icon = Language.Locations.Trimming['strain4menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 4
            }
        },
        { 
            header = Language.Locations.Trimming['strain5menuheader'],
            txt = Language.Locations.Trimming['strain5menuheadertext'],
            icon = Language.Locations.Trimming['strain5menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 5
            }
        },
        { 
            header = Language.Locations.Trimming['strain6menuheader'],
            txt = Language.Locations.Trimming['strain6menuheadertext'],
            icon = Language.Locations.Trimming['strain6menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 6
            }
        },
        { 
            header = Language.Locations.Trimming['strain7menuheader'],
            txt = Language.Locations.Trimming['strain7menuheadertext'],
            icon = Language.Locations.Trimming['strain7menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
                isServer = true,
                args = 7
            }
        },
        { 
            header = Language.Locations.Trimming['strain8menuheader'],
            txt = Language.Locations.Trimming['strain8menuheadertext'],
            icon = Language.Locations.Trimming['strain8menuheadericon'],
            params = {
                event = 'boii-whitewidow:server:TrimWeed',
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
        },
    })
end)