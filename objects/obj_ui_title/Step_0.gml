switch(state) {
	case 0 :
		title_alpha += 0.05
		if title_alpha >= 1 {
			state = 1
		}
	break
	case 1 :
		subt_alpha += 0.05
		if subt_alpha >= 5 {
			state = 2
		}
	break
	case 2 :
		title_alpha -= 0.05
		subt_alpha -= 0.05
		if subt_alpha <= 0 {
			state = 3
		}
	break
	case 3 :
		instance_destroy()
	break
}