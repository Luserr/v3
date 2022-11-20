fx_version 'cerulean'
games { 'gta5' }

this_is_a_map 'yes'
lua54 "yes"

client_scripts {
    "lib/common.lua"
    , "client.lua"

    , "dlc_bikers/clubhouse2.lua"
}

escrow_ignore {
    'lib/common.lua',
    'client.lua',
    'dlc_bikers/clubhouse2.lua'
  }