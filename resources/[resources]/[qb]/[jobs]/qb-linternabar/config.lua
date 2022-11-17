Config = {}

Config.Language = "en"
Config.Logo = "https://cdn.discordapp.com/attachments/793580093829546017/991834937164570634/LaLinterna.png"

Config.Events = {
    QBCoreExport = 'qb-core',
    QBInputExport = 'qb-input',
    QBMenuExport = 'qb-menu',
    QBMenuClose = "qb-menu:client:closeMenu",
    QBTargetExport = 'qb-target',
    QBHudMetaExport = 'QBCore:Server:SetMetaData',
    QBHudStressExport = 'hud:server:RelieveStress',
    QBWeatherSyncExport = 'qb-weathersync',
    QBManagementExport = 'qb-management',
    QBManagementOpenBossMenu = 'qb-bossmenu:client:OpenMenu',
    OldBossMenu = false,
    OldBossMenuOpen = 'qb-bossmenu:client:openMenu', --- BossMenu Open Menu Name
    OldBossMenuExport = 'qb-bossmenu', --- BossMenu Name for GetAccount export
    OldBossMenuAddAccount = 'qb-bossmenu:server:addAccountMoney', --- BossMenu AddAccount Money Name for GetAccount export
    OldBossMenuRemoveAccount = 'qb-bossmenu:server:removeAccountMoney', --- BossMenu RemoveAccount Money Name for GetAccount export
    ServerNotifyEvent = 'QBCore:Notify',
    OnDutyEvent = "QBCore:ToggleDuty",
    OnPlayerLoad = 'QBCore:Client:OnPlayerLoaded',
    OnPlayerUnload = 'QBCore:Client:OnPlayerUnload',
    OnJobUpdate = 'QBCore:Client:OnJobUpdate',
    OnGangUpdate = 'QBCore:Client:OnGangUpdate',
    
}

Config.Consumble = {
    ProgTime = 5000,
}


Config.Settings = {
    Jobname = "lalinterna",
    MarkedItemName = 'markedbills',
    WaitingStandName = "lalinterna",
    minOnDuty = 1,
    TipTaxSettings = {
        TipTax = true,
        TaxRate = 0.1,
    },
    ConsumablesSettings = {
        HungerMultiplier = 0.1,
        ThirstyMultiplier = 0.1,
        StresMultiplier = 0.001, -- For Coffee 
    },
    Blips = {
        coords = vector3(383.89, -318.67, 46.96),
        sprite = 77,
        display = 4,
        scale = 0.7,
        color = 76,
        shortrange = true,
        blipName = "La Linterna"
    },
    SoundBoxSettings = {
        Locations = {
            ['soundbox'] = {
                ['radius'] = 10, -- The radius of the sound from the booth
                ['coords'] = vector3(378.77, -314.85, 45.96), -- Where the booth is located
                ['playing'] = false
            },
        },
        DefaultVolume = 0.1, -- The default volume of the sound when it is played
        SoundBoxPrice = 1, -- $1 = 1$       
    },
    GradeSettings = {
        --- Min Grade --
        CraftWeapon = 3,
        RepairWeapon = 2,
        MoneyWash = 2,
    },
    CraftableWeapons = {
        [0] = {
            weaponSpawn = "weapon_appistol",
            itemRequire = {
                first = "metalscrap",
                second = "plastic",
                third = "",
            },
            itemRequireAmount = {
                first = 14,
                second = 12,
                third = 1,
            },
        },
        [1] = {
            weaponSpawn = "weapon_pistol",
            itemRequire = {
                first = "metalscrap",
                second = "plastic",
                third = "",
            },
            itemRequireAmount = {
                first = 12,
                second = 16,
                third = 1,
            },
        },
    },
    RepairableWeapons = {
        [0] = {
            weaponSpawn = "weapon_appistol",
            itemRequire = {
                first = "metalscrap",
                second = "plastic",
                third = "",
            },
            itemRequireAmount = {
                first = 10,
                second = 6,
                third = 1,
            },
        },
        [1] = {
            weaponSpawn = "weapon_pistol",
            itemRequire = {
                first = "metalscrap",
                second = "plastic",
                third = "",
            },
            itemRequireAmount = {
                first = 10,
                second = 6,
                third = 1,
            },
        },
    },
    AnimationSoundSettings = {
        TaskScenario = true, -- If you want to use the task scenario(BBQ) for the animation, set this to true. Oven and Fry
        ['Coffee'] = {
            SoundEnable = true,
            SoundName = "coffee_machine",
            SoundDistance =0.5,
            SoundTime = 14000,
            ProgTime = 12000,
            AnimDict = "anim@amb@board_room@supervising@",
            Anim = "dissaproval_01_lo_amy_skater_01",
        },
        ['Beer'] = {
            SoundEnable = true,
            SoundName = "fill_beer",
            SoundDistance =0.5,
            SoundTime = 7000,
            ProgTime = 6000,
            AnimDict = "anim@amb@casino@mini@drinking@bar@drink@heels@beer",
            Anim = "intro_bartender",
        },
        ['ColaMachine'] = {
            SoundEnable = true,
            SoundName = "drink_take",
            SoundDistance =0.5,
            SoundTime = 4000,
            ProgTime = 6000,
            AnimDict = "anim@amb@board_room@supervising@",
            Anim = "dissaproval_01_lo_amy_skater_01",
        },
        ['Cocktail'] = {
            SoundEnable = true,
            SoundName = "shaker_sound",
            SoundDistance =0.3,
            SoundTime = 9000,
            ProgTime = 8000,
            AnimDict = "anim@amb@board_room@supervising@",
            Anim = "dissaproval_01_lo_amy_skater_01",
        },
        ['Oven'] = {
            SoundEnable = true,
            SoundName = "oven_sound",
            SoundDistance =0.5,
            SoundTime = 11000,
            ProgTime = 10000,
            AnimDict = "mini@repair",
            Anim = "fixing_a_player",
        },
        ['Fry'] = {
            SoundEnable = true,
            SoundName = "fry_sound",
            SoundDistance =0.5,
            SoundTime =8000,
            ProgTime = 10000,
            AnimDict = "mini@repair",
            Anim = "fixing_a_player",
        },
        ['Ice'] = {
            SoundEnable = true,
            SoundName = "icebreaker",
            SoundDistance =0.5,
            SoundTime = 8000,
            ProgTime = 10000,
            AnimDict = "anim@amb@board_room@supervising@",
            Anim = "dissaproval_01_lo_amy_skater_01",
        },
        ['Package'] = {
            SoundEnable = true,
            SoundName = "packing_sound",
            SoundDistance =0.5,
            SoundTime =8000,
            ProgTime = 10000,
            AnimDict = "mini@repair",
            Anim = "fixing_a_player",
        },
        ['MoneyWash'] = {
            SoundEnable = false,
            SoundName = "",
            SoundDistance =0.5,
            SoundTime = "",
            ProgTime = 10000,
            AnimDict = "anim@amb@business@cfm@cfm_drying_notes@",
            Anim = "loading_v3_worker",
        }
    },
    ProductItems = {
        CoffeeItems = {
            [0] = {
                itemName = "ll_espresso",
                desc = "Espresso",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_coffeebean",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 0,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [1] = {
                itemName = "ll_americano",
                desc = "Americano",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_espresso",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 0,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            }, 
        },
        CocktailItems = {
            [0] = {
                itemName = "ll_martini",
                desc = "Classic Martini",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_tequila",
                    second = "ll_cointreau",
                    third = "ll_dryvermounth",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [1] = {
                itemName = "ll_chelada",
                desc = "Chelada",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_mexican_beer",
                    second = "ll_lime_juice",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [2] = {
                itemName = "ll_margarita",
                desc = "Logger Beer",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_tequila",
                    second = "ll_cointreau",
                    third = "ll_lime_juice",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
        },
        ColaMachineItems = {
            [0] = {
                itemName = "ll_drink_cola",
                desc = "Cola",
                sellprice = 25,
                craftAmount = 2,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 0,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [1] = {
                itemName = "ll_drink_sprunk",
                desc = "Sprunk",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 0,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [2] = {
                itemName = "ll_lemonade",
                desc = "Lemonade",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [3] = {
                itemName = "ll_lime_juice",
                desc = "Lime Juice For Cocktails",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 0,
                    second = 0,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
        },
        OvenItems = {
            [0] = {
                itemName = "ll_taco_crispy_beef",
                desc = "Crispy Beef Taco",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_fajita_steak",
                    third = "ll_raw_crispy_lettuce",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",

                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [1] = {
                itemName = "ll_taco_crispy_chicken",
                desc = "Crispy Chicken Taco",
                sellprice = 41,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_crispy_lettuce",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",

                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [2] = {
                itemName = "ll_taco_soft_beef",
                desc = "Soft Taco Beef",
                sellprice = 43,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_fajita_steak",
                    third = "ll_raw_crispy_lettuce",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [3] = {
                itemName = "ll_taco_soft_chicken",
                desc = "Soft Taco Chicken",
                sellprice = 40,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_crispy_lettuce",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",

                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [4] = {
                itemName = "ll_taco_muchaco_beef",
                desc = "Muchaco Taco Beef",
                sellprice = 43,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_pitabread",
                    second = "ll_raw_fajita_steak",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [5] = {
                itemName = "ll_taco_muchaco_chicken",
                desc = "Muchaco Taco Chicken",
                sellprice = 40,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_pitabread",
                    second = "ll_raw_chicken",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",

                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [6] = {
                itemName = "ll_taco_bigfreak_beef",
                desc = "Big Freak'n Taco Beef",
                sellprice = 43,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_fajita_steak",
                    third = "ll_raw_sour_cream",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [7] = {
                itemName = "ll_taco_bigfreak_chicken",
                desc = "Big Freak'n Taco Chicken",
                sellprice = 40,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_sour_cream",
                    fourth = "ll_raw_tomato_juice",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_mince",

                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            }, 
            -- Burritos
            [8] = {
                itemName = "ll_burrito_bueno_beef",
                desc = "Burrito Bueno Beef",
                sellprice = 48,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_mince",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_pepper_jack_cheese",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [9] = {
                itemName = "ll_burrito_bueno_chicken",
                desc = "Burrito Bueno Chicken",
                sellprice = 46,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_pepper_jack_cheese",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            }, 
            [10] = {
                itemName = "ll_burrito_bigfreak_beef",
                desc = "Burrito BigFreak'n Beef",
                sellprice = 48,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_mince",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_pepper_jack_cheese",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [11] = {
                itemName = "ll_burrito_bigfreak_chicken",
                desc = "Burrito BigFreak'n Chicken",
                sellprice = 46,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_pepper_jack_cheese",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },             
            [12] = {
                itemName = "ll_burrito_beef",
                desc = "Burrito Beef",
                sellprice = 46,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_mince",
                    third = "ll_raw_pepper_sauce",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 0,
                }
            }, 
            [13] = {
                itemName = "ll_burrito_bean",
                desc = "Burrito Bean",
                sellprice = 48,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_pepper_jack_cheese",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 0,
                }
            },
            [14] = {
                itemName = "ll_burrito_combo",
                desc = "Burrito Combo",
                sellprice = 46,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_mince",
                    third = "ll_raw_bean",
                    fourth = "ll_raw_pepper_sauce",
                    fifth = "ll_raw_cheese",
                    sixth = "ll_raw_pepper_jack_cheese",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            }, 
            [15] = {
                itemName = "ll_burrito_potato_beef",
                desc = "Burrito Potato Beef",
                sellprice = 48,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_mince",
                    third = "ll_raw_sour_cream",
                    fourth = "ll_raw_fryed_potato",
                    fifth = "ll_raw_cheese",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 0,
                }
            },
            [16] = {
                itemName = "ll_burrito_potato_chicken",
                desc = "Burrito Potato Chicken",
                sellprice = 46,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_sour_cream",
                    fourth = "ll_raw_fryed_potato",
                    fifth = "ll_raw_cheese",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 0,
                }
            }, 
        },
        BeerItems = {
            [0] = {
                itemName = "ll_pibwasser_beer",
                desc = "PiBWasser Beer",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [1] = {
                itemName = "ll_dusche_beer",
                desc = "Dusche Gold Beer",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [2] = {
                itemName = "ll_logger_beer",
                desc = "Logger Beer",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [3] = {
                itemName = "ll_mexican_beer",
                desc = "Mexican Lager Beer",
                sellprice = 25,
                craftAmount = 1,
                itemRequire = {
                    first = "",
                    second = "",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 0,
                    second = 0,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },            
        },
        FryItems = {
            [0] = {
                itemName = "ll_nacho_mexidip",
                desc = "Nacho Mexi Dip",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_queso_sauce",
                    third = "ll_raw_pepper_jack_cheese",
                    fourth = "ll_raw_bean",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 1,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [1] = {
                itemName = "ll_nacho_mucho_beef",
                desc = "Nacho Mucho Beef",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_mince",
                    third = "ll_raw_pepper_sauce",
                    fourth = "ll_raw_bean",
                    fifth = "ll_raw_queso_sauce",
                    sixth = "ll_raw_tomato_juice",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [2] = {
                itemName = "ll_nacho_mucho_chicken",
                desc = "Nacho Mucho Chicken",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_chicken",
                    third = "ll_raw_pepper_sauce",
                    fourth = "ll_raw_bean",
                    fifth = "ll_raw_queso_sauce",
                    sixth = "ll_raw_tomato_juice",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 1,
                    fifth = 1,
                    sixth = 1,
                }
            },
            [3] = {
                itemName = "ll_chips_queso",
                desc = "Chips Queso",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_queso_sauce",
                    third = "ll_raw_cheese",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [4] = {
                itemName = "ll_chips_guac",
                desc = "Chips Guac",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_corn_tortilla",
                    second = "ll_raw_tomato_juice",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [5] = {
                itemName = "ll_quesa_beef",
                desc = "Quesadilla Beef",
                sellprice = 48,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_pepper_jack_cheese",
                    third = "ll_raw_cheese",
                    fourth = "ll_raw_fajita_steak",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 1,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [6] = {
                itemName = "ll_quesa_chicken",
                desc = "Quesadilla Chicken",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_pepper_jack_cheese",
                    third = "ll_raw_cheese",
                    fourth = "ll_raw_chicken",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =1,
                    fourth = 1,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [7] = {
                itemName = "ll_quesa_cheese",
                desc = "Quesadilla Cheese",
                sellprice = 44,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_raw_tortilla",
                    second = "ll_raw_pepper_jack_cheese",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third =0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
        },
        ComboMeals = {
            [0] = {
                itemName = "ll_combo_menu_beef",
                desc = "C.Beef Taco - Bean Burrito - Cola",
                sellprice = 80,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_taco_crispy_beef",
                    second = "ll_burrito_bean",
                    third = "ll_drink_cola",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            }, 
            [1] = {
                itemName = "ll_combo_menu_chicken",
                desc = "C.Chicken Taco - Bean Burrito - Cola",
                sellprice = 78,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_taco_crispy_chicken",
                    second = "ll_burrito_bean",
                    third = "ll_drink_cola",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            }, 
            [2] = {
                itemName = "ll_combo_menu1_beef",
                desc = "3x Crispy Taco Beef - Cola",
                sellprice = 78,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_taco_crispy_beef",
                    second = "ll_drink_cola",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 3,
                    second = 1,
                    third = 0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            }, 
            [3] = {
                itemName = "ll_combo_menu1_chicken",
                desc = "3x Crispy Taco Chicken - Cola",
                sellprice = 78,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_taco_crispy_chicken",
                    second = "ll_drink_cola",
                    third = "",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 3,
                    second = 1,
                    third = 0,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [4] = {
                itemName = "ll_combo_menu2_beef",
                desc = "C.Beef Taco - Beef Mucho Nachos - Cola",
                sellprice = 125,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_taco_crispy_beef",
                    second = "ll_nacho_mucho_beef",
                    third = "ll_drink_cola",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            }, 
            [5] = {
                itemName = "ll_combo_menu2_chicken",
                desc = "C.Chicken Taco - C.Mucho Nachos - Cola",
                sellprice = 120,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_taco_crispy_chicken",
                    second = "ll_nacho_mucho_chicken",
                    third = "ll_drink_cola",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },
            [6] = {
                itemName = "ll_combo_menu3",
                desc = "Chicken Quesadilla-Crispiy Taco Beef- Cola",
                sellprice = 90,
                craftAmount = 1,
                itemRequire = {
                    first = "ll_quesa_chicken",
                    second = "ll_taco_crispy_beef",
                    third = "ll_drink_cola",
                    fourth = "",
                    fifth = "",
                    sixth = "",
                },
                itemRequireAmount = {
                    first = 1,
                    second = 1,
                    third = 1,
                    fourth = 0,
                    fifth = 0,
                    sixth = 0,
                }
            },  
        }
    },
    StockShopItems = {
        [0] = {
            itemName = "ll_raw_pitabread",
            desc = "Pita Bread",
            sellprice = 1,
        },
        [1] = {
            itemName = "ll_raw_tortilla",
            desc = "Classic Tortilla",
            sellprice = 5,
        }, 
        [2] = {
            itemName = "ll_raw_corn_tortilla",
            desc = "Corn Tortilla",
            sellprice = 5,
        }, 
        [3] = {
            itemName = "ll_raw_fajita_steak",
            desc = "Fajita Steak",
            sellprice = 5,
        }, 
        [4] = {
            itemName = "ll_raw_crispy_lettuce",
            desc = "Crispy Letuce",
            sellprice = 1,
        },
        [5] = {
            itemName = "ll_raw_tomato_juice",
            desc = "Tomato Juice",
            sellprice = 5,
        }, 
        [6] = {
            itemName = "ll_raw_pepper_sauce",
            desc = "Pepper Sauce",
            sellprice = 5,
        }, 
        [7] = {
            itemName = "ll_raw_pepper_jack_cheese",
            desc = "Pepper Jack Cheese",
            sellprice = 5,
        }, 
        [8] = {
            itemName = "ll_raw_cheese",
            desc = "Raw Cheese",
            sellprice = 1,
        },
        [9] = {
            itemName = "ll_raw_mince",
            desc = "Raw Mince",
            sellprice = 5,
        }, 
        [10] = {
            itemName = "ll_raw_chicken",
            desc = "Raw Chicken",
            sellprice = 5,
        }, 
        [11] = {
            itemName = "ll_raw_bean",
            desc = "Mexican Bean",
            sellprice = 5,
        }, 
        [12] = {
            itemName = "ll_raw_sour_cream",
            desc = "Sour Cream",
            sellprice = 1,
        },
        [13] = {
            itemName = "ll_raw_potato",
            desc = "Raw Potato",
            sellprice = 5,
        }, 
        [14] = {
            itemName = "ll_raw_fryed_potato",
            desc = "Fryed Potato",
            sellprice = 5,
        }, 
        [15] = {
            itemName = "ll_raw_queso_sauce",
            desc = "Queso Sauce",
            sellprice = 5,
        }, 
        [16] = {
            itemName = "ll_coffeebean",
            desc = "Coffee Bean",
            sellprice = 1,
        },   
    },
    BarFreezerItems = {
        [0] = {
            itemName = "ll_tequila",
            desc = "Tequila",
            sellprice = 1,
        },
        [1] = {
            itemName = "ll_cointreau",
            desc = "Cointreau",
            sellprice = 5,
        }, 
        [2] = {
            itemName = "ll_dryvermounth",
            desc = "Dry Vermouth",
            sellprice = 5,
        },     
    }
}