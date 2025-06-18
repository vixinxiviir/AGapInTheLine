//Flag checks

if instance_find(o_AntChoiceMenu, 0)
	menuUp = 1;	
else
	menuUp = 0;	

if position_meeting(mouse_x, mouse_y, id)
	hovered = 1;	
else
	hovered = 0;

targetFruitSprite = getFruitSprite(targetFruit);


// State checks
if state == antStates.IDLE
	{
		crawlSpeed = 0;
		image_index = 0;
	}

if state == antStates.TARGETING
{
	image_index = 0;
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
	image_speed = .22
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
		state = antStates.CARRYING;
		target.state = fruitStates.CARRIED;
	}	
}

if state == antStates.CARRYING
{
	var returnDir = point_direction(x,y,global.antSpawnX, global.antSpawnY)
	image_angle = returnDir-90;
	if  point_distance(x, y, global.antSpawnX, global.antSpawnY) > crawlSpeed
	{
		x += lengthdir_x(crawlSpeed, returnDir);
		y += lengthdir_y(crawlSpeed, returnDir);
		target.x = x;
		target.y = y-12;
	}
	else
	{
		x = global.antSpawnX;
		y = global.antSpawnY;
		instance_destroy(target);
		resetDir = random_range(0,180);
		resetDistance = random_range(50, 150);
		fruitsRetrieved += 1;
		state = antStates.RESETTING;
		
	}	
}

if state == antStates.RESETTING 
{
	
	image_angle = resetDir-90;
	
	if point_distance(x,y,global.antSpawnX,global.antSpawnY) < resetDistance
	{
		x += lengthdir_x(crawlSpeed, resetDir);
		y += lengthdir_y(crawlSpeed, resetDir);	
	}
	else
	{
		if targetFruit != 0
		{
			target = noone;
			state = antStates.TARGETING;
		}
		else
		{
			target = noone;
			targetFruit = 0;
			state = antStates.IDLE;
		}	
	}
	
}