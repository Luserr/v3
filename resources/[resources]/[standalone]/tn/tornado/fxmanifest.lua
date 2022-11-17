-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Rhys19'
description 'Tornado Script for fivem by rhys19'
version '2.1.3'

client_scripts {
	'soundfx/client/main.lua',
    'helpers/GameSound.lua',
    'helpers/Helpers.lua',
    'helpers/LoopedParticle.lua',
    'helpers/MathEx.lua',
    'tornado/TEntity.lua',
    'tornado/TFactory.lua',
    'tornado/TParticle.lua',
    'tornado/TScript.lua',
    'tornado/TVortex.lua',
    'client.lua'
}

server_scripts {
    'server.lua',
    'version.lua',
    'soundfx/server/main.lua'
}

ui_page('soundfx/client/html/index.html')

files({
    'soundfx/client/html/index.html',
    -- Begin Sound Files Here...
    -- soundfx/client/html/sounds/ ... .ogg
    'soundfx/client/html/sounds/siren.ogg'
})
