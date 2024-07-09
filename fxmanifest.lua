fx_version 'cerulean'
game 'gta5'

author 'PEUREN DEVELOPMENT - peuren.tebex.io'
version '0.0.0'
lua54 'yes'

client_script "config.lua"
client_script "client/main.lua"

files { "web/build/**/*" }

ui_page "http://localhost:5173/"
--ui_page "web/build/index.html"
