fx_version 'cerulean'
game 'gta5'

author 'Romoy'

shared_script 'shared.lua'

client_script 'client/main.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
}

lua54 'yes'