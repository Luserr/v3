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
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua',
    'open.lua',
}

server_script {
	'server.lua',
    'sv_open.lua',
}

shared_script {
    'shared.lua',
    'locales/en.lua'
}

ui_page 'html/index.html'

files {
    'html/*.html',
    'html/*.css',
    'html/*.js',
    'html/fonts/*.otf',
    'html/img/*'
}

escrow_ignore {
    'shared.lua',
    'open.lua',
    'sv_open.lua',
    'locales/en.lua',
    'minigames/qb-lock/client/client.lua',
    'minigames/qb-skillbar/client/main.lua',
}
dependency '/assetpacks'