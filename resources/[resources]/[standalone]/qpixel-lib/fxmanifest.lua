








fx_version "cerulean"

games {"gta5"}

description "Supremacy Lib"

server_scripts {
	"**/sv_*.lua",
	"**/sv_*.js"
}

client_scripts {
	'@qpixel-lib/client/cl_interface.lua',
	"**/cl_*.lua",
	"**/cl_*.js"
}

shared_script '**/sh_*.*'