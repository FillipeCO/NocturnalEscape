/// @description Insert description here
// You can write your code in this editor
randomize();


if (global.bat_sonar) {
    // Criar o aviso e arma com o sonar ativo
    var _weapon_height = random_range(310, 30);
    var _warning_instance = instance_create_layer(200, _weapon_height, "warnings", obj_weapon_warning);
	
	object[1] = obj_shuriken;
    object[2] = obj_scythe;
    object[3] = obj_sword;
    object[4] = obj_whip;

    var _i = irandom_range(1,4);

    // Criar a arma
    instance_create_layer(704, _weapon_height, "weapons", object[_i]);
    

} else {
    // Criar a arma diretamente se o sonar não estiver ativo
    var _weapon_height = random_range(310, 30);

    object[1] = obj_shuriken;
    object[2] = obj_scythe;
    object[3] = obj_sword;
    object[4] = obj_whip;

    var _i = irandom_range(1,4);

    // Criar a arma
    instance_create_layer(704, _weapon_height, "weapons", object[_i]);
}

alarm[2] = (180 * random_range(2, 5)) - (180 * (global.level / 4));