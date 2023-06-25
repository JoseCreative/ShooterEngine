map_array = [
]

floor_array = [
]

objects = [
]

entities = [
]

enum ITEMS {
	Minigun,
	WallPlace,
	Sword,
	MedicalKit,
	Ammo
}

enum ITEMTYPES {
	Weapon,
	HealthItem,
	Pickup,
	Placer
}

enum ITEMACTS {
	projectile,
	punch,
	placewall,
	moreWspeed,
	Say,
	KYS,
	GainHealth
}

cam_x = 0
cam_y = 0
cam_zoom = 1
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])
	texs_imx = 24
	tex_file = working_directory+"gamefile/texture.png"
	texs = sprite_add(tex_file,texs_imx,false,false,0,0)

	scr_init_objects(working_directory+"gamefile/object/")

	global.unused_var = 0

	maps_dir = working_directory+"gamefiles/maps/"
	
	text_placing = "placing..."
	alarm[1] = 20

	point_a = [0,0]
	point_b = [0,0]
	place_mode = 0
	v_base = -1
	v_top = -1.1
	
	pf_a = [0,0]
	pf_b = [0,0]
	pf_c = [0,0]
	pf_d = [0,0]
	f_h = -1
	
	global.is_placing = false

	render_type = 0
	
	enum Renders {
		Texture,
		Wireframe,
		Simple
	}

	placing_mode = 0


	global.cur_obj = "barrel"
	cur_wall_col = 0

	/*
	drop = instance_create_depth(room_width-124,16,-1,obj_dropmenu)
	drop.options = global.obj_list
	drop.image_xscale = 12
	drop.image_yscale = 2
	*/

	scr_load_obj()



	enum weapons {
		hands,
		ranged,
		range_ammo,
		tool,
		sword
	}


	global.is_editing = false

	if !global.is_editing {
		scr_play_init()
	}

grid_size = 8

draw_walls = true
draw_floors = false