var numAnts = instance_number(o_Ant);
if mouse_wheel_down()
{
	if scrolled < 0
	{
		menuOffset += sprite_height;
		scrolled += 1;
	}
}
if mouse_wheel_up()
{
	
	
		menuOffset -= sprite_height;
		scrolled -= 1;
	
}
	
	
for (var i = 0; i < numAnts; i++)
{
	var _x = x;
	if menuOffset != 0
		var _y = y - menuOffset + (sprite_height) * i;
	else
		var _y = y + (sprite_height) * i;
		
	if !(_y < y) and _y < room_height - 55 and global.antMenuActive
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, 0, -1, 1)
}

if global.antMenuActive == false
	x = x - menuOffset * scrolled
	y = y - menuOffset * scrolled;