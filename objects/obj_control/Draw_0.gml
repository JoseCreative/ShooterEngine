if room = rm_game {
	if global.is_editing {
		scr_draw_grid(grid_size,1200)
	}
	for (i=0; i<fsize; i++) {
		flr = floor_array[i]
		
		//draw_line_width_color(wall[0],wall[1],wall[2],wall[3],1,colors[wall[4]],colors[wall[4]])
		scr_draw_floor(flr[0]-(cam_x),flr[1]-(cam_y),flr[2]-(cam_x),flr[3]-(cam_y),flr[4]-(cam_x),flr[5]-(cam_y),flr[6]-(cam_x),flr[7]-(cam_y),flr[9],texs,flr[8])
		
		//draw_text(wall[0]-(cam_x)-12,wall[1]-(cam_y)-12,string(wall[4]))
		//draw_circle(wall[0],wall[1],2,false)
		//draw_circle(wall[2],wall[3],2,false)
	
		//draw_text_transformed_color(wall[0],wall[1],"wall("+string(i)+"): "+string(wall),0.75,0.75,0,c_yellow,c_yellow,c_yellow,c_yellow,1)
	}
	if draw_walls == true {
		for (i=0; i<size; i++) {
			wall = map_array[i] 
		
			//draw_line_width_color(wall[0],wall[1],wall[2],wall[3],1,colors[wall[4]],colors[wall[4]])
			scr_draw_wall_3d(wall[0]-(cam_x),wall[1]-(cam_y),wall[2]-(cam_x),wall[3]-(cam_y),wall[5],wall[6],texs,wall[4])
		
			//draw_text(wall[0]-(cam_x)-12,wall[1]-(cam_y)-12,string(wall[4]))
			//draw_circle(wall[0],wall[1],2,false)
			//draw_circle(wall[2],wall[3],2,false)
	
	
	
			with obj_player {
				hit = collision_line(other.wall[0],other.wall[1],other.wall[2],other.wall[3],id,true,false)
				if hit {
					if other.wall[5] > -1.05 {
						hspeed = -hspeed*1.25
						vspeed = -vspeed*1.25
					}
				}
			}
			
			
			
			
			with obj_entity {
				hit = collision_line(other.wall[0],other.wall[1],other.wall[2],other.wall[3],id,true,false)
				if hit {
					x = xprevious
					y = yprevious
				}
			}
	
			//draw_text_transformed_color(wall[0],wall[1],"wall("+string(i)+"): "+string(wall),0.75,0.75,0,c_yellow,c_yellow,c_yellow,c_yellow,1)
		}
	}

	if global.is_editing {
		draw_circle_color((floor((mouse_x/grid_size))*grid_size),(floor((mouse_y/grid_size))*grid_size),2,c_white,c_white,false)
		if global.is_placing = true {
			gpu_set_blendmode(bm_add)
			//draw_line_color(point_a[0],point_a[1],point_b[0],point_b[1],c_lime,c_lime)
			switch(placing_mode) {
				case 0 :
					scr_draw_wall_3d(point_a[0]-(cam_x),point_a[1]-(cam_y),point_b[0]-(cam_x),point_b[1]-(cam_y),v_base,v_top,spr_tex_place,0)
				break
				case 1 :
					scr_draw_floor(pf_a[0]-(cam_x),pf_a[1]-(cam_y),pf_b[0]-(cam_x),pf_b[1]-(cam_y),pf_c[0]-(cam_x),pf_c[1]-(cam_y),pf_d[0]-(cam_x),pf_d[1]-(cam_y),f_h,spr_tex_place,0)
				break
			}
			draw_set_halign(fa_left)
			gpu_set_blendmode(bm_normal)
		}

		//draw_text_transformed_color(1,1,"Can place: "+string(global.is_placing),0.75,0.75,0,c_yellow,c_yellow,c_yellow,c_yellow,1)
		//draw_text_transformed_color(1,16,"Walls: "+string(size),0.75,0.75,0,c_yellow,c_yellow,c_yellow,c_yellow,1)



		//draw_text_transformed_color(256,0,"CUR_A: "+string(point_a),0.75,0.75,0,c_yellow,c_yellow,c_yellow,c_yellow,1)
		//draw_text_transformed_color(256,16,"CUR_B: "+string(point_b),0.75,0.75,0,c_yellow,c_yellow,c_yellow,c_yellow,1)
	}
}