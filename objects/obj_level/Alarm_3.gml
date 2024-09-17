/// @description Insert description here
// You can write your code in this editor
var _spear_height = random_range(280, 330);


// criando a arma
instance_create_layer(704, _spear_height, "weapons", obj_spear);


alarm[3] = (180 * random_range(2, 5)) - (180 * (global.level / 4));