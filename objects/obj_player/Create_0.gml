walk_speed = 2
walk_gain = 0.5
watch_dir = 0

items = [
	[
		"Minigun", //Name
		ITEMS.Minigun, //ID
		ITEMTYPES.Pickup, //Type
		ITEMACTS.projectile, //Action
	],
	[
		"Place Wall", //Name
		ITEMS.WallPlace, //ID
		ITEMTYPES.Placer, //Type
		ITEMACTS.placewall, //Action
	]
]

xto = 0
yto = 0

ent_health = 100

player_ini = ini_open(working_directory+"gamefile/player/player.ini")
player_spr = working_directory+"gamefile/player/player.png"

if file_exists(player_spr) {
	pspr = sprite_add(player_spr,4,false,false,0,0)
} else {
	pspr = spr_error
}

if sprite_exists(pspr) {
	sprite_set_offset(pspr,sprite_get_width(pspr)/2,sprite_get_height(pspr)/2)
}

shooting = false
shooting_draw = false
shot_col = collision_line(x,y,x+lengthdir_x(256,watch_dir),y+lengthdir_y(256,watch_dir),obj_entity,true,true)
alarm[0] = 2


mode = 0
/*
	0 = PLAY MODE
	1 = REPLAY MODE
*/
inputs = []
imp_index = 0
cur_input = 0
/*
	0: no input
	1: left
	2: right
	3: up
	4: down
	5: no V input
	6: no H input
*/