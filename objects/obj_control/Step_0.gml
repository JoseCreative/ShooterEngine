size = array_length(map_array)
fsize = array_length(floor_array)

if room = rm_game {
	if global.is_editing {
		// Check WallCreation to innitiate creation
		if global.is_placing = true {
			switch(placing_mode) {
				case 0: //Wall
					scr_create_wall()
				break
		
				case 1: //Floor
					scr_create_floor()
				break
		
			}
		}

		//CTRL Key combinations
		if keyboard_check(vk_control) {
			if keyboard_check_pressed(ord("S")) {
				scr_save() // Save
			}
			else/*
			if keyboard_check_pressed(ord("N")) {
				scr_clean() // Clear (Not Finished)
			}
			else*/
			if keyboard_check_pressed(ord("L")) {
				cam_x = 0
				cam_y = 0
				scr_load() // Load
				if global.is_editing == false {
					instance_destroy(obj_player)
					scr_play_init()
				}
			}
			
			
			// WIP Undo
			if keyboard_check_pressed(ord("Z")) {
				draw_walls = false
				array_delete(map_array,size,-2)
				show_debug_message("Last Wall Removed")
				if alarm[3] == -1 {
					alarm[3] = 1
				}
			}
		} else {
			if keyboard_check_pressed(ord("Z")) {
				switch(render_type) { //Change Rendering Style
					case 0:
						render_type = 1 //  Wireframe
					break
					case 1:
						render_type = 0 //  Normal
					break/*
					case 2:
						render_type = 0
					break*/
				}
			}
			if keyboard_check_pressed(ord("X")) {
				if global.is_placing = false {
					global.is_placing = true   //Turn ON creation mode
				}
			}
		}


		if keyboard_check_pressed(ord("R")) {
			//Reaload Map
			scr_load_obj()
		}


		/*
		if keyboard_check_pressed(ord("Q")) {
			show_message(map_array[0])
		}*/


		// Change Wall Texture
		if mouse_wheel_up() {
			if cur_wall_col < texs_imx {
				cur_wall_col ++
			}
		}
		else
		if mouse_wheel_down() {
			if cur_wall_col > 0 {
				cur_wall_col --
			}
		}

		// Change what to place
		if keyboard_check_pressed(ord("1")) {
			placing_mode = 0 //Walls
		}
		if keyboard_check_pressed(ord("2")) {
			placing_mode = 1 //Floors
		}
		
		// Change Wall height (top $ bottom)
		// Bottom Height
		if keyboard_check_pressed(ord("U")) {
			if v_base < -1 {
				v_base += 0.01
			}
		}
		else
		if keyboard_check_pressed(ord("J")) {
			if v_base > -1.1 {
				v_base -= 0.01
			}
		}

		//Top Height
		if keyboard_check_pressed(ord("I")) {
			if v_top < -1 {
				v_top += 0.01
			}
		}
		else
		if keyboard_check_pressed(ord("K")) {
			if v_top > -1.1 {
				v_top -= 0.01
			}
		}
		
		
		//Change Floor Height
		if keyboard_check_pressed(ord("Y")) {
			if f_h < -1 {
				f_h += 0.01
			}
		}
		else
		if keyboard_check_pressed(ord("H")) {
			if f_h > -1.1 {
				f_h -= 0.01
			}
		}
	
	
	
	
		if keyboard_check_pressed(ord("M")) {
			with obj_spawn {
				x = floor((mouse_x/8))*8
				y = floor((mouse_y/8))*8
			}
		}
	} else {
		vw = camera_get_view_width(view_camera[0])
		vh = camera_get_view_height(view_camera[0])
		camera_set_view_size(view_camera[0],640*cam_zoom,480*cam_zoom)
		if mouse_wheel_up() {
			if cam_zoom > 0.2 {
				cam_zoom -= 0.025
			}
		}
		else
		if mouse_wheel_down() {
			if cam_zoom < 1 {
				cam_zoom += 0.025
			}
		}
	}


	

	/*
	if keyboard_check_pressed(vk_space) {
		global.is_editing = not global.is_editing
		scr_play_init()
	}
	*/

}

//Move Camera
if keyboard_check(ord("W")) {
	cam_y -= 4
}
else
if keyboard_check(ord("S")) {
	cam_y += 4
}


if keyboard_check(ord("A")) {
	cam_x -= 4
}
else
if keyboard_check(ord("D")) {
	cam_x += 4
}
camera_set_view_pos(view_camera[0],(-vw/2+cam_x),(-vh/2)+cam_y)