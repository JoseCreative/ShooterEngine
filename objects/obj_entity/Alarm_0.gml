switch(walk_state) {
	case 0:
		walk_x = random_range(x-124,x+124)
		walk_y = random_range(y-124,y+124)
	break
	case 1:
		if instance_exists(obj_player) {
			walk_x = obj_player.x
			walk_y = obj_player.y
		}
	break
}

if place_meeting(x,y,obj_player) {
	with obj_player {
		ent_health -= other.item_atk
		instance_create_depth(x+random_range(-12/2,12/2),y+random_range(-12/2,12/2),depth+1,obj_blood)
	}
}

// Dumb Duplication Code
//instance_create_layer(x,y,layer,obj_entity)

alarm[0] = walk_update