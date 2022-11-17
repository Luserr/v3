fx_version 'cerulean'
game 'gta5'

author 'Romoy'
description 'Venture Ped System'
version '1.0.0'

shared_script 'config.lua'
client_script 'client/main.lua'
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}