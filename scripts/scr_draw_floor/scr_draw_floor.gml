// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_draw_floor(x1,y1,x2,y2,x3,y3,x4,y4,z,tex,tindx){
	//draw_line_color(x1,y1,x2,y2,c_red,c_red)
	//draw_line_color(x1-(z/(z/2)),y1-(z/(z/2)),x2-(z/(z/2)),y2-(z/(z/2)),c_red,c_red)
	
	switch(render_type) {
		case Renders.Texture:
			draw_sprite_pos(tex,tindx,
				cam_x-x1*(z),
				cam_y-y1*(z),
				cam_x-x2*(z),
				cam_y-y2*(z),
	
				cam_x-x3*(z),
				cam_y-y3*(z),
				cam_x-x4*(z),
				cam_y-y4*(z),
			//cam_x+x2,cam_y+y2,cam_x+x1,cam_y+y1,
			1)
		break
		case Renders.Wireframe:
			draw_line_color(
				cam_x-x1*(z),
				cam_y-y1*(z),
				cam_x-x2*(z),
				cam_y-y2*(z),
				c_white,c_white
			)
			draw_line_color(
				cam_x-x2*(z),
				cam_y-y2*(z),
				cam_x-x3*(z),
				cam_y-y3*(z),
				c_white,c_white
			)
			
			
			
			
			draw_line_color(
				cam_x-x3*(z),
				cam_y-y3*(z),
				cam_x-x4*(z),
				cam_y-y4*(z),
				c_white,c_white
			)
			draw_line_color(
				cam_x-x4*(z),
				cam_y-y4*(z),
				cam_x-x1*(z),
				cam_y-y1*(z),
				c_white,c_white
			)
		break
		case Renders.Simple:
			draw_line_color(
				cam_x-x1,
				cam_y-y1,
				cam_x-x2,
				cam_y-y2,
				c_white,c_white
			)
			draw_line_color(
				cam_x-x2,
				cam_y-y2,
				cam_x-x3,
				cam_y-y3,
				c_white,c_white
			)
			
			
			
			
			draw_line_color(
				cam_x-x3,
				cam_y-y3,
				cam_x-x4,
				cam_y-y4,
				c_white,c_white
			)
			draw_line_color(
				cam_x-x4,
				cam_y-y4,
				cam_x-x1,
				cam_y-y1,
				c_white,c_white
			)
		break
	}
	
}