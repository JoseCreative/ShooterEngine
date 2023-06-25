// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_load_obj(){
	if instance_exists(obj_object) {
		with obj_object {
			instance_destroy()
		}
	}
	
	
	o_size = array_length(objects)
	for (i=0; i<o_size; i++) {
		obj_info = objects[i]
		obj = instance_create_depth(obj_info[1],obj_info[2],10,obj_object)
		show_debug_message(obj_info[0])
		obj.obj_name = obj_info[0]
		show_debug_message(obj.obj_name)
	}
}