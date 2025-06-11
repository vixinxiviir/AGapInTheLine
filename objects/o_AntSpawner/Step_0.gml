antTimer -= 1;
if antTimer == 0 and instance_number(o_Ant) < global.maxAnts
{
	var spawnAngle = irandom(360)
	var spawnDistance = irandom_range(25, 100)
	var spawnPointX = x + lengthdir_x(spawnDistance, spawnAngle)
	var spawnPointY = y + lengthdir_y(spawnDistance, spawnAngle)
	instance_create_layer(spawnPointX, spawnPointY, 0, o_Ant)	
	antTimer = irandom_range(500,1000)
}
global.antSpawnX = x;
global.antSpawnY = y;