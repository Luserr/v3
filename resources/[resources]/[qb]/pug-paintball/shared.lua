local QBCore = exports['qb-core']:GetCoreObject()
Config = {}
Config.CoreName = 'qb-core' -- your core name
Config.RequirePlayersOnBothTeams = true -- change this to true if you dont want there to be players on both teams to be able to start the match
Config.UseVrHeadSet = false -- Toggle this true if you are using the vr headset instead of peds
Config.StartLoc = vector3(-280.78, -2032.31, 30.15) -- if you change your ped location change this (THIS DOESNT MATTER IF Config.UseVrHeadSet IS TRUE)
Config.MaxTeam = 8 -- i wouldnt change this
Config.MaxLives = 7 -- Maximum amount of lives players can set
Config.MinWager = 500 -- minimum bet players can make
Config.MaxWager = 25000 -- maximum bet players can make
Config.Input = 'qb-input' -- only change if you have changed your input menu script name
Config.Menu = 'qb-menu' -- only change if you have changed your menu script name
Config.Dead = 'inlaststand' -- one of the checks for when the player goes down. some devs dont use inlaststand and only use isdead in steead
Config.SpectateEnabled = true -- if you dont want players to have the option to spectate make this false
Config.ContextMenuEvent = 'nh-context:createMenu' -- do not change
Config.UsingPmaVoice = true -- do not change [this is for people who still use tokovoip]
Config.TimeToCheckLastStand = 550 -- this is the wait time after a player dies to revive them. some servers have longer animations than others so thats why this is here. if you run into an issue where you do not get revived make this a longer wait time | Default set to 1.2 seconds

Config.RedTeamLoc = {
    [1] = vector3(2963.51, -3809.35, 140.03),
    [2] = vector3(2963.59, -3807.25, 140.03),
    [3] = vector3(2963.47, -3804.79, 140.03),
    [4] = vector3(2963.45, -3801.81, 140.03),
    [5] = vector3(2963.3, -3798.65, 140.03),
    [6] = vector3(2963.11, -3796.53, 140.03),
    [7] = vector3(2962.75, -3794.05, 140.03),
    [8] = vector3(2962.34, -3791.0, 140.03),
}

Config.BlueTeamLoc  = {
    [1] = vector3(2630.54, -3786.92, 140.03),
    [2] = vector3(2629.65, -3789.25, 140.03),
    [3] = vector3(2629.48, -3791.61, 140.03),
    [4] = vector3(2629.26, -3795.24, 140.03),
    [5] = vector3(2629.0, -3797.43, 140.03),
    [6] = vector3(2628.84, -3799.87, 140.03),
    [7] = vector3(2628.71, -3802.15, 140.03),
    [8] = vector3(2628.72, -3804.98, 140.03),
}

Config.Arenas = {
    [1] = {
        name = 'Jurassic Park',
        map = 'Set_Dystopian_02',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/980886362951651368/unknown.png',
        description = 'Welcome To Jurassic Park'
    },
    [2] = {
        name = 'Wrecking Ball',
        map = 'Set_Dystopian_03',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/981005345927360563/unknown.png',
        description = 'Time to wreck some balls'
    },
    [3] = {
        name = 'Scrap Yard',
        map = 'Set_Dystopian_04',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/980886747464474725/unknown.png',
        description = 'Good cover'
    },
    [4] = {
        name = 'Ship Wreck',
        map = 'Set_Dystopian_07',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/980887060061761618/unknown.png',
        description = 'A ship has been wrecked'
    },
    [5] = {
        name = 'Industrial Whore House',
        map = 'Set_Dystopian_09',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/980885933912100914/unknown.png',
        description = 'Dont fall off'
    },
    [6] = {
        name = 'Scrap Yard 2',
        map = 'Set_Dystopian_10',
        url = 'https://cdn.discordapp.com/attachments/981699718453280828/1001163774264348763/unknown.png',
        description = 'Down goes the titan'
    },
    [7] = {
        name = 'Future Palace9',
        map = 'Set_Scifi_09',
        url = 'https://cdn.discordapp.com/attachments/981699718453280828/1001164229644144740/unknown.png',
        description = 'Too futuristic no cover'
    },
    [8] = {
        name = 'Toy Soldier',
        map = 'Set_Wasteland_01',
        url = 'https://cdn.discordapp.com/attachments/981699718453280828/1001164855979548723/unknown.png',
        description = 'Little man in a big world'
    },
    [9] = {
        name = 'Tire City',
        map = 'Set_Wasteland_03',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/981278893728223323/unknown.png',
        description = 'Not that tire city'
    },
    [10] = {
        name = 'Walk In The Park',
        map = 'Set_Wasteland_07',
        url = 'https://cdn.discordapp.com/attachments/969872600404754463/981281426957815829/unknown.png',
        description = 'Tire Park City'
    },
    [11] = {
        name = 'Tube Town',
        map = 'Set_Wasteland_09',
        url = 'https://cdn.discordapp.com/attachments/981699718453280828/1001165186687836180/unknown.png',
        description = 'Tube City Town'
    },
}

Config.Pistols = {
    [1] = {
        description = QBCore.Shared.Items['weapon_pistol']["description"],
        weapon = 'weapon_pistol',
    },
    [2] = {
        description = QBCore.Shared.Items['weapon_pistol_mk2']["description"],
        weapon = 'weapon_pistol_mk2', 
    },
    [3] = {
        description = QBCore.Shared.Items['weapon_combatpistol']["description"],
        weapon = 'weapon_combatpistol', 
    },
    [4] = {
        description = QBCore.Shared.Items['weapon_appistol']["description"],
        weapon = 'weapon_appistol', 
    },
    [5] = {
        description = QBCore.Shared.Items['weapon_pistol50']["description"],
        weapon = 'weapon_pistol50', 
    },
    [6] = {
        description = QBCore.Shared.Items['weapon_heavypistol']["description"],
        weapon = 'weapon_heavypistol', 
    },
    [7] = {
        description = QBCore.Shared.Items['weapon_vintagepistol']["description"],
        weapon = 'weapon_vintagepistol', 
    },
}

Config.Smgs = {
    [1] = {
        description = QBCore.Shared.Items['weapon_microsmg']["description"],
        weapon = 'weapon_microsmg', 
    },
    [2] = {
        description = QBCore.Shared.Items['weapon_smg']["description"],
        weapon = 'weapon_smg', 
    },
    [3] = {
        description = QBCore.Shared.Items['weapon_smg_mk2']["description"], 
        weapon = 'weapon_smg_mk2', 
    },
    [4] = {
        description = QBCore.Shared.Items['weapon_assaultsmg']["description"],
        weapon = 'weapon_assaultsmg', 
    },
    [5] = {
        description = QBCore.Shared.Items['weapon_combatpdw']["description"],
        weapon = 'weapon_combatpdw', 
    },
    [6] = {
        description = QBCore.Shared.Items['weapon_gusenberg']["description"],
        weapon = 'weapon_gusenberg', 
    },
    [7] = {
        description = QBCore.Shared.Items['weapon_machinepistol']["description"],
        weapon = 'weapon_machinepistol', 
    },
    [8] = {
        description = QBCore.Shared.Items['weapon_minismg']["description"],
        weapon = 'weapon_minismg', 
    },
}   
Config.Shotguns = {
    [1] = {
        description = QBCore.Shared.Items['weapon_pumpshotgun']["description"],
        weapon = 'weapon_pumpshotgun', 
    },
    [2] = {
        description = QBCore.Shared.Items['weapon_sawnoffshotgun']["description"],
        weapon = 'weapon_sawnoffshotgun', 
    },
    [3] = {
        description = QBCore.Shared.Items['weapon_assaultshotgun']["description"],
        weapon = 'weapon_assaultshotgun', 
    },
    [4] = {
        description = QBCore.Shared.Items['weapon_bullpupshotgun']["description"],
        weapon = 'weapon_bullpupshotgun', 
    },
    [5] = {
        description = QBCore.Shared.Items['weapon_heavyshotgun']["description"],
        weapon = 'weapon_heavyshotgun', 
    },
    [6] = {
        description = QBCore.Shared.Items['weapon_dbshotgun']["description"],
        weapon = 'weapon_dbshotgun', 
    },
    [7] = {
        description = QBCore.Shared.Items['weapon_autoshotgun']["description"],
        weapon = 'weapon_autoshotgun', 
    },
    [8] = {
        description = QBCore.Shared.Items['weapon_pumpshotgun_mk2']["description"],
        weapon = 'weapon_pumpshotgun_mk2', 
    },
    [9] = {
        description = QBCore.Shared.Items['weapon_combatshotgun']["description"],
        weapon = 'weapon_combatshotgun', 
    },
}
Config.AssaultRifles = {
    [1] = {
        description = QBCore.Shared.Items['weapon_assaultrifle']["description"],
        weapon = 'weapon_assaultrifle', 
    },
    [2] = {
        description = QBCore.Shared.Items['weapon_assaultrifle_mk2']["description"],
        weapon = 'weapon_assaultrifle_mk2', 
    },
    [3] = {
        description = QBCore.Shared.Items['weapon_carbinerifle']["description"],
        weapon = 'weapon_carbinerifle', 
    },
    [4] = {
        description = QBCore.Shared.Items['weapon_carbinerifle_mk2']["description"],
        weapon = 'weapon_carbinerifle_mk2', 
    },
    [5] = {
        description = QBCore.Shared.Items['weapon_advancedrifle']["description"],
        weapon = 'weapon_advancedrifle', 
    },
    [6] = {
        description = QBCore.Shared.Items['weapon_specialcarbine']["description"],
        weapon = 'weapon_specialcarbine', 
    },
    [7] = {
        description = QBCore.Shared.Items['weapon_bullpuprifle']["description"],
        weapon = 'weapon_bullpuprifle', 
    },
    [8] = {
        description = QBCore.Shared.Items['weapon_compactrifle']["description"],
        weapon = 'weapon_compactrifle', 
    },
    [9] = {
        description = QBCore.Shared.Items['weapon_specialcarbine_mk2']["description"],
        weapon = 'weapon_specialcarbine_mk2', 
    },
    [10] = {
        description = QBCore.Shared.Items['weapon_bullpuprifle_mk2']["description"],
        weapon = 'weapon_bullpuprifle_mk2', 
    },
    [11] = {
        description = QBCore.Shared.Items['weapon_militaryrifle']["description"],
        weapon = 'weapon_militaryrifle', 
    },
}