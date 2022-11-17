----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:DutyMenu', function(data)
    exports[MenuName]:openMenu({
        { 
            header = Language['dutymenuheader'],
            txt = Language['dutymenuheadertext'],
            isMenuHeader = true
        },
        { 
            header = Language['dutytoggle'],
            params = {
                event = "boii-billiardsbar:client:ToggleDuty",
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