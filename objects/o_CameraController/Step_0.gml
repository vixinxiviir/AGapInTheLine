var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

if left and x > 960
{
	x -= cameraSpeed
}

if right and x < 4040
{
	x += cameraSpeed
}


if up and y > 540
{
	y -= cameraSpeed	
}

if down and y < 4460
{
	y += cameraSpeed
}