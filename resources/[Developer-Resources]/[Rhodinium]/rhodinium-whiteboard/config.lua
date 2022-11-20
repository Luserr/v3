Config = {}

Config.Debug = false -- Debug Status For PolyZone
Config.DefaultBoardUrl = "https://cdn.discordapp.com/attachments/982104385679159296/1044016654172033034/post.png" -- Don't Edit

Config.Locations = {
    ['townhallbigscreen'] = { -- COURT ROOM BIG SCREEN
        PolyZone = { -- Room Area For After Enter Show Image
            coords = vector3(-528.11, -181.07, 38.22),
            length = 40.2,
            width = 40.2,
            minZ = 30.00,
            maxZ = 50.00
        },
        Target = { -- Area for Show Target Options
            coords = vector3(-515.24, -182.24, 38.22),
            length = 1.5,
            width = 1.5,
            minZ = 37.50,
            maxZ = 39.00
        },
        -- Props For Replace Texture
        origTxd = 'np_town_hall_bigscreen', -- Prop
        origTxn = 'projector_screen', -- Texture
        job = false, -- Job Name Or false
        currentImage = Config.DefaultBoardUrl, -- Don't Edit
        inZone = false -- Don't Edit
    },
    ['uwucafe_menus'] = { -- COURT ROOM BIG SCREEN
        PolyZone = { -- Room Area For After Enter Show Image
            coords = vector3(-580.39, -1060.26, 22.35),
            length = 21.8,
            width = 17.2, 
            minZ = 22.00,
            maxZ = 26.00
        }, 
        Target = { -- Area for Show Target Options
            coords = vector3(-587.1, -1062.86, 22.34),
            length = 0.6,
            width = 0.2,
            minZ = 20.54,
            maxZ = 25.00
        },
        -- Props For Replace Texture
        origTxd = 'denis3d_catcafe_txd', -- Prop
        origTxn = 't_m_catcafe_imageatlas01', -- Texture
        job = 'uwu', -- Job Name Or false
        currentImage = Config.DefaultBoardUrl, -- Don't Edit
        inZone = false -- Don't Edit
    },
}

  
  