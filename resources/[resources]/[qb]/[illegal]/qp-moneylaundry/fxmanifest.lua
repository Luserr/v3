fx_version 'cerulean'
game 'gta5'
author 'QP scripts - Money Laundering'

lua54 'yes'

escrow_ignore {
    'config.lua',
}

shared_script {
    'config.lua'
}

client_scripts {
    'cl_main.lua',
}


server_scripts {
    'sv_main.lua',
}

dependencies {
	'qb-target'
}
dependency '/assetpacks'