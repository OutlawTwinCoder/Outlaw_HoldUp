fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'outlaw_Holdup'
author 'Spread Out + ChatGPT'
description 'Simple NPC holdup/pickpocket system for ESX with ox_inventory and ox_target.'
version '1.0.0'

-- Hard deps expected by user
dependency 'ox_inventory'
dependency 'ox_target'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}
