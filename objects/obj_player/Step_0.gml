/// @description Insert description here
// You can write your code in this editor
if (global.second_wind_invincible_time)
{
	var _new_sprite = spr_smoke;
   sprite_index = _new_sprite;

}

if (global.game_started and global.second_wind_invincible_time == false)
{
	gravity = 0.3;

	if (image_index > 3 && !global.player_hit)
	{
	    image_index = 0;
	    image_speed = 0.5;
	}

	if (global.player_hit)
	{
	
		if(image_angle == 90)
		{
			hspeed = 0
			image_angle = image_angle;
		
		}
		else if(image_angle < 90)
		{
			hspeed = -2;
			image_angle += 3;
		}
	}
	else // batendo no chão e no teto
	{
		if (y <= 0)
		{
			if (global.second_wind == true and global.second_wind_used == false)
			{
				x = global.respawn_x; // Define respawn_x previamente
				y = global.respawn_y; // Define respawn_y previamente
				audio_play_sound(snd_buy_success, 1, 0, 2);
				global.second_wind_used = true;
				global.second_wind_invincible_time = true;
				alarm[2] = 120;
			}
			else
			{
				player_lost_out_of_bounds();
				audio_play_sound(snd_outofboundshit, 1, 0);
			}
		}
		if (y >= 350)
		{
			if (global.second_wind == true and global.second_wind_used == false)
			{
				x = global.respawn_x; // Define respawn_x previamente
				y = global.respawn_y; // Define respawn_y previamente
				audio_play_sound(snd_buy_success, 1, 0, 2);
				global.second_wind_used = true;
				global.second_wind_invincible_time = true;
				alarm[2] = 120;
			}
			else
			{
				player_lost_out_of_bounds();
				audio_play_sound(snd_outofboundshit, 1, 0);
			}
			
			
		}
	}
}
else if(global.second_wind_invincible_time == false)
{
	gravity = 0;
}
