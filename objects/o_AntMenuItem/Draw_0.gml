var numAnts = instance_number(o_Ant);
var activeAnts = [];

//Getting each ant for use later
for (var i = 0; i < numAnts; i++)
{
	var instance = instance_find(o_Ant, i);
	array_push(activeAnts, instance.id);
}



// Scrolling the menu
if mouse_wheel_down()
{
	
	if numAnts > 11 and scrolled < (numAnts - 11)
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
	
	// Drawing the individual ant menu items
for (var i = 0; i < numAnts; i++)
{
	
	var _x = x;
	if menuOffset != 0
		var _y = y - menuOffset + (sprite_height) * i;
	else
		var _y = y + (sprite_height) * i;
	if !(_y < y) and _y < room_height - 55 and global.antMenuActive
	{
		draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, 0, -1, 1);
		draw_sprite_ext(s_Ant, s_Ant.image_index, _x -15, _y + 35, s_Ant.image_xscale * 1.5, s_Ant.image_yscale * 1.5, 0, -1, 1);
		var antTarget = activeAnts[i].targetFruitSprite;
		if antTarget != undefined and antTarget != 0
			draw_sprite_ext(antTarget, antTarget.image_index, _x + 50, _y + 35, antTarget.image_xscale*1.5, antTarget.image_yscale*1.5, 0, -1, 1);
		draw_set_font(f_SilverMenuItem);
		draw_text_transformed(_x + 150, _y + 25, "Fruits Collected:", 1, 1, 0);
		var fruits = activeAnts[i].fruitsRetrieved;
		draw_text_transformed(_x + 350, _y + 25, string(fruits), 1, 1, 0);
		
	}
}


if global.antMenuActive == 0
	{
		y = y - menuOffset * scrolled;
		menuOffset = 0;
	}