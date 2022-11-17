fx_version 'cerulean'
game 'gta5'

author 'Romoy'
description 'Vons CEO Job'
version '1.0.0'

shared_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    "shared.lua"
}

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "client/cl_main.lua",
    "client/zones.lua"
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    "server/sv_main.lua",
    '@oxmysql/lib/MySQL.lua',
}