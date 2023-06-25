// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_play_init(){
	view_cam = view_get_camera(view_camera[0])
	if global.is_editing = false {
		with obj_dropmenu {
			instance_destroy()
		}
		
		
		scr_load()
		cam_x = 0
		cam_y = 0
		//instance_create_depth(obj_spawn.x,obj_spawn.y,-1,obj_player)
		instance_create_depth(0,0,-1,obj_player)
		//camera_set_view_size(view_cam,320,240)
	} else {
		camera_set_view_size(view_cam,640,480)
		camera_set_view_pos(view_cam,0,0)
		with obj_player {
			instance_destroy()
		}
		drop = instance_create_depth(room_width-124,16,-1,obj_dropmenu)
		drop.options = global.obj_list
		drop.image_xscale = 12
		drop.image_yscale = 2
	}
}