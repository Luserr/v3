fx_version 'bodacious'

games { 'gta5' }

author 'London Studios'
description 'A realistic grappler experience'
version '1.0.0'
lua54 'yes'

client_scripts {
	'config.lua',
	'cl_utils.lua',
	'cl_grappler.lua',
}

server_scripts {
	-- "@vrp/lib/utils.lua",
	'config.lua',
	'sv_utils.lua',
	'sv_grappler.lua',
}

escrow_ignore {
	'stream/*',
	'config.lua',
	'sv_utils.lua',
	'cl_utils.lua',
}

files {
   'stream/bv_grappler.ytyp',
}

data_file 'DLC_ITYP_REQUEST' 'stream/bv_grappler.ytyp'

-- Grappler created by London Studios.
-- Join our Discord server here: https://discord.gg/htyaZNaG
dependency '/assetpacks'