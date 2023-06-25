// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_load(){

	map_file_l = get_open_filename("*.json","")

	if map_file_l != "" {
		map_f = file_text_open_read(map_file_l)
		map_txt = file_text_read_string(map_f)
		//show_message(map_txt)
		json_map = json_parse(map_txt)
		if json_map != [] {
			show_message("mapfile is valid!")
			map_array = json_map[0]
			floor_array = json_map[1]
			objects = json_map[2]
			spw = json_map[3]
			obj_spawn.x = spw[0]
			obj_spawn.y = spw[1]
			
			//scr_load_obj()
		} else {
			show_message("mapfile is not a dsmap!")
		}
		
		
	}
}