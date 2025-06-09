fruitOptions = 
{
	peach: o_Peach, 
	apple: 2,
	lemon: 3
}
	

enum antStates 
{
	IDLE,
	TARGETING,
	MOVING,
	CARRYING,
	RESETTING
}

state = antStates.IDLE;

targetFruit = 0;
mousePressed = 0;
menuUp = 0;
hovered = 0;
crawlSpeed = 1;
target = noone;
targetX = NaN;
targetY = NaN;