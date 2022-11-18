





fx_version 'cerulean'
games { 'gta5' }

ui_page 'index.html'

server_script '@qpixel-lib/server/sv_infinity.lua'

client_script 'cl_*.lua'

shared_script 'sh_*.lua'

server_scripts {
    'sv_main.lua',
    'sv_events.lua'
}

files {
    'index.html',
    'sounds/*.ogg'
}