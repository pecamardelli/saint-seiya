/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if room == rm_level_room {
	randomize();
	var soldier_x	= obj_player.x + sign(random_range(-100,100)) * view_get_wport(0);
	var soldier_y	= random_range(0, room_height/2);
	instance_create_layer(soldier_x, soldier_y,"instances", obj_soldier);	
}

alarm[0] = ceil(random_range(3,8)) * room_speed;