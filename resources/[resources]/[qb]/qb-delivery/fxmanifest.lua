-- polat
fx_version 'cerulean'
game 'gta5'
version '1.0.0'
description 'Fivem Delivery System'
contact 'nchub'
discord 'https://discord.gg/nchub'
lua54 'yes'

ui_page "html/ui.html"

files {
    "html/ui.html",
    "html/ui.css",
    "html/ui.js",
	'html/img/*.png',
	'html/img/*.jpg',
	'html/img/*.svg',
}

server_scripts {
	'locale.lua',
	'config.lua',
	'server.lua',
	'coords.lua'
}

client_scripts {
	'locale.lua',
	'config.lua',
	'client.lua',
	'blip.lua',
}



