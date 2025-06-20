if collision_point(mouse_x, mouse_y, o_AntMenuHUDIcon, false, false)
	image_index = 1;
else
	image_index = 0;


if !global.antMenuActive
	draw_self();