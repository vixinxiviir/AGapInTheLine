var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var camController = instance_find(o_CameraController, 0);

if left and camController.x > 960
{
	x -= camController.cameraSpeed
}

if right and camController.x < 4040
{
	x += camController.cameraSpeed
}


if up and camController.y > 540
{
	y -= camController.cameraSpeed	
}

if down and camController.y < 4460
{
	y += camController.cameraSpeed
}