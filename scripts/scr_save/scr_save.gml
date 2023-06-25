// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_save(){



	map_full = [
		map_array,
		floor_array,
		objects,
		[obj_spawn.x,obj_spawn.y]
	]
	
	map_json = json_stringify(map_full)

	map_file = get_save_filename("mapsave|*.json","")
	//show_message(map_file)

	if map_file != "" {
		//show_message("EXISTS  " + map_file)
		json = file_text_open_write(map_file)
		file_text_write_string(json,map_json)
		file_text_close(json)
	
	
		file2 = file_text_open_read(map_file)
		text = file_text_read_string(file2)
		//show_message(text)
		file_text_close(file2)
	}
}