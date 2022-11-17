Config = Config or {}
Config.Dealers = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.PoliceCallChance = 15

-- Shop Config
Config.Products = {
    [1] = {
        name = "weed_white-widow",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 1,
        minrep = 0,
    },
    [2] = {
        name = "weed_skunk",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 2,
        minrep = 20,
    },
    [3] = {
        name = "weed_purple-haze",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 3,
        minrep = 40,
    },
    [4] = {
        name = "weed_og-kush",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 4,
        minrep = 60,
    },
    [5] = {
        name = "weed_amnesia",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 5,
        minrep = 80,
    },
    [6] = {
        name = "weed_white-widow_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 6,
        minrep = 100,
    },
    [7] = {
        name = "weed_skunk_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 7,
        minrep = 120,
    },
    [8] = {
        name = "weed_purple-haze_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 8,
        minrep = 140,
    },
    [9] = {
        name = "weed_og-kush_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 9,
        minrep = 160,
    },
    [10] = {
        name = "weed_amnesia_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 10,
        minrep = 180,
    },
    [11] = {
        name = "cokebaggy",
        price = 200,
        amount = 150,
        info = {},
        type = "item",
        slot = 11,
        minrep = 200,
    },
    [12] = {
        name = "meth",
        price = 250,
        amount = 150,
        info = {},
        type = "item",
        slot = 12,
        minrep = 220,
    },
}

-- Selling Config
Config.SuccessChance = 65
Config.ScamChance = 25
Config.RobberyChance = 25
Config.MinimumDrugSalePolice = 0

Config.CornerSellingDrugsList = {
    "weed_white-widow",
    "weed_skunk",
    "weed_purple-haze",
    "weed_og-kush",
    "weed_amnesia",
    "weed_ak47",
    "crack_baggy",
    "cokebaggy",
    "meth",
    "xtcbaggy",
    "heroin"
}

Config.DrugsPrice = {
    ["weed_white-widow"] = {
        min = 320,
        max = 400,
    },
    ["weed_og-kush"] = {
        min = 320,
        max = 420,
    },
    ["weed_skunk"] = {
        min = 320,
        max = 440,
    },
    ["weed_amnesia"] = {
        min = 320,
        max = 460,
    },
    ["weed_purple-haze"] = {
        min = 320,
        max = 480,
    },
    ["weed_ak47"] = {
        min = 320,
        max = 480,
    },
    ["crack_baggy"] = {
        min = 530,
        max = 750,
    },
    ["cokebaggy"] = {
        min = 540,
        max = 800,
    },
    ["meth"] = {
        min = 560,
        max = 825,
    }, 
    ["xtcbaggy"] = {
        min = 580,
        max = 850,
    },
    ["heroin"] = {
        min = 600,
        max = 850,
    }
}

-- Delivery Config
Config.UseMarkedBills = true-- true for marked bills, false for cash
Config.DeliveryRepGain = 3 -- amount of rep gained per delivery
Config.DeliveryRepLoss = 1 -- amount of rep lost if delivery wrong or late
Config.PoliceDeliveryModifier = 0 -- amount to multiply active cop count by
Config.WrongAmountFee = 2 -- divide the payout by this value for wrong delivery amount
Config.OverdueDeliveryFee = 4 -- divide the payout by this value for overdue delivery

Config.DeliveryItems = {
    [1] = {
        ["item"] = "weed_brick",
        ["minrep"] = 0,
        ['payout'] = 200
    },
    [2] = {
        ["item"] = "coke_brick",
        ["minrep"] = 20,
        ['payout'] = 3000
    },
    [3] = {
        ["item"] = "meth",
        ["minrep"] = 40,
        ['payout'] = 5000
    },
    [4] = {
        ["item"] = "heroin",
        ["minrep"] = 60,
        ['payout'] = 7000
    },
    [5] = {
        ["item"] = "xtcbaggy",
        ["minrep"] = 70,
        ['payout'] = 7200
    },
    [6] = {
        ["item"] = "cokebaggy",
        ["minrep"] = 80,
        ['payout'] = 8100
    },
}

Config.DeliveryLocations = {
    [1] = {
        ["label"] = "Stripclub",
        ["coords"] = vector3(106.24, -1280.32, 29.24),
    },
    [2] = {
        ["label"] = "Vinewood Video",
        ["coords"] = vector3(223.98, 121.53, 102.76),
    },
    [3] = {
        ["label"] = "Taxi",
        ["coords"] = vector3(882.67, -160.26, 77.11),
    },
    [4] = {
        ["label"] = "Resort",
        ["coords"] = vector3(-1245.63, 376.21, 75.34),
    },
    [5] = {
        ["label"] = "Bahama Mamas",
        ["coords"] = vector3(-1383.1, -639.99, 28.67),
    },
}
