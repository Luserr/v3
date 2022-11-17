----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'adamant'

game 'gta5'

author 'case#1993'

description 'BOII | Development - Billiards Bar Job Script'

version '1.1.1'

lua54 'yes'

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
    'shared/*',
    'client/menus/*',
    'client/billiardsbar_c.lua',
    'server/billiardsbar_s.lua'
}
dependency '/assetpacks'