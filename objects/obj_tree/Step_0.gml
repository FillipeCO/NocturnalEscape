/// @description Insert description here
// You can write your code in this editor
if (x <= -70) instance_destroy();

if (global.player_hit)
{
	hspeed = 0;	
}
if (global.player_hit == false)
{

	hspeed = -2 -global.level;
}