fx_version 'cerulean'
game 'gta5'

description '710-Cypto'
authour 'Kmack710#0710'
version '1.0.0'

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'configs/customize-server.lua',
  'data/server.lua'
}

shared_scripts { 
  'configs/config.lua',
  'configs/locales.lua'
}

client_scripts {
  'data/client.lua'
}

dependencies {
    '710-lib' 
}

escrow_ignore {
  'configs/*',
  'README/*'
}

lua54 'yes'


dependency '/assetpacks'