// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function entity_do_damage(dam){
	instance_create_depth(x+random_range(-dam/2,dam/2),y+random_range(-dam/2,dam/2),depth+1,obj_blood)
	godir = point_direction(x,y,obj_player.x,obj_player.y)+180
	move_towards_point(lengthdir_x(dam/1.25,godir),lengthdir_y(dam/1.25,godir),dam/1.5)
	ent_health -= dam
}