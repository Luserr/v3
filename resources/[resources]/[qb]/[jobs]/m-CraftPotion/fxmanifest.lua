fx_version 'cerulean'
author '! marcinhu.#6158'
Description 'CraftPotions'
game 'gta5'


shared_scripts { 
    'configs/**.lua'
}

client_scripts {
    'client/**.lua',
}

server_scripts {
    'server/**.lua'
} 

escrow_ignore {
  'configs/**.lua',
  "Images/**",
  "fxmanifest.lua",
  "README.lua"
}

lua54 'yes'
dependency '/assetpacks'