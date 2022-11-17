fx_version 'cerulean'
game 'gta5'


description 'ss-drifting'
author 'Hyper'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'shared/sh_config.lua',
}

version '1.0'

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/ComboZone.lua',
    '@PolyZone/CircleZone.lua',
    'client/cl_functions.lua',
    'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
	'server/*.lua',
}

escrow_ignore {
    'shared/sh_config.lua',
    'sql.sql',
    'README.md',
}


lua54 'yes'
dependency '/assetpacks'