Config = {
    -- set NearbyTip to false to disable
    NearbyTip = 
[[
~b~/play ~s~[~y~twitch / youtube~s~] ~s~[~y~twitch channel / video id~s~]
~b~/setvolume ~s~[~y~0-100~s~]
~b~/refreshtv
~b~/stop
]],
    Embeds = {
        YouTube = "https://loaf-scripts.com/fivem/loaf_tv/youtube.php?video=%s&time=TIME_PASSED",
        Twitch = "https://loaf-scripts.com/fivem/loaf_tv/twitch.php?channel=%s",
        MP4 = "https://loaf-scripts.com/fivem/loaf_tv/mp4.php?video=%s&time=TIME_PASSED"
    },
    DuiPositions = {
        YouTube = {
            Volume = {
                Initial = vector2(80, 700),
                Stages = {
                    vector2(99, 700), 
                    vector2(149, 700)
                },
            },
            Idle = vector2(1280, 720),
        },
        Twitch = {
            Confirm = vector2(640, 440),
            Volume = {
                Initial = vector2(55, 695),
                Stages = {
                    vector2(70, 695), 
                    vector2(179, 695)
                },
            },
            Idle = vector2(1280, 720),
        },
        MP4 = {
            Idle = vector2(1280, 720),
        }
    },
    Objects = {
        {
            Model = `prop_tv_flat_01`,
            Scale = 0.05*(1920/1280),
            Offset = vec3(-0.925, -0.055, 1.0),
            Distance = 7.5,
            Draw = "tvscreen", -- scaleform or rendertarget
        },
        {
            Model = `prop_tv_flat_michael`,
            Scale = 0.035,
            Offset = vec3(-0.675, -0.055, 0.4),
            Distance = 7.5,
            Draw = "tvscreen",
        },
        {
            Model = `prop_trev_tv_01`,
            Scale = 0.012,
            Offset = vec3(-0.225, -0.01, 0.26),
            Distance = 7.5,
            Draw = "tvscreen",
        },
        {
            Model = `prop_tv_flat_03b`,
            Scale = 0.016,
            Offset = vec3(-0.3, -0.062, 0.18),
            Distance = 7.5,
            Draw = "tvscreen",
        },
        {
            Model = `prop_tv_flat_03`,
            Scale = 0.016,
            Offset = vec3(-0.3, -0.01, 0.4),
            Distance = 7.5,
            Draw = "tvscreen",
        },
        {
            Model = `prop_tv_flat_02b`,
            Scale = 0.026,
            Offset = vec3(-0.5, -0.012, 0.525),
            Distance = 7.5,
            Draw = "tvscreen"
        },
        {
            Model = `prop_tv_flat_02`,
            Scale = 0.026,
            Offset = vec3(-0.5, -0.012, 0.525),
            Distance = 7.5,
            Draw = "tvscreen"
        },
        {
            Model = `v_ilev_cin_screen`,
            Distance = 50.0,
            Draw = "cinscreen"
        },
        {
            Model = 1522819744,
            Distance = 50.0,
            Draw = "cinscreen"
        },
        {
            Model = `prop_big_cin_screen`,
            Distance = 100.0,
            Draw = "cinscreen"
        },
    }
}