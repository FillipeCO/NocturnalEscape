/// @description Insert description here
// You can write your code in this editor
if (x < -70) instance_destroy();

if (global.player_hit == true) hspeed = 0;

if (global.blood_magnet)
{
	// Defina a distância mínima para ativar o efeito de ímã
	var _magnet_range = 100;

	// Calcule a distância entre o obj_collectible e o obj_player
	var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	// Se estiver dentro da distância definida, mover em direção ao obj_player
	if (_distance_to_player < _magnet_range) {
	    // Defina a velocidade de atração
	    var _attraction_speed = 5;
    
	    // Mover o obj_collectible em direção ao obj_player
	    var _direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
    
	    // Ajuste as coordenadas do obj_collectible para se mover em direção ao obj_player
	    x += lengthdir_x(_attraction_speed, _direction_to_player);
	    y += lengthdir_y(_attraction_speed, _direction_to_player);
	}
}
