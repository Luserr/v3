Config = {}

Config.Framework = "NEW"
Config.CoreName = "qb-core"
Config.QBTarget = "qb-target"
Config.QBMenu = "qb-menu"
Config.SkillBar = "qb-skillbar" -- "np-skillbar" | "reload-skillbar" | "qb-lock" | "qb-skillbar" or "none"

Config.Table = {
    ["table"] = {model = `bkr_prop_coke_table01a`, freeze = false},
}

Config.RemoveTableAfterUse = false -- If true, when player save table, the table dont come back to inventory.


Config.LifePotion = {
    Enable = true, -- Enable/Disable option to appear ( On qb-menu )
    Name = "🔹 Life Potions", -- Life potions menu title ( On qb-menu )
    Job = true,
    Gang = false,
    GangName = "",
    JobName = "potionmaster",
    Pocao25 = {
        Name = "Elixir of Life [Small]", -- Item name ( On qb-menu )
        XPNeed = 0, -- XP needed to craft it
        Description = "25% Life Potion", -- Item description ( On qb-menu )
        Effects = "Gives +25% health instantly", -- Description of effects when using the item ( On qb-menu )
        XPGained = 1, -- XP gained by crafting the item
        ItemNeed = "emptybottle", -- Name of item needed to craft
        Amount = 1, -- Amount of item needed to craft.
        NotifyCreated = "Elixir of Life [Small] created successfully.", -- Notification when successfully crafted
        TimeCreate = 10000, -- Time needed to craft
        Effect = 25, -- Effect that will have when using the option | 25 = 25% of health
    },
    Pocao50 = {
        Name = "Elixir of Life [Medium]",
        XPNeed = 5,
        Description = "50% Life Potion",
        Effects = "Gives +50% health instantly",
        XPGained = 2,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Life [Medium] created successfully.",
        TimeCreate = 10000,
        Effect = 50,
    },
    Pocao75 = {
        Name = "Elixir of Life [Large]",
        XPNeed = 10,
        Description = "75% Life Potion",
        Effects = "Gives +75% health instantly",
        XPGained = 3,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Life [Large] created successfully.",
        TimeCreate = 10000,
        Effect = 75,
    },
    Pocao100 = {
        Name = "Elixir of Life [Extra Large]",
        XPNeed = 15,
        Description = "100% Life Potion",
        Effects = "Gives +100% health instantly",
        XPGained = 4,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Life [Extra Large] created successfully.",
        TimeCreate = 10000,
        Effect = 100,
    },
}

Config.ArmourPotion = {
    Enable = true,
    Name = "🔹 Armour Potions",
    Job = true,
    JobName = "potionmaster",
    Gang = false,
    GangName = "",
    Pocao25 = {
        Name = "Elixir of Armour [Small]",
        XPNeed = 0,
        Description = "25% Armour Potion",
        Effects = "Gives +25% armour instantly",
        XPGained = 1,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Armour [Small] created successfully.",
        TimeCreate = 10000,
        Effect = 25,
    }, 
    Pocao50 = {
        Name = "Elixir of Armour [Medium]",
        XPNeed = 5,
        Description = "50% Armour Potion",
        Effects = "Gives +50% armour instantly",
        XPGained = 2,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Armour [Medium] created successfully.",
        TimeCreate = 10000,
        Effect = 50,
    },
    Pocao75 = {
        Name = "Elixir of Armour [Large]",
        XPNeed = 10,
        Description = "75% Armour Potion",
        Effects = "Gives +75% armour instantly",
        XPGained = 3,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Armour [Large] created successfully.",
        TimeCreate = 10000,
        Effect = 75,
    },
    Pocao100 = {
        Name = "Elixir of Armour [Extra Large]",
        XPNeed = 15,
        Description = "100% Armour Potion",
        Effects = "Gives +100% armour instantly",
        XPGained = 4,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Armour [Extra Large] created successfully.",
        TimeCreate = 10000,
        Effect = 100,
    },
}

Config.StaminaPotion = {
    Enable = true,
    Name = "🔹 Stamina Potions",
    Job = true,
    JobName = "potionmaster",
    Gang = false,
    GangName = "",
    Pocao50 = {
        Name = "Elixir of Stamina [Medium]",
        XPNeed = 0,
        Description = "50% Stamina Potion",
        Effects = "Gives +50% stamina instantly",
        XPGained = 2,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Stamina [Medium] created successfully.",
        TimeCreate = 10000,
    },
    Pocao75 = {
        Name = "Elixir of Stamina [Large]",
        XPNeed = 5,
        Description = "75% Stamina Potion",
        Effects = "Gives +75% stamina instantly",
        XPGained = 3,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Stamina [Large] created successfully.",
        TimeCreate = 10000,
    },
    Pocao100 = {
        Name = "Elixir of Stamina [Extra Large]",
        XPNeed = 15,
        Description = "100% Stamina Potion",
        Effects = "Gives +100% stamina instantly",
        XPGained = 4,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Stamina [Extra Large] created successfully.",
        TimeCreate = 10000,
    },
}

Config.NightvisionPotion = {
    Enable = true,
    Name = "🔹 Nightvision Potions",
    Job = true,
    JobName = "potionmaster",
    Gang = false,
    GangName = "",
    Pocao25 = {
        Name = "Elixir of Nightvision [Small]",
        XPNeed = 0,
        Description = "10s Nightvision Potion",
        Effects = "Gives 10s nightvision instantly",
        XPGained = 1,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Nightvision [Small] created successfully.",
        TimeCreate = 10000,
        TimeUse = 10000, -- 10 Seconds
    },
    Pocao50 = {
        Name = "Elixir of Nightvision [Medium]",
        XPNeed = 5,
        Description = "20s Nightvision Potion",
        Effects = "Gives 20s nightvision instantly",
        XPGained = 2,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Nightvision [Medium] created successfully.",
        TimeCreate = 10000,
        TimeUse = 20000, -- 20 Seconds
    },
    Pocao75 = {
        Name = "Elixir of Nightvision [Large]",
        XPNeed = 10,
        Description = "30s Nightvision Potion",
        Effects = "Gives 30s nightvision instantly",
        XPGained = 3,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Nightvision [Large] created successfully.",
        TimeCreate = 10000,
        TimeUse = 30000, -- 30 Seconds
    },
    Pocao100 = {
        Name = "Elixir of Nightvision [Extra Large]",
        XPNeed = 15,
        Description = "40s Nightvision Potion",
        Effects = "Gives 40s nightvision instantly",
        XPGained = 4,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Nightvision [Extra Large] created successfully.",
        TimeCreate = 10000,
        TimeUse = 40000, -- 40 Seconds
    },
}

Config.SpeedPotion = {
    Enable = true,
    Name = "🔹 Speed Potions",
    Job = true,
    JobName = "potionmaster",
    Gang = false,
    GangName = "",
    Pocao25 = {
        Name = "Elixir of Speed [Small]",
        XPNeed = 0,
        Description = "10s Speed Potion",
        Effects = "Gives 10s speed instantly",
        XPGained = 1,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Speed [Small] created successfully.",
        TimeCreate = 10000,
        TimeUse = 10000, -- 10 Seconds
    },
    Pocao50 = {
        Name = "Elixir of Speed [Medium]",
        XPNeed = 0,
        Description = "20s Speed Potion",
        Effects = "Gives 20s speed instantly",
        XPGained = 2,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Speed [Medium] created successfully.",
        TimeCreate = 10000,
        TimeUse = 20000, -- 20 Seconds
    },
    Pocao75 = {
        Name = "Elixir of Speed [Large]",
        XPNeed = 0,
        Description = "30s Speed Potion",
        Effects = "Gives 30s speed instantly",
        XPGained = 3,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Speed [Large] created successfully.",
        TimeCreate = 10000,
        TimeUse = 30000, -- 30 Seconds
    },
    Pocao100 = {
        Name = "Elixir of Speed [Extra Large]",
        XPNeed = 0,
        Description = "40s Speed Potion",
        Effects = "Gives 40s speed instantly",
        XPGained = 4,
        ItemNeed = "emptybottle",
        Amount = 1,
        NotifyCreated = "Elixir of Speed [Extra Large] created successfully.",
        TimeCreate = 10000,
        TimeUse = 40000, -- 40 Seconds
    },
}

-------------------------
-- Language
-------------------------

Config["Language"] = {
    ["QBMenu"] = {
        ["GeneralMenu"] = "Potions",
        ["MakePotions"] = "🧪 Make potions!",
        ["Information"] = "❓ Information",
        ["InformationHeader"] = "Here you can make health, armor, stamina, nightvision or speed potions. Clearly you will need to do one by one to learn how to do others. The more you do, the more XP you earn to improve your knowledge.",
        ["InformationBack"] = "< Back",
        ["Description"] = "Description: ",
        ["Name"] = "Name: ",
        ["Effect"] = "Effect: ",
        ["XPGained"] = "XP Gained: ",
    },
    ["Notification"] = {
        ["Failed"] = "You failed.",
        ["NoItems"] = "You don't have what you need.",
        ["InWater"] = "You can't do that in water.",
        ["InCar"] = "You cannot do this inside a vehicle.",
        ["JobErrado"] = "You don't have the job you need."
    },
    ["ProgressBars"] = {
        ["LifePotion"] = "Creating the potion of life..",
        ["ArmourPotion"] = "Creating the armor potion..",
        ["StaminaPotion"] = "Creating the stamina potion..",
        ["NightvisionPotion"] = "Creating the nightvision potion..",
        ["SpeedPotion"] = "Creating the speed potion..",
        ["DrinkPotions"] = "Drinking...",
        ["PutTable"] = "Put the table..",
        ["SaveTable"] = "Save the table..",
    },
    ["QBTarget"] = {
        ["MakePotions"] = "Make Potions",
        ["IconMakePotions"] = "fa-solid fa-filter",
        ["SaveTable"] = "Save Table",
        ["IconSaveTable"] = "fa-solid fa-filter",
    }
}