/// @description Insert description here
// You can write your code in this editor


var _collectible_height = random_range(310, 30);


// coletável
instance_create_layer(704, _collectible_height, "collectible", obj_collectible);


alarm[4] = 30 * random_range(2, 5);