/// @description Creación del jugador y sus variables

player_sprites  = ds_map_create();
player_vars		= ds_map_create();

ds_map_copy(player_vars, global.character_vars[? global.character_selected]);
ds_map_copy(player_sprites, global.character_sprites[? global.character_selected]);

keyDuckDown		= 0;

duck_enabled	= true;
jump_enabled	= true;
move_enabled	= true;
move_mode		= "run";
under_attack	= false;
attacking		= false;
cosmo_damage	= 0;
life_damage		= 0;

if room == rm_fight_room {
	meteor_enabled	= false;
}
else {
	meteor_enabled	= true;
}

image_speed = 1;

//alarm[0] = player_vars[? "meteor_delay"] * room_speed;
alarm[1] = 0.5 * room_speed;

// MOVIMIENTOS

intVY	= 0;
intVX	= 0;
intMove = 0;

