draw_point(x,y)

for(i=0; i<array_length(model_lines)-1; i++) {
	if i < array_length(model_lines)-2 {
		pol = model_lines[i]
		pol2 = model_lines[i+1]
		
		scr_draw_3dline(pol[0],pol[1],pol[2],pol2[0],pol2[1],pol2[2],c_white)
	}
}