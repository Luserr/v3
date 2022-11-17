fx_version 'cerulean'
game 'gta5'
author 'QP scripts - Weed Plantations'

lua54 'yes'

escrow_ignore {
    'config.lua',
}

shared_script {
    'config.lua'
}

client_scripts {
    '@PolyZone/CircleZone.lua', --you can remove it if you use integration with qp-territories or qp-gangwars
    'client.lua',
}


server_scripts {
    --'@mysql-async/lib/MySQL.lua', --comment if you dont want use esx
    '@oxmysql/lib/MySQL.lua', --use it if you have the oxmysql latest version (> v1.9.0)
    'server.lua',
}

dependencies {
    'PolyZone', --you can remove it if you use integration with qp-territories or qp-gangwars
	'qb-target'
}
dependency '/assetpacks'