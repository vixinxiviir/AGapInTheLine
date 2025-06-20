if keyboard_check_pressed(vk_tab)
{
	if global.antMenuActive == 0
	{
		global.antMenuActive = 1;
		show_debug_message(global.antMenuActive)
	}
	else
	{
		global.antMenuActive = 0;
		show_debug_message("Ant menu inactive!")
	}
	
}

if mouse_check_button_pressed(mb_left) and point_in_rectangle(mouse_x, 
															  mouse_y, 
															  camera_get_view_x(view_get_camera(0)) + 1870, 
															  camera_get_view_y(view_get_camera(0)) + 2, 
															  camera_get_view_x(view_get_camera(0)) + 1950, 
															  camera_get_view_y(view_get_camera(0)) + 42) 
									   and global.antMenuActive == 1
{
	global.antMenuActive = 0;
}