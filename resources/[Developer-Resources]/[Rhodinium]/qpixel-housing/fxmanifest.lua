fx_version "cerulean"
games { "gta5" }

client_script "@qpixel-lib/client/cl_interface.lua"

shared_scripts {
	"@qpixel-lib/shared/sh_util.lua",
	"shared/*",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"@qpixel-lib/server/sv_rpc.lua",
    "server/*",
}

client_scripts {
	'@qpixel-lib/client/cl_ui.lua',
	"@qpixel-lib/client/cl_rpc.lua",
	"client/*",
}