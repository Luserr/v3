fx_version "cerulean"
games { "gta5" }

ui_page "nui/dist/index.html"

files {
  	"nui/dist/*",
  	"nui/dist/js/*",
  	"nui/dist/css/*",
}

client_script {
	"@PolyZone/client.lua",
	"@PolyZone/BoxZone.lua",
	"@qpixel-lib/client/cl_rpc.lua",
	"hashes/hash_*",
	"./**/cl_*.lua",
}