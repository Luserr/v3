fx_version 'adamant'
games { 'gta5' }

mod 'QB AP GOVERNMENT'
version '1.0'

lua54 'yes'

ui_page 'html/index.html'

files {
    'html/*.*'
}

shared_scripts {
  'config.lua',
  'language.lua'
}

client_scripts {
  'client/main.lua',
  'client/target.lua'
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua',
  'server/webhook.lua'
}

server_exports {
	'chargeCityTax',
  'logTax'
}

escrow_ignore {
	'config.lua',
  'language.lua',
	'client/target.lua',
  'server/webhook.lua'
}
dependency '/assetpacks'