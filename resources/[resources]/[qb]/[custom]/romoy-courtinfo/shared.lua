Shared = {}

Shared.Framework = 'QBCore' -- Name of Framework, currently supports QBCore, ESX

Shared.Folder = 'qb-core' -- Folder of framework

--Shared.InfoRequest = '' --

--Shared.Webhook = '' --Discord Webhook for logging

Shared.ExportFunction = GetCoreObject --Function for importing framework QBCore is GetCoreObject()

Shared.Blip = false -- If you want a blip on the map

Shared.JobRequire = true --If a job is needed to pull info

Shared.Jobnames = { --Job names allowed to pull info if Shared.JobRequire is true
    [1] = {
        name = 'police',
    },
    --[[[2] = {
        name = 'judge',
    } ,  
    [3] = {
        name = 'lawyer',
    },]]--
}

Shared.Cooldown = false --If true cooldown will be 5 Minutes by default

Shared.CooldownTime = 5 -- Cooldown in minutes if Shared.Cooldown is true