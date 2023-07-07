// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_draw_3dline(x1,y1,x2,y2,z1,z2,color){
	//draw_line_color(x1,y1,x2,y2,c_red,c_red)
	//draw_line_color(x1-(z/(z/2)),y1-(z/(z/2)),x2-(z/(z/2)),y2-(z/(z/2)),c_red,c_red)
	
	//switch(render_type) {
	/*
		case Renders.Texture:
			draw_sprite_pos(tex,tindx,
				cam_x-x1*(base),
				cam_y-y1*(base),
				cam_x-x2*(base),
				cam_y-y2*(base),
	
				cam_x-x2*(z),
				cam_y-y2*(z),
				cam_x-x1*(z),
				cam_y-y1*(z),
			//cam_x+x2,cam_y+y2,cam_x+x1,cam_y+y1,
			1)
		break*/
		//case Renders.Wireframe:
			draw_line_color(
				obj_control.cam_x-x1*(z1),
				obj_control.cam_y-y1*(z1),
				obj_control.cam_x-x2*(z2),
				obj_control.cam_y-y2*(z2),
				c_white,c_white
			)
		//break
		/*
		case Renders.Simple:
			draw_line_color(
				x1,
				y1,
				x2,
				y2,
				c_white,c_white
			)
		break*/
	//}
	
}