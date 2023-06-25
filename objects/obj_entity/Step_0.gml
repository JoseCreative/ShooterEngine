move_towards_point(walk_x,walk_y,(walk_speed*(distance_to_point(walk_x,walk_y)/200)))

watch_dir = point_direction(x,y,walk_x,walk_y)

if ent_health <= 0 {
	for(i=0; i<12; i++) {
		instance_create_depth(x+random_range(-12/2,12/2),y+random_range(-12/2,12/2),depth+1,obj_blood)
	}
	instance_destroy()
}

if distance_to_object(obj_player) < alert_range {
	walk_state = 1
	walk_update= 10
} else {
	walk_state = 0
	walk_update= 65
}