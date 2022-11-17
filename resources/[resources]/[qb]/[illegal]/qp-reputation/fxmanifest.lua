fx_version 'cerulean'
game 'gta5'
author 'QP scripts - Reputation Levels'

lua54 'yes'

ui_page "index.html"

escrow_ignore {
    'config.lua',
}

shared_script {
    'config.lua'
}

client_scripts {
    'client.lua',
}


server_scripts {
    'server.lua',
}

files {
    "index.html",
    "static/css/*",
    "static/js/*",
    "static/media/*",
}

dependency '/assetpacks'