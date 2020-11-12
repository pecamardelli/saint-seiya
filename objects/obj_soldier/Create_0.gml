/// @description Creación del jugador
soldier_sprites  = ds_map_create();
ds_map_copy(enemy_sprites, global.character_sprites[? "soldier" + string(ceil(random(3)))]);

soldier_vars[? "scale"]					= random_range(0.8,1.2);
soldier_vars[? "blend"]					= random_range(-1.1,-0.9);
soldier_vars[? "run_speed"]				= random_range(7,10);
soldier_vars[? "life"]					= ceil(random_range(10,50));
soldier_vars[? "jump_power"]			= random_range(22,32);
soldier_vars[? "sevensenses"]			= ceil(soldier_vars[? "life"] / 5);
soldier_vars[? "meteor_ready"]			= true;
soldier_vars[? "meteor_delay"]			= random_range(0.2,0.5);
soldier_vars[? "meteor_speed"]			= random_range(23,30);
soldier_vars[? "meteor_quantity"]		= ceil(random(3));
soldier_vars[? "meteor_life"]			= soldier_vars[? "life"] * random_range(3,7);
soldier_vars[? "meteor_damage_coef"]	= random_range(0.05, 0.11);
soldier_vars[? "meteor_x_offset"]		= 20;
soldier_vars[? "meteor_y_offset_idle"]	= 88;
soldier_vars[? "meteor_y_offset_run"]	= 70;
soldier_vars[? "meteor_y_offset_jump"]	= 75;

image_yscale	= soldier_vars[? "scale"];
//image_blend		= player_vars[? "blend"];
image_speed = 1;

alarm[0]		= soldier_vars[? "meteor_delay"] * room_speed;
decision		= "walk";
decision_avail	= true;
decision_delay	= random_range(1,4);
alarm[1]		= decision_delay * room_speed;

// MOVIMIENTOS

intVY	= 0;
intVX	= 0;
intMove = 0;


