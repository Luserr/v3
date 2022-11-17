fx_version 'adamant'

game 'gta5'

description 'Kmack710 - 710-bonds - Guilded.gg/710 '

version '1.0.0'

shared_scripts {
   -- '@es_extended/imports.lua',
    'configs/config.lua',
    'configs/locales.lua',
}
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'data/server.lua',
    'configs/customize-server.lua',
}

client_scripts {
    'data/client.lua',
}

escrow_ignore {
    'configs/*',
    'README/*'
}
dependencies {
    '710-lib' 
}


lua54 'yes'

dependency '/assetpacks'