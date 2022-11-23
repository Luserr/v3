fx_version "cerulean"
games { "gta5" }

ui_page "nui/ui.html"

files {
    "nui/sounds/*.*",
    "nui/sounds/clicks/*.*",
    "nui/*.html",
    "nui/css/*.css",
    "nui/js/*.js",
}

shared_scripts {
    "shared/*",
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    "server/classes/*",
    "server/modules/*",
    "server/*",
}

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "client/tools/*",
    "client/classes/*",
    "client/modules/*",
    "client/*",
} 