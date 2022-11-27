fx_version "cerulean"
game "gta5"

author 'Rhodinium'
description "Rhodinium-Callbacks"
version "1.0.0"

shared_scripts {
    "shared/sh_*.lua"
}

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "@qpixel-lib/client/cl_interface.lua",
    "client/cl_*.lua",
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    "server/sv_*.lua",
}

lua54 'yes'

