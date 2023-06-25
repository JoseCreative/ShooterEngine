// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_create_wall(){
	switch(place_mode) {
		case 0:
			//point_a = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			//point_b = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			
			
			point_a = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			point_b = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
		break
		
		case 1:
			//point_b = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			point_b = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
		break
		
		case 2:
			global.is_placing = false
			array_push(map_array,[point_a[0],point_a[1],point_b[0],point_b[1],cur_wall_col,v_base,v_top])
			place_mode = 0
		break
	}
	
	if mouse_check_button_pressed(mb_left) {
		place_mode ++
	}
}