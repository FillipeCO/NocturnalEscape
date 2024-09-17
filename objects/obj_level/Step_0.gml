/// @description Insert description here
// You can write your code in this editor
if (global.game_started) {

	if (global.player_hit = false)
	{
		global.points += 0.1;
		var _i = global.level;
	
		if (global.points >= global.points_list[_i])
		{
			global.level++;
		
		}
	
		layer_hspeed("bg_trees", -global.level);
		layer_hspeed("bg_trees_reflexion", -global.level);
		layer_hspeed("bg_water_reflexion", -global.level * 0.5);
	}

}	
