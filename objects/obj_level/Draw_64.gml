/// @description Insert description here
// You can write your code in this editor
var _screen_width = display_get_width(); // Largura total da tela
var _viewport_width = view_wport[0]; // Largura do viewport
var _viewport_x = view_xport[0]; // Posição X do viewport

// Calcular a posição central com base no offset da viewport
var _viewport_width_center = _viewport_x + (_viewport_width / 2);

draw_set_font(fnt_points);

var _points = round(global.points);
//var _screen_width_center = view_wview[0] / 2;

draw_text(20, 20, "Score: " + string(_points)); 

draw_text(45, 50, global.collectible);

if (global.game_started = false)
{
	draw_text(_viewport_width_center - 150, room_height / 2, "Press Space or Tap to fly!");
}

// Desenhando high score:
draw_text(_viewport_width_center + 370, room_height / 2 - 160, "High Score: " + string(global.high_score));

//desenhando o icone do coletável
draw_sprite_ext(spr_collectible_icon, 0, 28, 68, 2, 2, 0, c_white, 1);

// sprite do magnet
if (global.blood_magnet)
{
	draw_sprite_ext(spr_magnet, 0, 32, 128, 2, 2, 0, c_white, 1)
}

// sprite do second wind
if (global.second_wind)
{
    if (global.second_wind_used)
    {
        // Desenha um novo sprite ou altera o image_index quando second_wind_used for true
        draw_sprite_ext(spr_second_wind_used, 0, 32, 168, 2, 2, 0, c_white, 1);
    }
    else
    {
        // Desenha o sprite original se second_wind ainda não foi usado
        draw_sprite_ext(spr_second_wind, 0, 32, 168, 2, 2, 0, c_white, 1);
    }
}


//desenhando o sprite do level em uma escala maior
draw_sprite_ext(spr_numbers, global.level, _viewport_width_center, 30, 2, 2, 0, c_white, 1);



// draw_set_font é global, quando usada uma vez, tem que ser resetada.
draw_set_font(-1);