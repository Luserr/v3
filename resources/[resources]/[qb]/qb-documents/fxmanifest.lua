fx_version 'cerulean'
game 'gta5'

author 'Legendary Team'
version '2.0.0'

ui_page 'html/index.html'

client_scripts {
    'Client/*.lua',
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
    'Server/*.lua',
    'Server/framework/*.lua',
    'Server/mysql/*.lua',
    -- "@vrp/lib/utils.lua",
    -- "@mysql-async/lib/MySQL.lua"
}

shared_scripts {
    "Config.lua"
}

files {
    'html/index.html',
    'html/css/*.css',
    'html/*.css',
    'html/js/*.js',
    'html/js/*.js.map',
    'html/img/*.png',
    'html/img/*.jpg',
    'html/img/*.gif',
    -- 'html/_sounds/*.mp3',
}

lua54 'yes'

escrow_ignore {
    '*.lua',
    'Server/*.lua',
    'Client/*.lua',
    'Server/framework/*.lua',
    'Server/mysql/*.lua',
}
dependency '/assetpacks'