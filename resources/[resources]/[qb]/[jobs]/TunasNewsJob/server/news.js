console.log(`
^6::::    ::: :::::::::: :::       :::  ::::::::^2      ::::::::::: ::::::::  :::::::::  
^6:+:+:   :+: :+:        :+:       :+: :+:    :+:^2         :+:    :+:    :+: :+:    :+: 
^6:+:+:+  +:+ +:+        +:+       +:+ +:+^2                +:+    +:+    +:+ +:+    +:+ 
^6+#+ +:+ +#+ +#++:++#   +#+  +:+  +#+ +#++:++#++^2         +#+    +#+    +:+ +#++:++#+  
^6+#+  +#+#+# +#+        +#+ +#+#+ +#+        +#+^2         +#+    +#+    +#+ +#+    +#+ 
^6#+#   #+#+# #+#         #+#+# #+#+#  #+#    #+#^2     #+# #+#    #+#    #+# #+#    #+# 
^6###    #### ##########   ###   ###    ########^2       #####      ########  #########
^5Version: ^21.0.8
^6-----------------------------------------------------------------------------------------------------------------------
^5><> Created with ^1<3 ^5by ^2Tuna Terps ^6=> ^5If you enjoy the script, go ahead and check out some of my other work ^1<3
^6-----------------------------------------------------------------------------------------------------------------------    
^2https://github.com/Tuna-Terps
^2https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw
^6--------------------------------------------------------------------------------------------------------
^7`)


Wait = (ms) => new Promise(r => setTimeout(r, ms));


const eventArray = [];
let id = null;
// ================================= LISTEN ================================= 
(function() {
    for (let i = 0; i < CFG.events.length; i++){
        
        if (CFG.debug == true){
            console.log(`^2[NEWS]^7 Listening for: ${CFG.events[i].name}`)
        }
        if (i < CFG.events.length) {
            id++;
        }
        // on event
        onNet(CFG.events[i].name, () => {
            let posX = CFG.events[i].pos?.x;
            let posY = CFG.events[i].pos?.y;
            let posZ = CFG.events[i].pos?.z;
            let p = GetPlayerPed(source)
            if (CFG.events[i].pos == null) {
                [posX, posY, posZ] = GetEntityCoords(p, true)
            } 
            if (CFG.debug === true) {
                console.log(`^2[NEWS]^7 Event Triggered ! Name: ${CFG.events[i].name} \n x:${posX}, y:${posY}, z:${posZ}`)
            }
            // add to event pool
            setImmediate(() => {
                emit("TunasNewsJob:addEvent", CFG.events[i].name, CFG.events[i].label,{x: posX, y: posY, z:posZ }, CFG.events[i].level, CFG.events[i].timeout, CFG.events[i].maxSubmissions )
            })
        }) 
    }

})();

// add breaking news to event pool
RegisterNetEvent("TunasNewsJob:addEvent");
onNet("TunasNewsJob:addEvent", (name, label, pos, level, timeout, maxSubmissions) => {    
    // ternary town
    level == (null || undefined) ? level = 0 : level = level;
    timeout == (null || undefined) ? timeout = 120 : timeout = timeout ;
    maxSubmissions == (null || undefined) ? maxSubmissions = CFG.maxSubmissions : maxSubmissions = maxSubmissions;
    const id = Date.now();

    eventArray.push( { id, name, label, pos, level, timeout, maxSubmissions, submissions: 0, submitBy: []  } )//.catch(e => console.log(e))
    
    if (CFG.debug == true){
        console.log('^2[NEWS]^7 adding item to array . . .')
        console.log(eventArray);
    }
    setImmediate(()=>{
        emitNet('TunasNewsJob:NotifyCL', -1, CFG.notifString.sceneStart, CFG.notifString.sceneDesc, true)
    })
});
// remove breaking news from pool
RegisterNetEvent("TunasNewsJob:removeEvent")
onNet("TunasNewsJob:removeEvent", (id) => {
    eventArray.splice(eventArray.findIndex(e => e.id === id), 1)
    if (CFG.debug === true) { console.log(`^2[NEWS]^7 Removing event ID: ${id}`) }
    return;
})
// add a submission to object in event pool
RegisterNetEvent("TunasNewsJob:addSubmission")
onNet("TunasNewsJob:addSubmission", (id, level) => {
    if (eventArray.length <= 0 ) {
        return emitNet('TunasNewsJob:NotifyCL', source, CFG.notifString.uploadFailed, CFG.notifString.uploadDesc, true)
    }
    let res = eventArray.findIndex(e => e.id === id)
    if (res === null ) return console.log('^6[NEWS]^3 TunasNewsJob:addSubmission ^1[ERROR]^7');
    if (res === undefined ) return console.log('ERROR: event')
    let sourceId = GetPlayerIdentifier(source, 1)
    var hasSubmit = eventArray[res]?.submitBy?.find(i => i === sourceId)
    // basically check if this player has submitted to this event in the past
    if (hasSubmit === undefined) {
        console.log('^6[NEWS]^7 No user found, valid entry')
        // oddly enough npc events are sometimes causing submissions to return undefined even though we clearly reference it prior, idk man should be fixed now
        if (eventArray[res]?.submissions === undefined ) {
            if (CFG.debug === true) { console.log('^6[NEWS]^3 Submission error, clearing through .. . ^7') };
            emitNet('TunasNewsJob:NotifyCL', source, CFG.notifString.uploadFailed,CFG.notifString.uploadDesc, true)
            return console.log(`TunasNewsJob:addSubmission ^1[ERROR]^7 ${eventArray[res]?.submissions}`);
        }
        eventArray[res].submissions += 1;
        eventArray[res].submitBy.push(sourceId)
        emitNet("TunasNewsJob:pushPay", source, level, eventArray[res].submissions)
    }
    else if (hasSubmit === -1 && (source != source) ){
        console.log('is this what it feels like to be a cheater ? . . .')
    }
    else{
        emitNet('TunasNewsJob:NotifyCL', source, CFG.notifString.uploadFailed, CFG.notifString.uploadDesc, true)
    }
    if (CFG.debug) console.log(`^6[NEWS]^7 Adding submission . . . ID: ${id}`);
    return
})

setTick(async()=>{
    await Wait(10000)
    if(eventArray.length <= 0) return;
    eventArray.forEach(e => {
        e.timeout -= 10;
        if (e.timeout <= 0 || (e.submissions >= e.maxSubmissions)){
            emit("TunasNewsJob:removeEvent", e.id)    
        }
    })
    if (CFG.debug === true){
        console.log('^6[NEWS]^7 reducing deadline . . .')
        console.log(eventArray)
    }    
    setImmediate(() => { 
        emit('TunasNewsJob:pushData', eventArray)
    })
})

// MANUALLY ADD NEWS EVENT 

RegisterCommand('news', function(source, args){
    // | level 0 - local news | 1 - local crime | 2 - traffic + utility | 3 - Breaking News
    if (!args[0]) return console.log('No arg 0')
    // level - 0,1,2,3
    if (!args[1]) return console.log('No arg 1')
    // duration - time before deadline expires to submit 
    lvl = parseInt(args[1], 10)
    if (isNaN(lvl)) return console.log('argument 1 is not a number')

    if (IsPlayerAceAllowed(source, "news")) {
        let p = GetPlayerPed(source)
        //let c = GetEntityCoords(p)
        let [x, y, z] = GetEntityCoords(p, true)
       
        switch(args[0]){
            case 'add' :
               
                if (!args[2]) return console.log('No arg 2');
                // label
                if (!args[3]) return console.log('No arg 3');
                            
                let duration = parseInt(args[2], 10)

                if (isNaN(duration)) return console.log('duration is not a number')
            
                if (args[4] != undefined){
                    str = `${args[3]} ${args[4]}`
                    if (args[5] != undefined){
                        str = `${args[3]} ${args[4]} ${args[5]}`
                        if (args[6] != undefined){
                            str = `${args[3]} ${args[4]} ${args[5]} ${args[6]}`
                            if (args[7] != undefined){
                                str = `${args[3]} ${args[4]} ${args[5]} ${args[6]} ${args[7]}`
                            } else {
                                str = `${args[3]} ${args[4]} ${args[5]} ${args[6]}`
                            }
                        } else {
                            str = `${args[3]} ${args[4]} ${args[5]}`
                        }
                    } else {
                        str = `${args[3]} ${args[4]}`
                    }
                    emit("TunasNewsJob:addEvent","TunasNewsJob:manualAdd", str, {x, y, z}, lvl, args[2])
                }else {
                    emit("TunasNewsJob:addEvent","TunasNewsJob:manualAdd", args[3], {x, y, z}, lvl, args[2])
                }
                // name, label, pos, level, timeout, locBool, submissions
            break;
            case 'npc' :

                emit('TunasNewsJob:npcEvent', lvl)

            break;
        }
    }
    else return console.log(`^2[^6TunasNewsJob^2] - You do not have the required permissions ${source}`)

});

/*
// not needed anymore, however we dont delete, only comment :)
RegisterCommand('2na', function(source, args){
    if (IsPlayerAceAllowed(source, "news")) {
        a = parseInt(args[0], 10)
        switch(args[0]){
            case '1 ': emit('TunasNewsJob:npcEvent', a); break;
            case '2 ': emit('TunasNewsJob:npcEvent', a); break;
            case '3 ': emit('TunasNewsJob:npcEvent', a); break;
            case '4 ': emit('TunasNewsJob:npcEvent', a); break;
            case '5 ': emit('TunasNewsJob:npcEvent', a); break;
            case '6 ': emit('TunasNewsJob:npcEvent', a); break;
            case '7 ': emit('TunasNewsJob:npcEvent', a); break;
            case '8' : emit('TunasNewsJob:npcEvent', a); break;
            case '9' : emit('TunasNewsJob:npcEvent', a); break;
        }   
    }else {
        console.log('lacking perms . . .')
    }
})
*/

