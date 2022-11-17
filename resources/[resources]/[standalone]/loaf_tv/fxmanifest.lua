fx_version "cerulean"
game "gta5"
version "2.0.2"
lua54 "yes"

shared_script "config.lua"
server_script "server/*.lua"
client_script "client/*.lua"

dependency "loaf_lib"

escrow_ignore {
    "client/*.lua",
    "config.lua"
}
dependency '/assetpacks'