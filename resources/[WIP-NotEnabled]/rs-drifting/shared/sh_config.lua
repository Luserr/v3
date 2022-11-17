Config = {}

Config.Core = "qb-core"
Config.Target = "qb-target"
Config.RadialMenu = "qb-radialmenu"


Config.DriftKey = 'LCONTROL' -- https://docs.fivem.net/docs/game-references/controls/
Config.Debug = false -- Debug System (true or false)
Config.UseJob = true -- If you want to use a job for assembling kits
Config.Jobs = {"hayesauto"} -- Job name if Config.UseJob is true
Config.FuelScript = 'qb-fuel'
Config.IsVehicleOwned = true -- If you want the vehicle to owned or not
Config.InstallLocations = {
    enabled = true,
    target = true, -- Uses qb-target
    [1] = {
        zones = {
            vector2(-1415.642, -439.6568),
            vector2(-1411.255, -446.3897),
            vector2(-1407.764, -444.6405),
            vector2(-1411.816, -437.8082)
        },
        minz = 5.2,
        maxz = 40.3,
    },
    [2] = {
        zones = {
            vector2(-227.36608886719, -1326.3975830078),
            vector2(-227.29112243652, -1331.9533691406),
            vector2(-218.47334289551, -1331.8719482422),
            vector2(-218.5029296875, -1326.6939697266)
        },
        minz = 10.2,
        maxz = 35.3,
    },
}

Config.ProgressbarTime = math.random(5000, 10000) -- Time in milliseconds
Config.DriftTorque = 3.0 -- Amount of torque that vehicle recives when in Drift Mode
Config.Handling = { -- Drift Handling Line
	{"fInitialDragCoeff", 90.22},
	{"fDriveInertia", .31},
	{"fSteeringLock", 22},
	{"fTractionCurveMax", -1.1},
	{"fTractionCurveMin", -.4},
	{"fTractionCurveLateral", 2.5},
	{"fLowSpeedTractionLossMult", -.57}
}