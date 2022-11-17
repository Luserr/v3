----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'adamant'

game 'gta5'

author 'case#1993'

description 'BOII | Development - Businesses; White Widow'

version '1.4.2'

lua54 'yes'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/reset.css',
    'html/images/**/*',
}
shared_scripts {
    'shared/*'
}
client_scripts{
    'client/**/*'
}
server_scripts{
    'server/*'
}
escrow_ignore{
    'client/whitewidow_c.lua',
    'client/menus/*',
    'server/whitewidow_s.lua',
    'shared/*',
    'stream/*'
}
dependency '/assetpacks'