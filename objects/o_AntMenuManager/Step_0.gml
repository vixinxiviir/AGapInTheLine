if keyboard_check_pressed(vk_tab)
{
	if global.antMenuActive == 0
	{
		global.antMenuActive = 1;
		show_debug_message(global.antMenuActive);
	}
	else
	{
		global.antMenuActive = 0;
		show_debug_message(global.antMenuActive);
	}
	update_menu();
}