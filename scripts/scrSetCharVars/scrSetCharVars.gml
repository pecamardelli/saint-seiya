function scrSetCharVars() {

#region BRONZE SAINTS
	var seiya_vars = ds_map_create();

	seiya_vars[? "enabled"]					= true;
	seiya_vars[? "available"]				= true;
	seiya_vars[? "name"]					= "Seiya";
	seiya_vars[? "constellation"]			= "Pegassus";
	seiya_vars[? "run_speed"]				= 10;
	seiya_vars[? "walk_speed"]				= 6;
	seiya_vars[? "max_cosmo"]				= 199;
	seiya_vars[? "cosmo"]					= 199;
	seiya_vars[? "max_life"]				= 199;
	seiya_vars[? "life"]					= 199;
	seiya_vars[? "jump_power"]				= 33;
	seiya_vars[? "meteor_ready"]			= true;
	seiya_vars[? "meteor_delay"]			= 0.25;
	seiya_vars[? "meteor_speed"]			= 26;
	seiya_vars[? "meteor_quantity"]			= 2;
	seiya_vars[? "meteor_damage_coef"]		= 0.18;
	seiya_vars[? "meteor_life"]				= 0.5;
	seiya_vars[? "meteor_x_offset"]			= 20;
	seiya_vars[? "meteor_y_offset_idle"]	= 88;
	seiya_vars[? "meteor_y_offset_run"]		= 70;
	seiya_vars[? "meteor_y_offset_duck"]	= 45;
	seiya_vars[? "meteor_y_offset_jump"]	= 75;
	seiya_vars[? "attack1_enabled"]			= true;
	seiya_vars[? "attack1_name"]			= "Pegassus Ryusei Ken";
	seiya_vars[? "attack1_damage_coef"]		= 0.24;
	seiya_vars[? "attack1_timeline"]		= tl_seiya_pegassus_ryusei_ken;
	seiya_vars[? "attack2_enabled"]			= true;
	seiya_vars[? "attack2_name"]			= "Pegassus Suisei Ken";
	seiya_vars[? "attack2_damage_coef"]		= 0.27;
	seiya_vars[? "attack2_timeline"]		= tl_seiya_pegassus_suisei_ken;
	seiya_vars[? "attack3_enabled"]			= true;
	seiya_vars[? "attack3_name"]			= "Pegassus Rolling Crush";
	seiya_vars[? "attack3_damage_coef"]		= 0.32;
	seiya_vars[? "attack3_timeline"]		= tl_seiya_pegassus_rolling_crush;
	ds_map_add_map(global.character_vars, "seiya", seiya_vars);
	//ds_map_destroy(seiya_vars);

	//	SHIRYU	//
	var shiryu_vars = ds_map_create();
	shiryu_vars[? "enabled"]				= true;
	shiryu_vars[? "available"]				= true;
	shiryu_vars[? "run_speed"]				= 11;
	shiryu_vars[? "walk_speed"]				= 6;
	shiryu_vars[? "max_cosmo"]				= 199;
	shiryu_vars[? "cosmo"]					= 199;
	shiryu_vars[? "max_life"]				= 199;
	shiryu_vars[? "life"]					= 199;
	shiryu_vars[? "jump_power"]				= 30;
	shiryu_vars[? "meteor_ready"]			= true;
	shiryu_vars[? "meteor_delay"]			= 0.22;
	shiryu_vars[? "meteor_speed"]			= 28;
	shiryu_vars[? "meteor_quantity"]		= 4;
	shiryu_vars[? "meteor_damage_coef"]		= 0.16;
	shiryu_vars[? "meteor_life"]			= 0.5;
	shiryu_vars[? "meteor_x_offset"]		= 10;
	shiryu_vars[? "meteor_y_offset_idle"]	= 85;
	shiryu_vars[? "meteor_y_offset_run"]	= 75;
	shiryu_vars[? "meteor_y_offset_duck"]	= 45;
	shiryu_vars[? "meteor_y_offset_jump"]	= 85;
	shiryu_vars[? "attack1_enabled"]		= true;
	shiryu_vars[? "attack1_name"]			= "Rozan Sho Ryu Ha";
	shiryu_vars[? "attack1_damage_coef"]	= 0.25;
	shiryu_vars[? "attack1_timeline"]		= tl_shiryu_rozan_sho_ryu_ha;
	shiryu_vars[? "attack2_enabled"]		= true;
	shiryu_vars[? "attack2_name"]			= "Rozan Ryuhisho";
	shiryu_vars[? "attack2_damage_coef"]	= 0.28;
	shiryu_vars[? "attack2_timeline"]		= tl_shiryu_rozan_ryuhisho;
	shiryu_vars[? "attack3_enabled"]		= true;
	shiryu_vars[? "attack3_name"]			= "Rozan Kouriuha";
	shiryu_vars[? "attack3_damage_coef"]	= 0.40;
	shiryu_vars[? "attack3_timeline"]		= tl_shiryu_rozan_kouryuha;
	ds_map_add_map(global.character_vars, "shiryu", shiryu_vars);
	//ds_map_destroy(shiryu_vars);

	//	HYOGA	//
	var hyoga_vars = ds_map_create();
	hyoga_vars[? "enabled"]					= true;
	hyoga_vars[? "available"]				= true;
	hyoga_vars[? "run_speed"]				= 10;
	hyoga_vars[? "walk_speed"]				= 6;
	hyoga_vars[? "max_cosmo"]				= 99;
	hyoga_vars[? "cosmo"]					= 99;
	hyoga_vars[? "max_life"]				= 99;
	hyoga_vars[? "life"]					= 99;
	hyoga_vars[? "jump_power"]				= 32;
	hyoga_vars[? "meteor_ready"]			= true;
	hyoga_vars[? "meteor_delay"]			= 0.28;
	hyoga_vars[? "meteor_speed"]			= 24;
	hyoga_vars[? "meteor_quantity"]			= 2;
	hyoga_vars[? "meteor_damage_coef"]		= 0.20;
	hyoga_vars[? "meteor_life"]				= 0.5;
	hyoga_vars[? "meteor_x_offset"]			= 3;
	hyoga_vars[? "meteor_y_offset_idle"]	= 90;
	hyoga_vars[? "meteor_y_offset_run"]		= 70;
	hyoga_vars[? "meteor_y_offset_duck"]	= 60;
	hyoga_vars[? "meteor_y_offset_jump"]	= 85;
	hyoga_vars[? "attack1_enabled"]			= true;
	hyoga_vars[? "attack1_name"]			= "Diamond Dust";
	hyoga_vars[? "attack1_damage_coef"]		= 0.22;
	hyoga_vars[? "attack2_enabled"]			= true;
	hyoga_vars[? "attack2_name"]			= "Koliso";
	hyoga_vars[? "attack2_damage_coef"]		= 0.25;
	hyoga_vars[? "attack3_enabled"]			= false;
	hyoga_vars[? "attack3_name"]			= "Aurora Thunder Attack";
	hyoga_vars[? "attack3_damage_coef"]		= 0.29;
	hyoga_vars[? "attack4_enabled"]			= false;
	hyoga_vars[? "attack4_name"]			= "Aurora Execution";
	hyoga_vars[? "attack4_damage_coef"]		= 0.35;
	ds_map_add_map(global.character_vars, "hyoga", hyoga_vars);
	//ds_map_destroy(hyoga_vars);

	//	SHUN	//
	var shun_vars = ds_map_create();
	shun_vars[? "enabled"]				= true;
	shun_vars[? "available"]			= true;
	shun_vars[? "run_speed"]			= 12;
	shun_vars[? "walk_speed"]			= 6;
	shun_vars[? "max_cosmo"]			= 99;
	shun_vars[? "cosmo"]				= 99;
	shun_vars[? "max_life"]				= 99;
	shun_vars[? "life"]					= 99;
	shun_vars[? "jump_power"]			= 34;
	shun_vars[? "meteor_ready"]			= true;
	shun_vars[? "meteor_delay"]			= 0.24;
	shun_vars[? "meteor_speed"]			= 27;
	shun_vars[? "meteor_quantity"]		= 2;
	shun_vars[? "meteor_damage_coef"]	= 0.21;
	shun_vars[? "meteor_life"]			= 0.5;
	shun_vars[? "meteor_x_offset"]		= 25;
	shun_vars[? "meteor_y_offset_idle"]	= 85;
	shun_vars[? "meteor_y_offset_run"]	= 70;
	shun_vars[? "meteor_y_offset_duck"]	= 60;
	shun_vars[? "meteor_y_offset_jump"]	= 70;
	shun_vars[? "attack1_enabled"]		= true;
	shun_vars[? "attack1_name"]			= "Nebula Chain";
	shun_vars[? "attack1_damage_coef"]	= 0.21;
	shun_vars[? "attack2_enabled"]		= true;
	shun_vars[? "attack2_name"]			= "Thunder Wave";
	shun_vars[? "attack2_damage_coef"]	= 0.26;
	shun_vars[? "attack3_enabled"]		= false;
	shun_vars[? "attack3_name"]			= "Nebula Stream";
	shun_vars[? "attack3_damage_coef"]	= 0.38;
	shun_vars[? "attack4_enabled"]		= false;
	shun_vars[? "attack4_name"]			= "Nebula Storm";
	shun_vars[? "attack4_damage_coef"]	= 0.43;
	ds_map_add_map(global.character_vars, "shun", shun_vars);
	//ds_map_destroy(shun_vars);

	//	IKKI	//
	var ikki_vars = ds_map_create();
	ikki_vars[? "enabled"]				= false;
	ikki_vars[? "available"]			= false;
	ikki_vars[? "run_speed"]			= 11;
	ikki_vars[? "walk_speed"]			= 6;
	ikki_vars[? "max_cosmo"]			= 499;
	ikki_vars[? "cosmo"]				= 499;
	ikki_vars[? "max_life"]				= 499;
	ikki_vars[? "life"]					= 499;
	ikki_vars[? "jump_power"]			= 33;
	ikki_vars[? "meteor_ready"]			= true;
	ikki_vars[? "meteor_delay"]			= 0.2;
	ikki_vars[? "meteor_speed"]			= 22;
	ikki_vars[? "meteor_quantity"]		= 5;
	ikki_vars[? "meteor_damage_coef"]	= 0.25;
	ikki_vars[? "meteor_life"]			= 0.5;
	ikki_vars[? "meteor_x_offset"]		= 10;
	ikki_vars[? "meteor_y_offset_idle"]	= 100;
	ikki_vars[? "meteor_y_offset_run"]	= 70;
	ikki_vars[? "meteor_y_offset_duck"]	= 60;
	ikki_vars[? "meteor_y_offset_jump"]	= 75;
	ikki_vars[? "attack1_enabled"]		= true;
	ikki_vars[? "attack1_name"]			= "Hoo Genma Ken";
	ikki_vars[? "attack1_damage_coef"]	= 0.30;
	ikki_vars[? "attack2_enabled"]		= true;
	ikki_vars[? "attack2_name"]			= "Ho Yoku Tensho";
	ikki_vars[? "attack2_damage_coef"]	= 0.34;
	ds_map_add_map(global.character_vars, "ikki", ikki_vars);
	//ds_map_destroy(ikki_vars);
#endregion

#region GOLD SAINTS
	var player_vars	= ds_map_create();
	player_vars[? "enabled"]				= true;
	player_vars[? "available"]				= true;
	player_vars[? "multiplier"]				= 1;
	player_vars[? "max_speed"]				= 5;
	player_vars[? "max_cosmo"]				= 99;
	player_vars[? "cosmo"]					= 99;
	player_vars[? "max_life"]				= 99;
	player_vars[? "life"]					= 99;
	player_vars[? "jump_power"]				= 33;
	player_vars[? "meteor_ready"]			= true;
	player_vars[? "meteor_delay"]			= 0.25;
	player_vars[? "meteor_speed"]			= 26;
	player_vars[? "meteor_quantity"]		= 2;
	player_vars[? "meteor_damage_coef"]		= 0.18;
	player_vars[? "meteor_life"]			= 0.5;
	player_vars[? "meteor_x_offset"]		= 20;
	player_vars[? "meteor_y_offset_idle"]	= 88;
	player_vars[? "meteor_y_offset_run"]	= 70;
	player_vars[? "meteor_y_offset_duck"]	= 45;
	player_vars[? "meteor_y_offset_jump"]	= 75;

	ds_map_add_map(global.character_vars, "mu", player_vars);
	//ds_map_destroy(player_vars);
	var player_vars	= ds_map_create();

	player_vars[? "enabled"]				= true;
	player_vars[? "available"]				= true;
	player_vars[? "multiplier"]				= 1;
	player_vars[? "max_speed"]				= 4;
	player_vars[? "max_cosmo"]				= 199 + 100 * ceil(random(2));
	player_vars[? "cosmo"]					= player_vars[? "max_cosmo"];
	player_vars[? "max_life"]				= player_vars[? "max_cosmo"];
	player_vars[? "life"]					= player_vars[? "max_cosmo"];
	player_vars[? "jump_power"]				= 35;
	player_vars[? "meteor_ready"]			= true;
	player_vars[? "meteor_delay"]			= 0.25;
	player_vars[? "meteor_speed"]			= 26;
	player_vars[? "meteor_quantity"]		= 2;
	player_vars[? "meteor_damage_coef"]		= 0.18;
	player_vars[? "meteor_life"]			= 0.5;
	player_vars[? "meteor_x_offset"]		= 20;
	player_vars[? "meteor_y_offset_idle"]	= 88;
	player_vars[? "meteor_y_offset_run"]	= 70;
	player_vars[? "meteor_y_offset_duck"]	= 45;
	player_vars[? "meteor_y_offset_jump"]	= 75;
	player_vars[? "block_accuracy_base"]	= 25;
	player_vars[? "block_accuracy_plus"]	= 35;
	player_vars[? "attack1_enabled"]		= true;
	player_vars[? "attack1_name"]			= "Great Horn";
	player_vars[? "attack1_damage_coef"]	= 0.3;
	player_vars[? "attack2_enabled"]		= true;
	player_vars[? "attack2_name"]			= "Glorious Horn";
	player_vars[? "attack2_damage_coef"]	= 0.35;

	ds_map_add_map(global.character_vars, "aldebaran", player_vars);
	//ds_map_destroy(player_vars);
	var player_vars	= ds_map_create();

#endregion


}