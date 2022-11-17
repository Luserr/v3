fx_version 'cerulean'
game 'gta5'
description 'AV Restaurants'
version '1.1'
ui_page "ui/index.html"
lua54 'yes'
files{
    "ui/index.html",
    "ui/main.css",
    "ui/main.js",
}

shared_scripts {
    '@es_extended/imports.lua', -- Uncomment this if you are using latest ESX
    'config.lua',
    'lang.lua'
}

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'client/*.lua',
    'client_editable/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua', -- Remove this if you are using mysql-async
	'server/*.lua',
    'server_editable/*.lua'
}


escrow_ignore {
    'config.lua',
    'lang.lua',
    'client_editable/*.lua',
    'server_editable/*.lua',
	'items/*'
}
dependency '/assetpacks'