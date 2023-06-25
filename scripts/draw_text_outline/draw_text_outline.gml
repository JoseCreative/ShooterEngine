// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outline(text,_x,_y,color1,color2){
	for(i=0; i<3; i++) {
		__x = lengthdir_x(1,i*90)
		__y = lengthdir_y(1,i*90)
		draw_text_color(_x+__x,_y+__y,text,color2,color2,color2,color2,1)
	}
	draw_text_color(_x,_y,text,color1,color1,color1,color1,1)
}