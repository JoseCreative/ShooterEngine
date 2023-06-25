// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_grid(gsize,map_s){
	draw_set_alpha(0.5)
	for(xx=-map_s; xx < map_s; xx++) {
		draw_line_color(xx*gsize,-map_s*gsize,xx*gsize,map_s*gsize,c_dkgray,c_dkgray)
	}
	
	for(yy=-map_s; yy < map_s; yy++) {
		draw_line_color(-map_s*gsize,yy*gsize,map_s*gsize,yy*gsize,c_dkgray,c_dkgray)
	}
	draw_set_alpha(1)
}