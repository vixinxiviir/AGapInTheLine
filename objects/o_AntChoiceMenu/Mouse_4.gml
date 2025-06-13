

if point_in_rectangle(mouse_x, mouse_y, x-32, y-16, x-16, y+16) and global.menuAnt.targetFruit != o_Peach
{
	global.menuAnt.targetFruit = o_Peach;
	global.menuAnt.state = antStates.TARGETING;
}
instance_destroy(id)