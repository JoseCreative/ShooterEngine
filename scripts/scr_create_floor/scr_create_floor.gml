// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_create_floor(){
	switch(place_mode) {
		case 0:
			//point_a = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			//point_b = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			
			
			pf_a = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			pf_b = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			pf_c = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			pf_d = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
		break
		case 1:
			//point_a = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			//point_b = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			
			
			pf_b = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			pf_c = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			pf_d = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
		break
		case 2:
			//point_a = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			//point_b = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			
			
			pf_c = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
			pf_d = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
		break
		case 3:
			//point_a = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			//point_b = [(cam_x-room_width/2)+mouse_x,(cam_y-room_height/2)+mouse_y]
			
			
			pf_d = [(floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size)]
		break
		
		case 4:
			global.is_placing = false
			array_push(floor_array,[pf_a[0],pf_a[1],pf_b[0],pf_b[1],pf_c[0],pf_c[1],pf_d[0],pf_d[1],cur_wall_col,f_h])
			place_mode = 0
		break
	}
	
	if mouse_check_button_pressed(mb_left) {
		place_mode ++
	}
}