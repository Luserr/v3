----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:CocktailsMainMenu', function()
    exports[MenuName]:openMenu({
        {
            header = Language['cocktailsmenuheader'],
            txt = Language['cocktailsmenuheadertext'],
            isMenuHeader = true
        },
        {
            header = Language['cocktailswhiskeyheader'],
            txt = Language['cocktailswhiskeyheadertext'],
            params = {
                event = "boii-billiardsbar:client:CocktailsMenu",
                args = 1
            }
        },
        {
            header = Language['cocktailsrumheader'],
            txt = Language['cocktailsrumheadertext'],
            params = {
                event = "boii-billiardsbar:client:CocktailsMenu",
                args = 2
            }
        },
        {
            header = Language['cocktailsvodkaheader'],
            txt = Language['cocktailsvodkaheadertext'],
            params = {
                event = "boii-billiardsbar:client:CocktailsMenu",
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
RegisterNetEvent('boii-billiardsbar:client:CocktailsMenu', function(args)
    if args == 1 then
        exports[MenuName]:openMenu({
            {
                header = Language['cocktailswhiskeyheader'],
                txt = Language['cocktailswhiskeyheadertext'],
                isMenuHeader = true
            },
            {
                header = Language['whiskeysourheader'],
                txt = Language['whiskeysourheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 1
                }
            },
            {
                header = Language['whiskeysmashheader'],
                txt = Language['whiskeysmashheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 2
                }
            },
            {
                header = Language['bloodsandheader'],
                txt = Language['bloodsandheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 3
                }
            },
            {
                header = Language['returnmenu'],
                params = {
                    event = "boii-billiardsbar:client:CocktailsMainMenu"
                }
            },
        })
    elseif args == 2 then
        exports[MenuName]:openMenu({
            {
                header = Language['cocktailsrumheader'],
                txt = Language['cocktailsrumheadertext'],
                isMenuHeader = true
            },
            {
                header = Language['pinacoladaheader'],
                txt = Language['pinacoladaheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 4
                }
            },
            {
                header = Language['zombieheader'],
                txt = Language['zombieheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 5
                }
            },
            {
                header = Language['maitaiheader'],
                txt = Language['maitaiheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 6
                }
            },
            {
                header = Language['returnmenu'],
                params = {
                    event = "boii-billiardsbar:client:CocktailsMainMenu"
                }
            },
        })
    elseif args == 3 then
        exports[MenuName]:openMenu({
            {
                header = Language['cocktailsvodkaheader'],
                txt = Language['cocktailsvodkaheadertext'],
                isMenuHeader = true
            },
            {
                header = Language['appletiniheader'],
                txt = Language['appletiniheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 7
                }
            },
            {
                header = Language['cosmopolitanheader'],
                txt = Language['cosmopolitanheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 8
                }
            },
            {
                header = Language['bloodymaryheader'],
                txt = Language['bloodymaryheadertext'],
                params = {
                    event = "boii-billiardsbar:server:MixCocktails",
                    isServer = true,
                    args = 9
                }
            },
            {
                header = Language['returnmenu'],
                params = {
                    event = "boii-billiardsbar:client:CocktailsMainMenu"
                }
            },
        })
    end
end)