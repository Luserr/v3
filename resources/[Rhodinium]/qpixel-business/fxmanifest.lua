fx_version 'cerulean'
games { 'gta5' }

shared_script "@mka-array/Array.lua"

client_scripts {
    '@qpixel-lib/client/cl_rpc.lua',
    '@qpixel-lib/client/cl_ui.lua',
	'@qpixel-lib/client/cl_interface.lua',
    '@qpixel-errorlog/client/cl_errorlog.lua',
    'client/cl_*.lua',
}

shared_script {
    '@qpixel-lib/shared/sh_util.lua',
}

server_scripts {
    '@qpixel-lib/server/sv_rpc.lua',
    '@qpixel-lib/server/sv_sql.lua',
    'server/sv_*.lua',
}