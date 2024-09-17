/// @description Insert description here
// You can write your code in this editor
if (x <= -70) instance_destroy();


if (global.player_hit)
	{
		image_angle = image_angle;
		hspeed = 0;
	}
if (global.player_hit == false)
{
	image_angle +=5;

	hspeed = -5 -global.level;
}