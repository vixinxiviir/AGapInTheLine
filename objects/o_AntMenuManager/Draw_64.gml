var viewWidth = view_wport[0];
viewWidth *= .97;
var menuBaseWidth = sprite_get_width(s_MenuTile);
var xScale = viewWidth / menuBaseWidth;
var spriteHeight = sprite_get_height(s_MenuItemTile)

var viewHeight = view_hport[0];
viewHeight *= .97;
var menuBaseHeight = sprite_get_height(s_MenuTile);
var yScale = viewHeight/menuBaseHeight;

var xPadding = 50;

if global.antMenuActive == 1
{
	draw_sprite_ext(s_MenuTile, s_MenuTile.image_index, view_wport[0]/2, view_hport[0]/2, xScale, yScale, 0, -1, 1);
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
			menuOffset += spriteHeight;
			scrolled += 1;
		}
	}

	if mouse_wheel_up()
	{
	
		if scrolled > 0
		{
			menuOffset -= spriteHeight;
			scrolled -= 1;
		}
	}
	
		// Drawing the individual ant menu items
	for (var i = 0; i < numAnts; i++)
	{
		
		var _x = view_wport[0]/2;
		if menuOffset != 0
			var _y = 50 + menuOffset + (spriteHeight) * i;
		else
			var _y = 50 + (spriteHeight) * i;
		if global.antMenuActive
		{
			draw_sprite_ext(s_MenuItemTile, s_MenuItemTile.image_index, _x, _y, xScale-.01, s_MenuItemTile.image_yscale, 0, -1, 1);
			draw_sprite_ext(s_Ant, activeAnts[i].image_index, 150, _y, s_Ant.image_xscale * 1.5, s_Ant.image_yscale * 1.5, 0, -1, 1);
			var antTarget = activeAnts[i].targetFruitSprite;
			if antTarget != undefined and antTarget != 0
				draw_sprite_ext(antTarget, antTarget.image_index, 250, _y, antTarget.image_xscale*1.5, antTarget.image_yscale*1.5, 0, -1, 1);
			draw_set_font(f_SilverMenuItem);
			draw_text_transformed(350, _y, "Fruits Collected:", 1, 1, 0);
			var fruits = activeAnts[i].fruitsRetrieved;
			draw_text_transformed(600, _y, string(fruits), 1, 1, 0);
		
		}
	}

}