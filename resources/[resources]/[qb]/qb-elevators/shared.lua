Shared = {}

Config = {}

Config.UseLanguage = "en"
Config.UseSoundEffect = true

Config.Elevators = {
    ["PillBoxOne"] = {
        Name = "Elevator Two",
        Sound = "LiftSoundBellRing",
        Floors = {
            [1] = {
                Label = "Second Floor",
                FloorDesc = "Hospital Rooftop",
                Coords = vector3(338.51, -583.81, 74.16),
                ExitHeading = "250.07"
            },
            [2] = {
                Label = "First Floor",
                FloorDesc = "Hospital Upper Lobby",
                Coords = vector3(327.02, -603.85, 43.28),
                ExitHeading = "337.25"
            },
            [3] = {
                Label = "Ground Floor",
                FloorDesc = "Hospital Garage",
                Coords = vector3(340.18, -584.68, 28.8),
                ExitHeading = "104.87"
            },
        }
    },
    ["PillBoxTwo"] = {
        Name = "Elevator One",
        Sound = "LiftSoundBellRing",
        Floors = {
            [1] = {
                Label = "First Floor",
                FloorDesc = "Hospital Upper Lobby",
                Coords = vector3(330.43, -601.16, 43.28),
                ExitHeading = "70.91"
            },
            [2] = {
                Label = "Ground Floor",
                FloorDesc = "Hospital Lower Lobby",
                Coords = vector3(345.62, -582.54, 28.8),
                ExitHeading = "262.86"
            },
        }
    },
    ["Movie Theater"] = {
        Name = "Movie Elevator",
        Sound = "LiftSoundBellRing",
        Floors = {
            [1] = {
                Label = "Movie First Entrance",
                FloorDesc = "Movie Theater Official",
                Coords = vector3(298.45361, 136.07318, 104.11214),
                ExitHeading = "70.91"
            },
            [2] = {
                Label = "Movie Theater Exit",
                FloorDesc = "Movie Theater Entrance",
                Coords = vector3(-576.3889, -919.4104, -7.213407),
                ExitHeading = "262.86"
            },
        }
    },
}

Config.PolyZone = false -- This will show the box zones | If set to false it will hide the box zones

Config.WaitTime = 8000 -- This will set the time for the ProgressBar | 1000 = 1 second

Config.ElevatorButton = {

    ------ / Pill Box Hospital
    -- UnRestricted
    [1] = { name = "Ground Floor", location = vector3(346.10, -581.00, 28.8), width = 0.1, length = 0.3, heading = 69.47, minz = 28.9, maxz = 29.3},
    [2] = { name = "First Floor", location = vector3(330.04, -602.7, 43.28), width = 0.2, length = 0.3, heading = 247.68, minz = 43.48, maxz = 43.78 },

    -- Restricted
    [3] = { name = "EMS Garage", location = vector3(339.70, -586.20, 28.8), width = 0.1, length = 0.3, heading = 246.66, minz = 28.9, maxz = 29.3},
    [4] = { name = "Main Floor", location = vector3(325.65, -603.39, 43.28), width = 0.1, length = 0.3, heading = 160.6, minz = 43.48, maxz = 43.78},
    [5] = { name = "Heli Pad", location = vector3(338.42, -583.71, 74.16), width = 0.5, length = 2.8, heading = 70.21, minz = 74.16 - 1, maxz = 74.16 + 1.5 },

    ------ / CASINO
    --VIP Apartments - vector3(909.59082, -61.40779, 20.99757)
    --[6] = { name = "VIP Floor", location = vector3(325.65, -603.39, 43.28), width = 0.1, length = 0.3, heading = 160.6, minz = 43.48, maxz = 43.78},

    -- Movie
    [7] = { name = "Movie", location = vector3(298.01229, 136.34024, 104.11214), width = 0.5, length = 3.8, heading = 48, minz = 100.02, maxz = 106.08},
    [8] = { name = "Movie Exit", location = vector3(-575.839, -919.8507, -7.213412), width = 1.0, length = 4.8, heading = 72, minz = -5.02, maxz = 12.08},


}

Config.Language = {
    ["en"] = {
        Waiting = "Waiting for the Elevator...",
        Restricted = "Access Restricted!",
        CurrentFloor = "Current Floor: ",
        Unable = "You Can't Use The Elevator...",
    },
}