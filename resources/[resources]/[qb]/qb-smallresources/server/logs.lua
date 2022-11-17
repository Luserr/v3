local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = '',
    ['testwebhook'] = '',
    ['playermoney'] = 'https://discord.com/api/webhooks/1014053968206377011/YV0uf2c96QkU5NjIUC-mu5OwBxGOfMegfIFGHFLungkeTkJ-tcIB88r8T2dbNFs04kdy',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1021179710081867806/V0hCRtihwnISjiSdQMjl6jlfQUYHRT8sYuyatw71K5kTp9uGmxiY5I2QMN5n7Fu6GDUy',
    ['robbing'] = 'https://discord.com/api/webhooks/1014054129561243678/FRlO2_o5EAmJYkt8rGQy6bx9bit85ia3jsOTYVyNmvcfKGyu8TVKNUXwIzn6M3px53h6',
    ['cuffing'] = '',
    ['drop'] = 'https://discord.com/api/webhooks/1021179710081867806/V0hCRtihwnISjiSdQMjl6jlfQUYHRT8sYuyatw71K5kTp9uGmxiY5I2QMN5n7Fu6GDUy',
    ['trunk'] = 'https://discord.com/api/webhooks/1021179710081867806/V0hCRtihwnISjiSdQMjl6jlfQUYHRT8sYuyatw71K5kTp9uGmxiY5I2QMN5n7Fu6GDUy',
    ['stash'] = 'https://discord.com/api/webhooks/1021179710081867806/V0hCRtihwnISjiSdQMjl6jlfQUYHRT8sYuyatw71K5kTp9uGmxiY5I2QMN5n7Fu6GDUy',
    ['glovebox'] = 'https://discord.com/api/webhooks/1021179710081867806/V0hCRtihwnISjiSdQMjl6jlfQUYHRT8sYuyatw71K5kTp9uGmxiY5I2QMN5n7Fu6GDUy',
    ['banking'] = 'https://discordapp.com/api/webhooks/1003097003812724758/G1d1l5icrcFma7YKkRNXrzokZiO0QU9nV0-otJlir-a-xGRSpFXgCm3BAU0zK88PMoAQ',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1016147420347904120/UXhJwOM__jXk1CWMweXIHGFkLf1z8RRsEmwqbgT0t4QbAwFdvfMNuIcxYR4Wg9qySPQc',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1016147420347904120/UXhJwOM__jXk1CWMweXIHGFkLf1z8RRsEmwqbgT0t4QbAwFdvfMNuIcxYR4Wg9qySPQc',
    ['shops'] = 'https://discord.com/api/webhooks/1014054584257355797/D3i3moMwcZVlM5fEUdEAkWlTHByzgd8-Bm8QN4RjNSCA8yGGWzil8TyFGuGK94yPzlxF',
    ['dealers'] = '',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1014054129561243678/FRlO2_o5EAmJYkt8rGQy6bx9bit85ia3jsOTYVyNmvcfKGyu8TVKNUXwIzn6M3px53h6',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1014054129561243678/FRlO2_o5EAmJYkt8rGQy6bx9bit85ia3jsOTYVyNmvcfKGyu8TVKNUXwIzn6M3px53h6',
    ['powerplants'] = '',
    ['death'] = 'https://discord.com/api/webhooks/1014054746623062049/jzJix6GgVZb5DmStbTAbccjoaIb8qX4Y-TDkbmgoSV96PkSsY9ziAP-Bor3KLhq9wRvE',
    ['joinleave'] = '',
    ['ooc'] = '',
    ['report'] = '',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/1014054369139888178/SYoMHrujePoy8VLm-J8uwOc2uQoDO7iBjwERyjRUth6M0YRC99dV-At1CDJn3MsIxP--',
    ['anticheat'] = 'https://discord.com/api/webhooks/1014054369139888178/SYoMHrujePoy8VLm-J8uwOc2uQoDO7iBjwERyjRUth6M0YRC99dV-At1CDJn3MsIxP--',
    ['weather'] = '',
    ['moneysafes'] = '',
    ['bennys'] = '',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1016147853657247854/Rq3KwGfGHgFo4Pm4qche_IjgEWuSCr2sDu1x_aQ-iWuB3tyr6IV3TuCzQ9gTA77LxLC3',
    ['robbery'] = '',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = '',
    ['house'] = 'https://discord.com/api/webhooks/1016148108243128330/dQ65LhYC_XFsOG9hmn9O6RhJvZ2Ji3gJPU3P-HZ5U2cFYvIpBA8X_CjuOWTw2FCp7sY8',
    ['blackmarket'] = '',
    ['keylabs'] = 'https://discordapp.com/api/webhooks/1003439398219698256/iT27EVjv89mzdBiW2yFXb9YRM7dncyl6xxYQufw6xz_yirCx94b4zER8Pm42JHNLvgEI',
    ['carboosting'] = 'https://discord.com/api/webhooks/1014054869021249547/oRX9I6SIuFzNRfgkhSqhrbnRvDj6XyobetBK8ioEMnP6pmJd9yIP4hG_9L9N3habNSGw',
    ['varheist'] = 'https://discord.com/api/webhooks/1014054129561243678/FRlO2_o5EAmJYkt8rGQy6bx9bit85ia3jsOTYVyNmvcfKGyu8TVKNUXwIzn6M3px53h6',
    ['bobcat'] = 'https://discord.com/api/webhooks/1014054129561243678/FRlO2_o5EAmJYkt8rGQy6bx9bit85ia3jsOTYVyNmvcfKGyu8TVKNUXwIzn6M3px53h6',
    ['adminactions'] = 'https://discord.com/api/webhooks/1012493962235359292/QDP7MKnv8UjQq2xd0b6Zumqh4_iXze9EvbMa4l0oDXqc7Q-7lgJTtTat1GFIkWyee5KJ',
    ['warns'] = 'https://discord.com/api/webhooks/1012494060306567249/fluQXVWCjRy9Q087QTzghsC_eT6I2Gvud1aHMvuJ_1TYBGPwbNgobnZk5warZtXcLtaD', 
    ['humanelabs'] = {'https://discord.com/api/webhooks/1018550482790252645/EiH9vaDO0eTT4ZbpAKoQ6PE9-f5Xd2LyBuZWpNN_FKp0M-0ufmb6c5km8p8xVp4Q7AAM'},
    ['societies'] = {'https://discord.com/api/webhooks/1019772096395628604/wz_-TeRIfxwds1gjl5oXgiIHUS2YowAqk0TViAoE1-V80n5QwKJtZRB6Y_85aElcM4qL'},
    ['vehicleshop'] = {'https://discord.com/api/webhooks/1016147420347904120/UXhJwOM__jXk1CWMweXIHGFkLf1z8RRsEmwqbgT0t4QbAwFdvfMNuIcxYR4Wg9qySPQc'},
    ['testcar'] = {'https://discord.com/api/webhooks/1016147420347904120/UXhJwOM__jXk1CWMweXIHGFkLf1z8RRsEmwqbgT0t4QbAwFdvfMNuIcxYR4Wg9qySPQc'},
    ['headbag'] = {'https://discord.com/api/webhooks/1014054129561243678/FRlO2_o5EAmJYkt8rGQy6bx9bit85ia3jsOTYVyNmvcfKGyu8TVKNUXwIzn6M3px53h6'},
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)        
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'VentureRP Reloaded Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/attachments/869334578572165171/1013262593349140481/Screen_Shot_2022-02-08_at_4.11.30_PM.png',
            },
        }
    }
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function(source, args)
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
