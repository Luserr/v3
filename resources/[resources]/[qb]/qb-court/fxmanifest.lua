fx_version 'adamant'
games { 'gta5' }

mod 'QB AP COURT'
version '1.0'

lua54 'yes'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/assets/css/*.css',
	'html/assets/js/*.js',
	'html/assets/fonts/roboto/*.woff',
	'html/assets/fonts/roboto/*.woff2',
	'html/assets/fonts/justsignature/JustSignature.woff',
	'html/assets/images/*.png'
}

shared_scripts {
  'config.lua',
  'language.lua'
}

client_scripts {
  '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua',
  'client/main.lua',
  'client/target.lua'
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua',
  'server/webhook.lua'
}

exports {
  'usingCriminalRecord',
}

dependencies {
  'bcs_questionare'
}

escrow_ignore {
	'language.lua',
	'config.lua',
	'client/target.lua',
  'server/webhook.lua'
}
dependency '/assetpacks'