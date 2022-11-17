fx_version 'adamant'

game 'gta5'

description 'Kmack710 710-lib'

version '1.3'

shared_scripts {
  -- '@es_extended/imports.lua', --- Comment out if not using ESX 
    'configs/config.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'configs/custom-server.lua',
    'data/server.lua',
    
}

client_scripts {
    'configs/custom-client.lua',
    'data/client.lua',
    
}

dependencies {
	--'es_extended' -- Comment out if using qbcore 
    'qb-core' --- Comment out if using ESX 
}

lua54 'yes'
