fx_version 'cerulean'
game 'gta5'

author 'Romoy'
description 'Head Bag Ped'
version '1.0.0'

ui_page 'html/index.html'

shared_script 'shared.lua'

client_scripts {
    'client/cl_main.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_main.lua'
}

files {
    'html/index.html',
    'html/app.js',
    'html/style.css',
    'client/cl_main.lua',
    'html/images/anotherimage.png'
}

escrow_ignore {
    'client/main.lua',
    'shared.lua',
    'server/sv_main.lua',
    'html/app.js',
    'html/style.css',
    'html/index.js',
    'sql/data.sql'
}

lua54 'yes'