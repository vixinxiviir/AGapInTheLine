fruitTimer -= 1;
if fruitTimer == 0
{
	var spawnAngle = irandom(360)
	var spawnDistance = irandom_range(25, 100)
	var spawnPointX = x + lengthdir_x(spawnDistance, spawnAngle)
	var spawnPointY = y + lengthdir_y(spawnDistance, spawnAngle)
	instance_create_layer(spawnPointX, spawnPointY, 0, o_Peach)	
	fruitTimer = irandom_range(300,1000)
}