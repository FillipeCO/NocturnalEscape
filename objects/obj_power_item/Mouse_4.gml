/// @description Insert description here
// You can write your code in this editor

if (locked = false)
{

	if (buy_power(cost))
	{
		image_index = 1;
		locked = true;
		if (id == inst_4A7D191B) global.blood_magnet = true;
		if (id == inst_6A4529AD) global.second_wind = true;
		if (id == inst_664A9E93) global.bat_sonar = false;
	}

}
