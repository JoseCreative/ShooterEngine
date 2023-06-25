watch_dir = point_direction(x,y,mouse_x,mouse_y)
/*

switch(mode) {
	case 0:
		Hello i am a change!
		if keyboard_check(ord("A")) {
			if hspeed > -walk_speed {
				hspeed -= walk_gain
			} else {
				hspeed = -walk_speed
			}
			array_push(inputs,1)
		} else
		if keyboard_check(ord("D")) {
			if hspeed < walk_speed {
				hspeed += walk_gain
			} else {
				hspeed = walk_speed
			}
			array_push(inputs,2)
		} else {
			if hspeed > 0 {
				hspeed -= walk_gain
			} else
			if hspeed < 0 {
				hspeed += walk_gain
			} else {
				hspeed = 0
			}
			array_push(inputs,6)
		}


		if keyboard_check(ord("W")) {
			if vspeed > -walk_speed {
				vspeed -= walk_gain
			} else {
				vspeed = -walk_speed
			}
			array_push(inputs,3)
		} else
		if keyboard_check(ord("S")) {
			if vspeed < walk_speed {
				vspeed += walk_gain
			} else {
				vspeed = walk_speed
			}
			array_push(inputs,4)
		} else {
			if vspeed > 0 {
				vspeed -= walk_gain
			} else
			if vspeed < 0 {
				vspeed += walk_gain
			} else {
				vspeed = 0
			}
			array_push(inputs,5)
		}
		
		if keyboard_check_pressed(vk_space) {
			x = xstart
			y = ystart
			mode = 1
		}
		
		
	case 1:
		if imp_index < array_length(inputs)-1 {
			imp_index ++
			cur_input = inputs[imp_index]
		}
		switch(cur_input) {
			case 0:
			break
			case 1:
				if hspeed > -walk_speed {
					hspeed -= walk_gain
				} else {
					hspeed = -walk_speed
				}
			break
			case 2:
				if hspeed < walk_speed {
					hspeed += walk_gain
				} else {
					hspeed = walk_speed
				}
			break
			
			
			case 3:
				if vspeed > -walk_speed {
					vspeed -= walk_gain
				} else {
					vspeed = -walk_speed
				}
			break
			case 4:
				if vspeed < walk_speed {
					vspeed += walk_gain
				} else {
					vspeed = walk_speed
				}
			break
			case 5: {
				if vspeed > 0 {
					vspeed -= walk_gain
				} else
				if vspeed < 0 {
					vspeed += walk_gain
				} else {
					vspeed = 0
				}
			}
			case 6: {
				if hspeed > 0 {
					hspeed -= walk_gain
				} else
				if hspeed < 0 {
					hspeed += walk_gain
				} else {
					hspeed = 0
				}
			}
		}
}*/


		if keyboard_check(ord("A")) {
			if hspeed > -walk_speed {
				hspeed -= walk_gain
			} else {
				hspeed = -walk_speed
			}
			array_push(inputs,1)
		} else
		if keyboard_check(ord("D")) {
			if hspeed < walk_speed {
				hspeed += walk_gain
			} else {
				hspeed = walk_speed
			}
			array_push(inputs,2)
		} else {
			if hspeed > 0 {
				hspeed -= walk_gain
			} else
			if hspeed < 0 {
				hspeed += walk_gain
			} else {
				hspeed = 0
			}
			array_push(inputs,6)
		}


		if keyboard_check(ord("W")) {
			if vspeed > -walk_speed {
				vspeed -= walk_gain
			} else {
				vspeed = -walk_speed
			}
			array_push(inputs,3)
		} else
		if keyboard_check(ord("S")) {
			if vspeed < walk_speed {
				vspeed += walk_gain
			} else {
				vspeed = walk_speed
			}
			array_push(inputs,4)
		} else {
			if vspeed > 0 {
				vspeed -= walk_gain
			} else
			if vspeed < 0 {
				vspeed += walk_gain
			} else {
				vspeed = 0
			}
			array_push(inputs,5)
		}


if keyboard_check_pressed(ord("R")) {
	x = xstart
	y = ystart
	hspeed = 0
	vspeed = 0
}

with obj_control {
	cam_x = other.x
	cam_y = other.y
}

if mouse_check_button(mb_left) {
	shooting = true
} else {
	shooting = false
}

if shooting {
	with shot_col {
		entity_do_damage(random_range(1,5))
	}
}

if keyboard_check_pressed(ord("M")) {
	instance_create_depth(x,y,depth,obj_entity)
}


vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])

instance_deactivate_all(true)
instance_activate_object(obj_control)
instance_activate_object(id)
instance_activate_object(obj_entity)
instance_activate_object(obj_spawn)
instance_activate_region(vx,vy,640,480,true)

/*
if mouse_wheel_down() {
	camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])+12,camera_get_view_height(view_camera[0])+12)
}
if mouse_wheel_up() {
	camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])-12,camera_get_view_height(view_camera[0])-12)
}*/