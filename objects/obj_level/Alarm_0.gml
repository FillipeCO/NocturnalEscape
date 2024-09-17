/// @description Insert description here
// You can write your code in this editor
var _tree_height = random_range(384, 500);

// criando a arvore
instance_create_layer(704, _tree_height, "trees", obj_tree);


alarm[0] = (60 * random_range(2, 5)) - (60 * (global.level / 4));

