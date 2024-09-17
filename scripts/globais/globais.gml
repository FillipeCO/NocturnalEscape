// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


#region variáveis globais

global.respawn_x = 158;
global.respawn_y = 128;

global.player_hit = false;

global.points = 0;

global.level = 1;

global.points_list = [100, 200, 300, 500, 800, 1300, 2100, 3400, 5500, 8900]

global.collectible = 0;

global.transition_path = rm_room1;

global.game_over = false;

global.blood_magnet = false;
global.second_wind = false;
global.bat_sonar = false;

global.game_started = false;

global.second_wind_used = false;

global.second_wind_invincible_time = false;

global.high_score = 0;

global.current_score = 0;


#endregion 

#region funções

function player_lost()
{
    // Verificar se o jogador já foi atingido ou se "second wind" foi usado
    //if (global.second_wind_used == false and global.second_wind)
    
    global.player_hit = true;
    global.transition_path = rm_room2;
	
	global.current_score = global.points;
	if(global.current_score > global.high_score) global.high_score = global.current_score;

    global.points = 0;
    global.level = 1;

    vspeed = -3;

    layer_hspeed("trees", 0);
    layer_hspeed("torches", 0);
    layer_hspeed("bg_trees", 0);
    layer_hspeed("bg_trees_reflexion", 0);
    layer_hspeed("bg_water_reflexion", 0);
    layer_hspeed("bg_burning_forest", 0);
    layer_hspeed("weapons", 0);
    layer_hspeed("collectible", 0);

    alarm[0] = 120;
    image_index = 4;
    image_speed = 0;
    alarm[1] = 30;
	

    layer_sequence_create("game_start_transition", 0, 0, seq_play_button_pressed);

}



function player_lost_out_of_bounds()
{
	if (global.player_hit == true) exit
	
	global.player_hit = true;
	global.transition_path = rm_room2;
	
	global.current_score = global.points;
	if(global.current_score > global.high_score) global.high_score = global.current_score;
	
	global.points = 0;
	global.level = 1;
	
	layer_hspeed("trees", 0);
	layer_hspeed("torches", 0);
	layer_hspeed("bg_trees", 0);
	layer_hspeed("bg_trees_reflexion", 0);
	layer_hspeed("bg_water_reflexion", 0);
	layer_hspeed("bg_burning_forest", 0);
	layer_hspeed("weapons", 0);
	layer_hspeed("collectible", 0);

	alarm[0] = 120;
	image_index = 4;
	image_speed = 0;
	alarm[1] = 30;
	vspeed = 0;
	
	layer_sequence_create("game_start_transition", 0, 0, seq_play_button_pressed);
}

function change_room()
{
	room_goto(global.transition_path);
}

function buy_power(_cost)
{
	if (global.collectible >= _cost)
	{
		global.collectible -= _cost;
		audio_play_sound(snd_buy_success,1,0,1);
		return true;
	}
	else
	{
		audio_play_sound(snd_buy_fail,1,0,1);
		return false;
	}
}

#endregion