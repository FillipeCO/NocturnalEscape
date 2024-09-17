/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_points);


draw_text(45, 50, global.collectible);

//desenhando o icone do coletável
draw_sprite_ext(spr_collectible_icon, 0, 28, 68, 2, 2, 0, c_white, 1);

draw_set_font(-1);