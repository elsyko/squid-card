fx_version 'adamant'
game 'gta5'

ui_page {
    'html/index.html',
}

files {
	'html/index.html',
	'html/app.js', 
	'html/style.css',
    'html/cardboard.png',
    'html/house.png',
}

shared_scripts {
    'sh_main.lua',
}

server_scripts {
    'sv_*.lua'
}

client_scripts {
    'cl_*.lua'
}