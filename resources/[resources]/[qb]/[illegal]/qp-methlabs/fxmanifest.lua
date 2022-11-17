fx_version 'cerulean'
game 'gta5'
author 'QP scripts - Meth Labs'

lua54 'yes'

escrow_ignore {
    'config.lua',
}

shared_script {
    'config.lua'
}

client_scripts {
    'client.lua',
}


server_scripts {
    'server.lua',
}

dependencies {
	'qb-target'
}
dependency '/assetpacks'