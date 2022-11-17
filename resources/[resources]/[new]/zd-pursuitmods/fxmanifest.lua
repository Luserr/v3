fx_version 'cerulean'
games {'gta5'}

description 'DG-PursuitMode V1.0'


client_scripts {
	'client/cl_rpc.lua',
	'client/cl_*.lua',
}

server_script {
	'server/sv_rpc.lua',
	'server/sv_*.lua',
}

lua54 'yes'

escrow_ignore {
    'config/*',
	'README.lua'
  }