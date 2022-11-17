fx_version 'adamant'
game 'gta5'
name "ak47_qb_cookiesv2"
author "MenanAk47 (MenanAk47#3129)"
version "2.0"

ui_page('html/ui.html')

files({
    'html/**/*',
})

client_scripts {
    '@menuv/menuv.lua',
    'config.lua',
    'config-shop.lua',
    'config-farming.lua',

    'client/utils.lua',
    'client/job.lua',
    'client/shop.lua',
    'client/farming.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'config-shop.lua',
    'config-farming.lua',

    'server/utils.lua',
    'server/farming.lua',
    'server/shop.lua',
    'server/job.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

escrow_ignore {
    'locales/*.lua',
    'config*.lua',
    'server/utils.lua',
    'client/utils.lua',
    'INSTALL ME FIRST/**/*',
}

lua54 'yes'

dependencies {
    '/server:5181', -- requires at least server build 5181
}
dependency '/assetpacks'