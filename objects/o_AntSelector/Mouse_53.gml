if selectionExists and !global.antMenuActive
{
	var selectedAntsSize = ds_list_size(global.selectedAnts);
	for (var i = 0; i < selectedAntsSize; i++;)
		{
			var ant = ds_list_find_value(global.selectedAnts, i);
			ant.selectionState = selectionStates.UNSELECTED;
		}
	global.selectedAnts = ds_list_create();
	selecting = false;
	selectionExists = false;
}

if !collision_point(mouse_x, mouse_y, all, false, false)
{
	selecting = true;
	xStart = mouse_x;
	yStart = mouse_y;
}