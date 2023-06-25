// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_show_text(title,subtitle,color){
	txt = instance_create_layer(0,0,"Ui",obj_ui_title)
	txt.txt_title = title
	txt.txt_subtitle = subtitle
	txt.txt_color = color
}