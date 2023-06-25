xto = lengthdir_x(256,watch_dir)
yto = lengthdir_y(256,watch_dir)
draw_sprite_ext(spr_shadow,0,x,y,1,1,0,noone,1)
draw_sprite_ext(pspr,image_index,x,y,0.8,0.8,watch_dir,c_white,1)
gpu_set_blendmode(bm_add)
draw_line_width_color(
	x + lengthdir_x(12,watch_dir),
	y + lengthdir_y(12,watch_dir),
	x + xto,y + yto,1,c_red,c_black
)
if shooting {
	if shooting_draw {
		draw_sprite_ext(spr_shot,0,
		x + lengthdir_x(10,watch_dir),
		y + lengthdir_y(10,watch_dir),
		random_range(1,2.25),random_range(-1.5,1.5),
		watch_dir,
		noone, 1
	)
	}
}
gpu_set_blendmode(bm_normal)
//draw_sprite_ext(spr_cursor,0,mouse_x,mouse_y,1,1,0,noone,0.8)