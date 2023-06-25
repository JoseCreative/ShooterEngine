//draw_rectangle_color(8,16,24,32,colors[cur_wall_col],colors[cur_wall_col],colors[cur_wall_col],colors[cur_wall_col],false)
if global.is_editing {
	draw_set_halign(fa_left)
	draw_text(8,0,"Current Texture:")
	draw_sprite_stretched(texs,cur_wall_col,8,16,24,24)
	if global.is_placing = true {
		draw_text_transformed_color(64,-4,text_placing,0.8,0.8,0,c_lime,c_lime,c_lime,c_lime,1)
	}
	draw_text(8,48,"Bottom: "+string(v_base))
	draw_text(8,80,"Top: "+string(v_top))
}