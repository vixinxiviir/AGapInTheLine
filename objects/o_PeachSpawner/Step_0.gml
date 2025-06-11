
if fruitTimer > 0
	fruitTimer -= 1;
	
if fruitTimer == 0 and instance_number(o_Peach) < global.maxFruit
{
	var spawnAngle = irandom(360)
	var spawnDistance = irandom_range(25, 100)
	var spawnPointX = x + lengthdir_x(spawnDistance, spawnAngle)
	var spawnPointY = y + lengthdir_y(spawnDistance, spawnAngle)
	instance_create_layer(spawnPointX, spawnPointY, 0, o_Peach)	
	fruitTimer = 150
}
