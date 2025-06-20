if selecting
{
	if mouse_check_button_released(mb_left)
	{
		collision_rectangle_list(xStart, 
								 yStart, 
								 mouse_x, 
								 mouse_y, 
								 o_Ant, 
								 false,
								 true, 
								 global.selectedAnts, 
								 true);
								 
		var selectedAntsSize = ds_list_size(global.selectedAnts);
		if selectedAntsSize > 0
			selectionExists = true;
		for (var i = 0; i < selectedAntsSize; i++;)
		{
			var ant = ds_list_find_value(global.selectedAnts, i);
			ant.selectionState = selectionStates.SELECTED;
		}
		selecting = false;
	}
}

if !mouse_check_button(mb_left)
{
	selecting = false;
}