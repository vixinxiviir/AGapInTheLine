draw_self()

if hovered = 1 and menuUp = 0 and self.targetFruit == fruitOptions.peach
{
	draw_sprite(s_FruitIcon, -1, self.x, self.y - 32)	
	draw_sprite(s_Peach, -1, self.x, self.y - 32)	
}

if selectionState = selectionStates.SELECTED
	image_alpha = .5;
else
	image_alpha = 1;