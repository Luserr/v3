fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Romoy#9144'
description 'Romoy Grapple Gun'
version '1.0.0'

ui_page "ui/index.html"
files {
	"ui/index.html",
	"ui/sounds/*.ogg",
}

client_scripts {
	'client.lua',
	'config.lua'
}

escrow_ignore {
	"config.lua"
}
dependency '/assetpacks'