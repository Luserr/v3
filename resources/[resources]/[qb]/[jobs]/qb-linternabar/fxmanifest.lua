fx_version 'cerulean'
game 'gta5'

author 'Quarentin'
description 'QUA QB LaLinterna Mexican Restaurant'
version '1.0.0'

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/CircleZone.lua',
	'config.lua',
	'locale/*.lua',
	'client/*.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config.lua',
	'locale/*.lua',
	'server/*.lua',
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/vue.min.js',
	'html/script.js',
	'html/main.css',
	'html/vcr-ocd.ttf'
}

escrow_ignore {
	'config.lua',
	'items.lua',
	'LalinternaDoorList.lua',
	'client/utils.lua',
	'server/consumble.lua',
	'server/public.lua',
	'locale/*.lua',
}

dependencies {
    'qb-target',
    'qb-menu',
	'qb-input',
	'qb-management',
}

lua54 'yes'
dependency '/assetpacks'