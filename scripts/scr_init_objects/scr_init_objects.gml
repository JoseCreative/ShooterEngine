// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_init_objects(_dir){
	global.obj_list = []
	if directory_exists(_dir) {
		file = file_find_first(_dir+"*",fa_directory)
		array_push(global.obj_list,file)
		while file != "" {
			file = file_find_next()
			array_push(global.obj_list,file)
		}
		show_debug_message(global.obj_list)
	} else {
		show_debug_message("Cannot locate directory '"+_dir+"', objects will not be loaded.")
	}
}