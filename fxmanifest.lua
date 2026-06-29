fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'MichiganKnight'
description 'Modern Vehicle HUD'
version '2.0.0'

client_scripts {
    'config.lua',
    
    'shared/constants.lua',

    'client/utils.lua',
    'client/draw.lua',
    'client/vehicle.lua',
    'client/keybinds.lua',
    'client/seatbelt.lua',
    'client/cruise.lua',
    'client/hud.lua',
    'client/aircraft.lua',
    'client/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}