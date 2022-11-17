fx_version 'bodacious'
games { 'gta5' }

fx_version 'adamant'
game 'gta5'

files
{	
	'stream/verdeshop_col_game.dat151.rel',
	'stream/bi_door_game.dat151.rel'
}

data_file 'AUDIO_GAMEDATA' 'stream/verdeshop_col_game.dat'
data_file 'AUDIO_GAMEDATA' 'stream/bi_door_game.dat'

escrow_ignore {
  'stream/*.yft'     -- Ignore all .yft files in that folder
}

author 'Fiv3Devs'
description 'Blaze It'
version '1.0.0'

this_is_a_map 'yes'
dependency '/assetpacks'