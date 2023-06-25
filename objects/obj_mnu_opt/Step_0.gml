size_x = string_length(opt_name)
image_xscale = size_x/1.25
if position_meeting(mouse_x,mouse_y,id) {
	txt_size = 1.25
	col = c_yellow
	if mouse_check_button_released(mb_left) {
		switch(action) {
			case 0:
				show_debug_message("Button Clicked")
				room_goto(rm_game)
			break
			case 1:
				show_debug_message("Starting Game...")
				room_goto(rm_intro)
			break
			case 2:
				show_debug_message("Closing Game...")
				game_end()
			break
		}
	}
} else {
	txt_size = 1
	col = c_white
}