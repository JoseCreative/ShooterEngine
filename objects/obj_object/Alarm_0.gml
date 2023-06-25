if file_exists(working_directory+"gamefile/object/"+obj_name+"/object.ini") {
	ini_open(working_directory+"gamefile/object/"+obj_name+"/object.ini")
	spr = ini_read_string("object","sprite","sprite.png")
	col_r = ini_read_string("object","collision_range","0")

	spr_img = sprite_add(working_directory+"gamefile/object/"+obj_name+"/"+spr,0,false,false,0,0)
	sprite_set_offset(spr_img,sprite_get_width(spr_img)/2,sprite_get_height(spr_img)/2)
} else {
	spr_img = spr_error
}
show_debug_message(obj_name)