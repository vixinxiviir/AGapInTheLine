menuLayer = "AntMenu";

update_menu = function()
{
	if global.antMenuActive == true
		layer_set_visible(menuLayer, true)	
	else
		layer_set_visible(menuLayer, false)
}

update_menu();

