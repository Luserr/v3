fx_version 'adamant'
game 'gta5'
name "ak47_qb_usablecookiesv2"
description "Usable cookies items"
author "MenanAk47 (MenanAk47#3129)"
version "2.0"

ui_page('html/index.html')

files({
    'html/index.html',
    'html/*.js',
    'html/sounds/*.mp3',
})

client_scripts {
    'config.lua',
    'client/utils.lua',
    'client/usable.lua',
    'client/vape.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

server_scripts {
    'config.lua',
    'server/utils.lua',
    'server/usable.lua',

    'locales/locale.lua',
    'locales/en.lua',
}


escrow_ignore {
    'locales/*.lua',
    'config*.lua',
    'server/utils.lua',
    'client/utils.lua',
}

lua54 'yes'

dependencies {
    '/server:5181', -- requires at least server build 5181
}
dependency '/assetpacks'