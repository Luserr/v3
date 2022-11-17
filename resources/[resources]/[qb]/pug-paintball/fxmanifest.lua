lua54 'yes'
fx_version 'cerulean'
game 'gta5'

author 'Pug'
description 'Discord: Pug#8008'
version '1.0.0'

dependencies {
    "PolyZone"
}

client_script {
    'client.lua',
    'open.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
}

server_script {
	'server.lua',
}

shared_script {
    'shared.lua',
    'locales/en.lua'
}

escrow_ignore {
    'shared.lua',
    'open.lua',
    'server.lua',
    'locales/en.lua',
}
dependency '/assetpacks'