if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x,mouse_y,id) or position_meeting(mouse_x,mouse_y,obj_option) {
		for(i=0; i<array_length(options)-1; i++) {
			opt = instance_create_depth(x,(y+sprite_height)+(i*sprite_height),depth-1,obj_option)
			opt.option_name = options[i]
			opt.image_xscale = image_xscale
			opt.image_yscale = image_yscale
		}
	} else {
		with obj_option {
			instance_destroy()
		}
	}
}