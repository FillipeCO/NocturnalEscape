/// @description Insert description here
// You can write your code in this editor
var _torch_height = random_range(128, 40);

// criando a arvore
instance_create_layer(704, _torch_height, "torches", obj_torch);


alarm[1] = (120 * random_range(2, 5)) - (120 * (global.level / 4));