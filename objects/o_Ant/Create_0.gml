fruitOptions = 
{
	peach: o_Peach, 
	apple: 2,
	lemon: 3
}

getFruitSprite = function(targetFruit)
{
	switch (targetFruit)
	{
		default:
			break;
		case o_Peach:
			return s_Peach;
	}
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
targetFruitSprite = 0;
mousePressed = 0;
menuUp = 0;
hovered = 0;
crawlSpeed = 1;
target = noone;
targetX = NaN;
targetY = NaN;
resetDir = 0;
resetDistance = 0;
fruitsRetrieved = 0;