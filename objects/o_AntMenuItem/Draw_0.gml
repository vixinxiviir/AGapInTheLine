var numAnts = instance_number(o_Ant);
var activeAnts = [];

for (var i = 0; i < numAnts; i++)
{
	var instance = instance_find(o_Ant, i);
	array_push(activeAnts, instance.id);
}




if mouse_wheel_down()
{
	
	if numAnts > 12 and scrolled < (numAnts - 12)
	{
		menuOffset += sprite_height;
		scrolled += 1;
	}
}

if mouse_wheel_up()
{
	
	if scrolled > 0
	{
		menuOffset -= sprite_height;
		scrolled -= 1;
	}
}
	
	
for (var i = 0; i < numAnts; i++)
{
	
	var _x = x;
	if menuOffset != 0
		var _y = y - menuOffset + (sprite_height) * i;
	else
		var _y = y + (sprite_height) * i;
	if !(_y < y) and _y < room_height - 55 and global.antMenuActive
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, 0, -1, 1);
		draw_sprite_ext(s_Ant, s_Ant.image_index, _x + 20, _y + 20, s_Ant.image_xscale, s_Ant.image_yscale, 0, -1, 1);
		var antTarget = activeAnts[i].targetFruitSprite;
		if antTarget != undefined and antTarget != 0
			draw_sprite_ext(antTarget, antTarget.image_index, _x + 50, _y + 20, antTarget.image_xscale, antTarget.image_yscale, 0, -1, 1);
}

if global.antMenuActive == 0
	{
		y = y - menuOffset * scrolled;
		menuOffset = 0;
	}