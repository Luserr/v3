fx_version 'cerulean'
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
games { 'rdr3', 'gta5' }

author 'Tuna Terps'
description 'Breaking News ! Race to record Player & NPC events on your server !'
-- 1.0.8a - double loggig debug message for removeEvent
version '1.0.8'

shared_scripts {
    'config/config.lua', 
}


client_scripts {
    'frameworks/handler_cl.lua',
    'client/utils.lua',
    'client/events.lua',
    'client/job.lua',
}
server_scripts {
    'config/config.js',
    'frameworks/handler_sv.lua',
    'server/npc.lua',
    'server/main.lua',
    'server/news.js',
}

lua54 'yes'
escrow_ignore {
	'config/config.lua', 
    'config/config.js',
    'client/utils.lua',
    'frameworks/handler_cl.lua',
    'frameworks/handler_sv.lua',
}

dependency '/assetpacks'