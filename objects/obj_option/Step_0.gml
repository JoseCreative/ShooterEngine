if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x,mouse_y,id){
		global.cur_obj = option_name
		with obj_dropmenu {
			cur_opt = other.option_name
		}
		with obj_option {
			instance_destroy()
		}
	} else {
		
	}
}