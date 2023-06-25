/*if distance_to_object(obj_player) < 24 {
	interact = true
} else {
	interact = false
}
*/
with obj_player {
	hit = collision_circle(other.x,other.y,other.col_r,id,true,false)
	if hit {
		x = xprevious
		y = yprevious
	}
}