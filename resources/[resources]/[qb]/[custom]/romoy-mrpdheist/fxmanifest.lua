fx_version 'cerulean'
game 'gta5'

author 'Romoy'
description 'MRPD Heist'
version '1.0.0'

shared_script 'shared.lua'
client_script 'client/cl_main.lua'
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_main.lua',
}

lua54 'yes'