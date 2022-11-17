/*
___________                ___________                        
\__    ___/_ __  ____ _____\__    ___/________________  ______
  |    | |  |  \/    \\__  \ |    |_/ __ \_  __ \____ \/  ___/
  |    | |  |  /   |  \/ __ \|    |\  ___/|  | \/  |_> >___ \ 
  |____| |____/|___|  (____  /____| \___  >__|  |   __/____  >
                    \/     \/           \/      |__|       \/

-- News Job V1 -- If you enjoyed, go ahead and check out some of my other work ! 
https://github.com/Tuna-Terps
https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw
*/
// =========================================| CONFIG |=========================================
//
CFG = {}
CFG.maxSubmissions = 4; // max amount of submissions for events
CFG.debug = false // debug data from the news events, good for testing when adding new events

//qbcore

CFG.notifString = {
    sceneStart: 'Ongoing Scene ',
    sceneDesc: 'Upload first to get the highest reward',
    uploadFailed: 'Upload Failed ',
    uploadDesc: 'Unfortunately you did not upload in time - or have been beaten by your competitors !',
}

/*
// esx / standalone

CFG.notifString = {
    sceneStart = '~p~Ongoing Scene',
    sceneDesc = 'Upload ~b~first~w~ to get the highest ~g~reward~w~ - Or ~y~lose value~w~ to the ~r~competition~w~ ',
    uploadFailed = '~r~Upload Failed',
    uploadDesc = 'Unfortunately you did not ~p~upload~w~ in time - or have been beaten by your ~r~competitors~w~ !',
}
*/

//
// =============================== SERVER EVENTS ======================
CFG.events = [
    // template 
    /*
    {
        name: '', // server event name, must be case sensitive
        label: '', // label, this is displayed to the reporters
        timeout: 600, // footage deadline - seconds
        level: 3, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News | 4 + - Special Events
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    }, 
    */
    // ============================ POWR GRID ============================ 
    {
        // LS
        name: 'TunasPowerJob:sub', // server event name, must be case sensitive
        label: 'Explosion at Los Santos D.W.P', // headline on map and HUD
        timeout: 600, // footage deadline - seconds
        level: 2, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: {x: 657.32, y: 114.98, z: 80.92}, // pass a position if event takes place at only 1 location, 
        maxSubmissions: CFG.maxSubmissions, // or change to a number if you want to change individually idk
    },
    {
        // BC
        name: 'TunasPowerJob:subBc', // server event name, must be case sensitive
        label: 'Explosion at Blaine County D.W.P', // headline on map and HUD
        timeout: 400, // footage deadline - seconds
        level: 2, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: {x: 2834.67, y: 1486.46, z: 24.73}, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },

    // ============================ ESX ============================ 
    {
        name: 'esx_vangelico_robbery:endrob',
        label: 'Jewel Heist in Rockford Hills',
        timeout: 600, // footage deadline - seconds
        level: 3, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    // ============================ QBCORE ============================ 
    {
        // qb-bankrobbery
        name: 'qb-bankrobbery:server:callCops',
        label: 'Daring Bank Robbery !',
        timeout: 600, // footage deadline - seconds
        level: 3, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    {
        // qb-storerobbery
        name: 'qb-storerobbery:server:callCops',
        label: 'Local Store Involved in Robbery',
        timeout: 600, // footage deadline - seconds
        level: 1, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    {
        // qb-truckrobbery
        name: 'AttackTransport:zawiadompsy',
        label: '',
        timeout: 600, // footage deadline - seconds
        level: 3, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    // ============================ LOAF ROBBERY ============================ 
    {
        name: 'loaf_robbery:claim_reward',
        label: 'Violent Crime On The Rise', // headline on map and HUD
        timeout: 300, // footage deadline - seconds
        level: 1, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    {
        name: 'loaf_robbery:finished_cracking',
        label: 'Daring Heist ! Store robbery',
        timeout: 300, // footage deadline - seconds
        level: 1, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    
    // ============================ LOAF HEIST ============================ 
    {
        name: 'loaf_robbery:rob',
        label: 'Store robbery in progress',
        timeout: 450, // footage deadline - seconds
        level: 3, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking News
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    {
        name: 'loaf_heist:alert_police',
        label: 'Bank Robberies are on the rise !',
        timeout: 600, // footage deadline - seconds
        level: 1, // 0 - local news | 1 - local crime | 2 - traffic/industrial | 3 - Breaking Newss
        pos: null, // set as null if multiple locations, or pass an obj {x: number, y: number, z: number}
        maxSubmissions: CFG.maxSubmissions,
    },
    
]

/*
    
    // Or to add an event to the news queue, use this server event; 
    
    TriggerEvent('TunasNewsJob:addEvent', function(
        eventName: string, // REQUIRED, this is the server event name, case sensitive :)
        eventLabel: string, // REQUIRED, this is the headline
        eventPos: { x: number, y: number, z: number}, // REQUIRED
        eventLevel: number, // OPTIONAL,
        timeout: number, // OPTIONAL
        maxSubmissions: number // OPTIONAL
    ))
    
    // if you use an optional parameter, you must use them all
*/