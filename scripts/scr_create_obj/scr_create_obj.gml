// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_create_obj(){
	point = [mouse_x,mouse_y]
	if mouse_check_button_pressed(mb_left) {
		global.is_placing = false
		array_push(objects,[global.cur_obj,point[0],point[1]])
		scr_load_obj()
	}
}