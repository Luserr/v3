fx_version 'cerulean'
game 'gta5'
author 'Evil, YG'
description 'PD Complaint Form'
version '1.0'

shared_script 'config.lua'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/main.js',
    'html/style.css',
    'html/logo.png'
}

escrow_ignore {
    'config.lua'
}

dependency '/assetpacks'

lua54 'yes'
dependency '/assetpacks'