fx_version 'cerulean'
game 'gta5'

description 'QB-SmallResources'
version '1.0.0'

shared_script 'config.lua'
server_script 'server/*.lua'

client_script {
	--'client/autopilot.lua', --0.0ms
	--'client/binoculars.lua', --0.0ms
	--'client/calmai.lua', --0.0ms
	--'client/cam.lua', --0.2ms --unable to optimise
	--'client/carry.lua', --0.1ms --optimized to 0.0ms
	--'client/cl_xhair.lua', --0.0ms
	--'client/consumables.lua', --0.0ms
	--'client/crouchprone.lua', --0.0/0.1ms
	--'client/cruise.lua', --0.0ms
	--'client/density.lua', --0.4MS optimized to 0.2ms
	--'client/discord.lua', --0.0ms
	--'client/doubleclutch.lua', --0.0ms
	--'client/editor.lua', --0.0ms
	--'client/fireworks.lua', --0.0ms
	--'client/handsup.lua', --0.1ms
	--'client/hasitem.lua', --0.0ms
	--'client/hudcomponents.lua', --0.1ms
	--'client/nightvision.lua', --0.0ms
	--'client/noshuff.lua', --0.1ms
	--'client/paychecks.lua', --0.0ms
	--'client/point.lua', --0.0ms
	--'client/recoil.lua', --0.3/4ms optimzed to 0.2/3ms
	--'client/removeentities.lua', --0.0ms
	--'client/seatbelt.lua', --0.0ms
	--'client/tackle.lua', --0.2ms optimized to 0.0ms
	--'client/teleports.lua', --0.0ms
	--'client/vehiclepush.lua', --0.1ms
	--'client/vending.lua', --0.0ms
	--'client/weapdraw.lua', --0.2ms
	--'client/weapdrop.lua', --0.0ms
	--'client/wheelschair.lua', --0.0ms
	--'client/wingsuit.lua', --0.0ms
	--'client/yoga.lua', --0.0ms
	'client/*.lua'

}

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'
data_file 'FIVEM_LOVES_YOU_341B23A2F0E0F131' 'popgroups.ymt'

files {
	'ui/index.html',
	'events.meta',
	'popgroups.ymt',
	'relationships.dat'
}

ui_page 'ui/index.html'



exports {
	'HasHarness'
}

exports {
    'GetVehicleMode',
}

lua54 'yes'