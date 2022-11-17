ConfigRepLevels = {}

ConfigRepLevels.PlayerLoadEvent   = 'QBCore:Client:OnPlayerLoaded' --event for player load
ConfigRepLevels.MainCoreEvent     = 'QBCore:GetObject'
ConfigRepLevels.CoreResourceName  = 'qb-core'

ConfigRepLevels.OpenKey = 'f11' --f11 , set nil if you dont want key
ConfigRepLevels.OpenCommand = 'openreps' --/openreps
ConfigRepLevels.MaxRep = 100 --max rep limit indicator
ConfigRepLevels.ignoreZeroReps = false --if true dont show reputation with 0 rep
ConfigRepLevels.ReputationMenus = {
    [0] = {
        title = 'Legal Jobs',
        metadata = {
            ['tailorep'] = {
                label = 'Tailor'
            },
            ['restaurantrep'] = {
                label = 'Restaurants'
            },
            ['miningrep'] = {
                label = 'Minner'
            },
            ['jobrep'] = {
                secondLevels = { --use it if you want second level in jobs ex: ['jobrep']['trucker']
                    ['trucker'] = {
                        label = 'Trucker'
                    },
                    ['taxi'] = {
                        label = 'Taxi'
                    }
                },
            },
        }
    },
    [1] = {
        title = 'Ilegal Jobs',
        metadata = {
            ['drugsrep'] = {
                label = 'Drugs'
            },
        }
    }
}

ConfigRepLevels.Locale = 'EN'
ConfigRepLevels.Locales = {
    ['EN'] = {
        ['LABEL_CARD'] = 'Your reputation is %number% points in 100',
        ['TITLE_MENU'] = 'Reputations Values for Menu %title%',
        ['TITLE_EXIT'] = 'Exit',
    },
    ['PT'] = {
        ['LABEL_CARD'] = 'A tua reputação é %d pontos em 100',
        ['TITLE_MENU'] = 'Valor das Reputações para o Menu %title%',
        ['TITLE_EXIT'] = 'Sair',
    },
}