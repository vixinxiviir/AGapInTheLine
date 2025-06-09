//Flag checks

if instance_find(o_AntChoiceMenu, 0)
	menuUp = 1;	
else
	menuUp = 0;	

if position_meeting(mouse_x, mouse_y, id)
	hovered = 1;	
else
	hovered = 0;




// State checks
if state == antStates.IDLE
	{
		crawlSpeed = 0;
	}

if state == antStates.TARGETING
{
	with (o_Peach)
	{
		if state == fruitStates.OPEN and other.target == noone
		{
			state = fruitStates.TARGETED;
			other.target = id;
			other.targetX = x;
			other.targetY = y;
			other.state = antStates.MOVING;
			break;
		}
		
	}
}
	
if state == antStates.MOVING
{
	crawlSpeed = 1;
	var dir = point_direction(x, y, targetX, targetY);
	image_angle = dir - 90;
	if  point_distance(x, y, targetX, targetY) > crawlSpeed
	{
		x += lengthdir_x(crawlSpeed, dir);
		y += lengthdir_y(crawlSpeed, dir);
	}
	else
	{
		x = targetX;
		y = targetY;
		crawlSpeed = 0;
		state = antStates.CARRYING;
		target.state = fruitStates.CARRIED;
	}	
}

if state == antStates.CARRYING
{
	
}

if state == antStates.RESETTING
{
	
}