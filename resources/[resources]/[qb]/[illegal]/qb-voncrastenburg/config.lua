-- Author Kibra#9999
-- My Discord **dc.kibra.online**

Config = {}

Config.Locale = "en"

Config.SaveInventoryStashName = "MotelStash"
-- The name you type here is the title of the hotel warehouses.

Config.BillingTime = 900000 -- It calculates itself based on seconds. Time setting that determines how many times per second it will bill the hotel room to the players. 
-- Billing time

Config.MultiMotel = true 
-- Allows players to rent multiple motel rooms.

Config.InventoryStashEvents = {
    ServerEvent = "inventory:server:OpenInventory",
    ClientEvent = "inventory:client:SetCurrentStash"
}

Config.MotelsBlipAlwaysOpen = true
-- The motels keeps its Blips on at all times.

Config.MetaData = true
-- (Applies to qbcore only.) When a motel room is rented, a special key is given to that motel room. And people using this key can enter the rented room and gain access to the warehouse. If you mark it as false, each player will only be able to enter the room they rented.

Config.UIDrawText = true
-- If you mark it as true, the DrawText function is used. If you mark it as false, the UI DrawText will be used and optimized.

Config.MotelKeyItemName = "motelkey"
-- If the metadata is true, this may be useful for you.

Config.RoomNoDrawTextCommand = "showroomno" 
-- When this command is used, the number of hotel rooms becomes visible to all players from the specified distance level.

Config.NewRoomAddCommand = "newaddmotelroom"
-- Command that allows you to add a new motel room to the database.

Config.StashAccessEveryone = false
-- This property will work if the metadata property is set to false. In this case, if marked as true, anyone can do the Storage Check of the Room. However, if false, only the room owner can do this.

Config.MotelRoomRentBuyType = "bank" -- "cash" or "bank"

Config.CopyRoomKeyPrice = 200
-- A fee to issue a new key if you lose your motel room key.

Config.Wardrobe = {
    EventType = "client", -- client or server
    EventName = "raid_clothes:openClothing", -- Clothing Menu Event Name
}

-- UI Controls 
Config.UIControls = {
    StashLockControl = "[E]",
    DoorLockOpenControl = "[E]",
    StashOpenControl = "[G]",
    OpenReceptionControl = "[E]",
    WardrobeOpenControl = "[E]"
}
-- Controls
Config.StashLockControl = 38 -- Motel Stash Lock Control
Config.DoorLockControl = 38 -- Motel Door Lock Kontrol
Config.StashOpenControl = 47 -- Motel Stash Open Control
Config.OpenReceptionControl = 38 -- Reception Menu Open Control
Config.WardrobeOpenControl = 38

Config.Motels = {
    -- 1th
    {        
        MotelName = "Von Crastenburg", -- Motel Name

        MotelSocietyName = "voncrastenburg", -- Motel Name

        Background = "img/motel.png", -- Reception background image.

        MotelMainCoord = vector4(-1211.362, -198.2909, 39.324974, 332.22436), -- Motel Blip Coord

        MotelBlip = {Id = 475, Color = 1, Scale = 0.6},

        MotelBlipOpen = true, --  If true, Motel Blip is activated.

        MotelDistance = 10.0, 

        MotelDoorDistance = 1.5, -- The distance value of the players to the door

        ReceptionCoord = vector4(-1203.412, -202.7699, 39.324733, 60.263874), -- Reception Location Vector4()

        Payment = false, -- If it is true, an invoice will be issued for the room rented by the players at certain time intervals.

        MarkerColor = {r = 57, g = 125, b = 199, a = 0.9}, -- Marker color adjustment available at the reception.

        RoomPrice = 50, -- Motel Room Rent Price,

        InvoiceAmount = 42, -- Room Rental Price (It repeats itself over time.)

        Wardrobe = true, -- If true, motel rooms have wardrobes.

        MotelDoors = {
            -- Motel Rooms Available. You can add a new hotel room to this list.
            -- (Note: For a new hotel room you add here, you need to add a new column to the kibra_motels table in the database.
           {
                Owner = nil, -- Room #1
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1187.964, -187.6524, 47.786605, 13.501089), -- Coordinate of the door in the room
                StashCoord = vector4(-1187.959, -184.9763, 47.784076, 104.16133), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1187.69, -186.4954, 47.784008, 103.0348) -- Clothe / Wardrobe
            },

            {
                Owner = TPP56609, -- Room #2
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1180.152, -186.0306, 47.786655, 10.402548), -- Coordinate of the door in the room
                StashCoord = vector4(-1179.823, -179.7992, 47.783527, 76.550788), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1180.094, -183.5247, 47.78408, 94.071846) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #3
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1172.362, -184.3235, 47.78675, 13.761875), -- Coordinate of the door in the room
                StashCoord = vector4(-1172.619, -174.1773, 47.780021, 345.0447), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1172.27, -181.833, 47.78408, 94.090461) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #4
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1164.606, -182.7022, 47.786785, 14.882212), -- Coordinate of the door in the room
                StashCoord = vector4(-1164.923, -172.5074, 47.780075, 170.75292), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1164.433, -180.2475, 47.784076, 91.338195) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #5
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1156.906, -181.0019, 47.786785, 189.58552), -- Coordinate of the door in the room
                StashCoord = vector4(-1156.757, -174.4818, 47.783214, 272.92013), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1156.543, -179.0688, 47.784057, 277.35101) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #6
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1149.015, -179.3332, 47.786869, 191.80398), -- Coordinate of the door in the room
                StashCoord = vector4(-1148.925, -172.8967, 47.783359, 285.07656), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1148.852, -176.8253, 47.784164, 250.87469) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #7
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1151.262, -182.7144, 47.786521, 5.4112854), -- Coordinate of the door in the room
                StashCoord = vector4(-1151.437, -189.0007, 47.783401, 102.53262), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1151.383, -185.0964, 47.784156, 77.473274) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #8
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1159.119, -184.4766, 47.786453, 16.234146), -- Coordinate of the door in the room
                StashCoord = vector4(-1159.157, -191.0304, 47.783069, 127.27185), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1159.146, -186.8549, 47.784164, 261.20144) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #9
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1167.047, -186.0792, 47.786418, 13.584606), -- Coordinate of the door in the room
                StashCoord = vector4(-1167.057, -192.3591, 47.783367, 102.34463), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1167.071, -188.5086, 47.784164, 106.10273) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #10
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1174.791, -187.6559, 47.786338, 8.3009262), -- Coordinate of the door in the room
                StashCoord = vector4(-1174.871, -194.088, 47.783332, 104.20626), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1174.786, -189.7386, 47.784164, 287.03601) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #11
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1182.574, -189.4128, 47.78627, 9.0457992), -- Coordinate of the door in the room
                StashCoord = vector4(-1182.752, -195.5591, 47.783481, 105.62537), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1182.598, -191.5134, 47.784164, 289.82028) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #12
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1190.226, -191.0662, 47.78622, 8.0061197), -- Coordinate of the door in the room
                StashCoord = vector4(-1190.235, -197.3894, 47.783321, 276.05972), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1190.253, -193.3891, 47.78416, 290.94805) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #13
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1202.701, -201.6916, 47.786487, 64.860984), -- Coordinate of the door in the room
                StashCoord = vector4(-1197.609, -205.7377, 47.783195, 324.7987), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1200.89, -203.2272, 47.784065, 333.21517) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #14
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1206.447, -208.6619, 47.786441, 54.81768), -- Coordinate of the door in the room
                StashCoord = vector4(-1201.524, -212.7536, 47.783329, 327.05383), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1204.693, -210.1802, 47.784065, 327.85379) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #15
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1210.136, -215.8872, 47.786392, 61.287399), -- Coordinate of the door in the room
                StashCoord = vector4(-1205.219, -220.0734, 47.78326, 166.41241), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1208.333, -217.2909, 47.784164, 325.19537) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #16
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1213.832, -222.9717, 47.786319, 64.866729), -- Coordinate of the door in the room
                StashCoord = vector4(-1209.022, -226.8493, 47.782833, 329.33334), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1212.086, -224.4015, 47.783569, 316.22195) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #17
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1217.716, -229.9579, 47.7863, 62.081668), -- Coordinate of the door in the room
                StashCoord = vector4(-1213.024, -234.0431, 47.783046, 166.20503), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1216.03, -231.2914, 47.783668, 333.12774) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #18
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-1221.503, -237.0055, 47.786254, 50.320735), -- Coordinate of the door in the room
                StashCoord = vector4(-1216.588, -241.2082, 47.783355, 175.81593), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-1219.683, -238.4676, 47.784164, 328.31918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #19
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1221.939, -233.4081, 47.786548, 68.46614), -- Coordinate of the door in the room
                StashCoord = vector4 (-1227.545, -228.8107, 47.782669, 323.09518), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1224.274, -231.4357, 47.784152, 332.37469) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #20
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1220.539, -224.3815, 47.784152, 325.38607), -- Coordinate of the door in the room
                StashCoord = vector4 (-1223.697, -221.8365, 47.782829, 331.82638), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1220.62, -224.391, 47.784156, 322.08822) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #21
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1214.381, -219.3167, 47.78667, 66.806663), -- Coordinate of the door in the room
                StashCoord = vector4 (-1220.057, -214.688, 47.782688, 322.0227), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1216.813, -217.2535, 47.784149, 328.63858) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #22
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1210.652, -212.235, 47.786701, 62.583564), -- Coordinate of the door in the room
                StashCoord = vector4 (-1216.229, -207.6702, 47.782711, 331.46185), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1213.15,  -210.2955, 47.784145, 330.15283) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #23
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1206.789, -205.0729, 47.786727, 61.878395), -- Coordinate of the door in the room
                StashCoord = vector4 (-1212.418, -200.5516, 47.782787, 334.41738), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1209.288, -203.2264, 47.784152, 338.05917) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #24
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },
            ----------------------------------------------------------------------------------------------------------------------------------------------------------------
            ----------------------------------------------------------------------------------------------------------------------------------------------------------------
            ----------------------------------------------------------------------------------------------------------------------------------------------------------------

            --[[{
                Owner = nil, -- Room #25
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #26
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #27
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #28
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #29
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #30
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #31
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #32
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },

            {
                Owner = nil, -- Room #33
                KeyData = nil,
                Model = -674469114, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4 (-1203.002, -198.2326, 47.786808, 57.69242), -- Coordinate of the door in the room
                StashCoord = vector4 (-1208.612, -193.6234, 47.782844, 336.95172), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4 (-1205.596, -196.2199, 47.784152, 330.34918) -- Clothe / Wardrobe
            },]]--

        } 
    },

    -- 2th Motel
    --[[{
        MotelName = "Motor Motel", -- Motel Name

        MotelMainCoord = vector4(-699.06, 5775.95, 17.33, 215.1), -- Motel Blip Coord

        Background = "img/motor.png",

        MotelSocietyName = "PNKCGMTL", -- Motel Name

        MotelDistance = 30.0,

        MotelBlip = {Id = 475, Color = 1, Scale = 0.6},

        MotelBlipOpen = true, --  If true, Motel Blip is activated.

        MotelDoorDistance = 1.5, -- The distance value of the players to the door

        ReceptionCoord = vector4(-702.47, 5789.73, 17.52, 265.24), -- Reception Location Vector4()

        Payment = true, -- If it is true, an invoice will be issued for the room rented by the players at certain time intervals.

        MarkerColor = {r = 57, g = 125, b = 199, a = 0.9}, -- Marker color adjustment available at the reception.

        RoomPrice = 100, -- Motel Room Rent Price,

        InvoiceAmount = 100, -- Room Rental Price (It repeats itself over time.)

        Wardrobe = true, -- If true, motel rooms have wardrobes.

        MotelDoors = {
            -- Motel Rooms Available. You can add a new hotel room to this list.
            -- (Note: For a new hotel room you add here, you need to add a new column to the kibra_motels table in the database.
            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-681.7, 5770.69, 17.51, 248.51), -- Coordinate of the door in the room
                StashCoord = vector4(-677.03, 5770.99, 17.54, 336.73), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-675.93, 5768.63, 17.54, 336.39) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-683.41, 5766.64, 17.54, 261.15), -- Coordinate of the door in the room
                StashCoord = vector4(-678.9, 5767.13, 17.54, 299.53), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-678.03, 5764.43, 17.54, 334.82) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-685.34, 5762.77, 17.51, 212.0), -- Coordinate of the door in the room
                StashCoord = vector4(-680.65, 5763.13, 17.54, 347.1), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-679.88, 5760.79, 17.54, 263.72) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-687.43, 5759.1, 17.51, 242.05), -- Coordinate of the door in the room
                StashCoord = vector4(-681.69, 5756.64, 17.54, 319.85), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-682.58, 5759.23, 17.54, 349.07) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-690.38, 5759.54, 17.51, 160.26), -- Coordinate of the door in the room
                StashCoord = vector4(-690.1, 5754.68, 17.54, 265.82), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-692.55, 5753.87, 17.54, 167.67) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-694.33, 5761.29, 17.51, 248.11), -- Coordinate of the door in the room
                StashCoord = vector4(-694.04, 5756.55, 17.54, 257.49), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-696.42, 5755.61, 17.54, 170.5) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-698.0, 5763.48, 17.51, 157.06), -- Coordinate of the door in the room
                StashCoord = vector4(-677.03, 5770.99, 17.54, 336.73), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-700.47, 5757.36, 17.54, 274.62) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-702.21, 5764.75, 17.53, 36.11), -- Coordinate of the door in the room
                StashCoord = vector4(-701.81, 5760.23, 17.54, 278.86), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-675.93, 5768.63, 17.54, 336.39) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-705.94, 5766.71, 17.51, 160.75), -- Coordinate of the door in the room
                StashCoord = vector4(-705.75, 5762.02, 17.54, 256.6), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-708.27, 5761.19, 17.54, 124.31) -- Clothe / Wardrobe
            },

            {
                Owner = nil,
                KeyData = nil,
                Model = -1563640173, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-710.04, 5768.5, 17.51, 167.63), -- Coordinate of the door in the room
                StashCoord = vector4(-709.73, 5763.92, 17.54, 258.85), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-711.99, 5762.98, 17.54, 156.82) -- Clothe / Wardrobe
            },
        }
    },

    -- 3th Motel
    {
        MotelName = "Kibra Motel", -- Motel Name

        MotelMainCoord = vector4(-368.98, 50.15, 54.43, 352.32), -- Motel Blip Coord

        Background = "img/motor.png",

        MotelSocietyName = "KIBRAMOTEL", -- Motel Name

        MotelDistance = 30.0,

        MotelBlip = {Id = 475, Color = 23, Scale = 0.6},

        MotelBlipOpen = true, --  If true, Motel Blip is activated.

        MotelDoorDistance = 1.5, -- The distance value of the players to the door

        ReceptionCoord = vector4(-368.98, 50.15, 54.43, 352.32), -- Reception Location Vector4()

        Payment = true, -- If it is true, an invoice will be issued for the room rented by the players at certain time intervals.

        MarkerColor = {r = 255, g = 125, b = 199, a = 0.9}, -- Marker color adjustment available at the reception.

        RoomPrice = 100, -- Motel Room Rent Price,

        InvoiceAmount = 100, -- Room Rental Price (It repeats itself over time.)

        Wardrobe = true, -- If true, motel rooms have wardrobes.

        MotelDoors = {
            -- Motel Rooms Available. You can add a new hotel room to this list.
            -- (Note: For a new hotel room you add here, you need to add a new column to the kibra_motels table in the database.
            {
                Owner = nil,
                KeyData = nil,
                Model = -165345653, -- Model Number of the Door
                AutoLock = true, -- Auto Door Lock
                Coord = vector4(-362.19, 58.1, 54.47, 8.97), -- Coordinate of the door in the room
                StashCoord = vector4(-362.5, 62.84, 54.43, 63.37), -- Coordinate of the warehouse in the room
                StashLock = true,
                Wardrobe = vector4(-364.92, 59.45, 54.43, 111.35) -- Clothe / Wardrobe
            },
        }
    }]]--
}