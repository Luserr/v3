fx_version 'cerulean'
games {'gta5'}

ui_page "html/index.html"

files({
	"html/*",
	"html/images/*",
	"html/css/*",
	"html/webfonts/*",
	"html/js/*"
})

shared_script "shared/sh_spawn.lua"

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "@qpixel-lib/client/cl_interface.lua",
    "client/cl_*.lua",
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
	'@oxmysql/lib/MySQL.lua', 
	"server/sv_*.lua"
}

