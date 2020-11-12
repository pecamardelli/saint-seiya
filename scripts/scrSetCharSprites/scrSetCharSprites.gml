function scrSetCharSprites() {

#region BRONZE SAINTS
	var player_sprites = ds_map_create();
	player_sprites[? "spr_idle"]			= spr_seiya_idle;
	player_sprites[? "spr_idle_punch"]		= spr_seiya_idle_punch;
	player_sprites[? "spr_run"]				= spr_seiya_run;
	player_sprites[? "spr_run_punch"]		= spr_seiya_run_punch;
	player_sprites[? "spr_walk"]			= spr_seiya_walk;
	player_sprites[? "spr_duck"]			= spr_seiya_duck;
	player_sprites[? "spr_duck_punch"]		= spr_seiya_duck_punch;
	player_sprites[? "spr_jump"]			= spr_seiya_jump;
	player_sprites[? "spr_jump_punch"]		= spr_seiya_jump_punch;
	player_sprites[? "spr_meteor"]			= spr_seiya_meteor;
	player_sprites[? "spr_meteor_impact"]	= spr_seiya_meteor_impact;
	player_sprites[? "spr_block"]			= spr_seiya_block;
	player_sprites[? "spr_fall"]			= spr_seiya_fall;
	player_sprites[? "spr_stand_up"]		= spr_seiya_stand_up;
	player_sprites[? "spr_char"]			= spr_seiya_char;
	player_sprites[? "spr_attack1"]			= spr_seiya_meteor;
	player_sprites[? "spr_attack1_pos"]		= spr_seiya_attack1_pos;
	player_sprites[? "spr_attack1_impact"]	= spr_seiya_meteor_impact;
	player_sprites[? "spr_attack2"]			= spr_seiya_pegassus_suiseiken;
	player_sprites[? "spr_attack2_pos"]		= spr_seiya_attack1_pos;
	player_sprites[? "spr_attack2_impact"]	= spr_seiya_pegassus_suiseiken_impact;
	player_sprites[? "spr_attack3"]			= spr_seiya_pegassus_rolling_crush;
	player_sprites[? "spr_attack3_pos"]		= spr_seiya_attack3_pos;

	ds_map_add_map(global.character_sprites, "seiya", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]			= spr_shiryu_idle;
	player_sprites[? "spr_idle_punch"]		= spr_shiryu_idle_punch;
	player_sprites[? "spr_run"]				= spr_shiryu_run;
	player_sprites[? "spr_run_punch"]		= spr_shiryu_run_punch;
	player_sprites[? "spr_walk"]			= spr_shiryu_walk;
	player_sprites[? "spr_duck"]			= spr_shiryu_duck;
	player_sprites[? "spr_duck_punch"]		= spr_shiryu_duck_punch;
	player_sprites[? "spr_jump"]			= spr_shiryu_jump;
	player_sprites[? "spr_jump_punch"]		= spr_shiryu_jump_punch;
	player_sprites[? "spr_meteor"]			= spr_shiryu_meteor;
	player_sprites[? "spr_meteor_impact"]	= spr_shiryu_meteor_impact;
	player_sprites[? "spr_block"]			= spr_shiryu_block;
	player_sprites[? "spr_fall"]			= spr_shiryu_fall;
	player_sprites[? "spr_stand_up"]		= spr_shiryu_stand_up;
	player_sprites[? "spr_char"]			= spr_shiryu_char;
	player_sprites[? "spr_attack1"]			= spr_shiryu_attack1;
	player_sprites[? "spr_attack1_pos"]		= spr_shiryu_attack1_pos;
	player_sprites[? "spr_attack1_impact"]	= spr_shiryu_attack1_impact;
	player_sprites[? "spr_attack2"]			= spr_shiryu_attack2;
	player_sprites[? "spr_attack2_pos"]		= spr_shiryu_attack2_pos;
	player_sprites[? "spr_attack2_impact"]	= spr_shiryu_attack1_impact;
	player_sprites[? "spr_attack3"]			= spr_shiryu_attack3;
	player_sprites[? "spr_attack3_pos"]		= spr_shiryu_attack3_pos;
	player_sprites[? "spr_attack3_impact"]	= spr_shiryu_attack3_impact;

	ds_map_add_map(global.character_sprites, "shiryu", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]		= spr_hyoga_idle;
	player_sprites[? "spr_idle_punch"]	= spr_hyoga_idle_punch;
	player_sprites[? "spr_run"]			= spr_hyoga_run;
	player_sprites[? "spr_run_punch"]	= spr_hyoga_run_punch;
	player_sprites[? "spr_duck"]		= spr_hyoga_duck;
	player_sprites[? "spr_duck_punch"]	= spr_hyoga_duck_punch;
	player_sprites[? "spr_jump"]		= spr_hyoga_jump;
	player_sprites[? "spr_jump_punch"]	= spr_hyoga_jump_punch;
	player_sprites[? "spr_meteor"]		= spr_hyoga_meteor;
	player_sprites[? "spr_char"]		= spr_hyoga_char;

	ds_map_add_map(global.character_sprites, "hyoga", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]		= spr_shun_idle;
	player_sprites[? "spr_idle_punch"]	= spr_shun_idle_punch;
	player_sprites[? "spr_run"]			= spr_shun_run;
	player_sprites[? "spr_run_punch"]	= spr_shun_run_punch;
	player_sprites[? "spr_duck"]		= spr_shun_duck;
	player_sprites[? "spr_duck_punch"]	= spr_shun_duck_punch;
	player_sprites[? "spr_jump"]		= spr_shun_jump;
	player_sprites[? "spr_jump_punch"]	= spr_shun_jump_punch;
	player_sprites[? "spr_meteor"]		= spr_shun_meteor;
	player_sprites[? "spr_char"]		= spr_shun_char;

	ds_map_add_map(global.character_sprites, "shun", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]		= spr_ikki_idle;
	player_sprites[? "spr_idle_punch"]	= spr_ikki_idle_punch;
	player_sprites[? "spr_run"]			= spr_ikki_run;
	player_sprites[? "spr_run_punch"]	= spr_ikki_run_punch;
	player_sprites[? "spr_duck"]		= spr_ikki_duck;
	player_sprites[? "spr_duck_punch"]	= spr_ikki_duck_punch;
	player_sprites[? "spr_jump"]		= spr_ikki_jump;
	player_sprites[? "spr_jump_punch"]	= spr_ikki_jump_punch;
	player_sprites[? "spr_meteor"]		= spr_ikki_meteor;
	player_sprites[? "spr_char"]		= spr_ikki_char;

	ds_map_add_map(global.character_sprites, "ikki", player_sprites);
	//ds_map_destroy(player_sprites);

#endregion

#region SOLDIERS

	var player_sprites = ds_map_create();
	player_sprites[? "spr_idle"]			= spr_soldier1_idle;
	player_sprites[? "spr_idle_punch"]		= spr_soldier1_idle_punch;
	player_sprites[? "spr_run"]				= spr_soldier1_run;
	player_sprites[? "spr_run_punch"]		= spr_soldier1_run_punch;
	player_sprites[? "spr_jump"]			= spr_soldier1_jump;
	player_sprites[? "spr_jump_punch"]		= spr_soldier1_jump_punch;
	player_sprites[? "spr_fall"]			= spr_soldier1_fall;
	player_sprites[? "spr_meteor"]			= spr_soldier_meteor;
	player_sprites[? "spr_meteor_impact"]	= spr_soldier_meteor_impact;

	ds_map_add_map(global.character_sprites, "soldier1", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]			= spr_soldier2_idle;
	player_sprites[? "spr_idle_punch"]		= spr_soldier2_idle_punch;
	player_sprites[? "spr_run"]				= spr_soldier2_run;
	player_sprites[? "spr_run_punch"]		= spr_soldier2_run_punch;
	player_sprites[? "spr_jump"]			= spr_soldier2_jump;
	player_sprites[? "spr_jump_punch"]		= spr_soldier2_jump_punch;
	player_sprites[? "spr_fall"]			= spr_soldier2_fall;
	player_sprites[? "spr_meteor"]			= spr_soldier_meteor;
	player_sprites[? "spr_meteor_impact"]	= spr_soldier_meteor_impact;

	ds_map_add_map(global.character_sprites, "soldier2", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]			= spr_soldier3_idle;
	player_sprites[? "spr_idle_punch"]		= spr_soldier3_idle_punch;
	player_sprites[? "spr_run"]				= spr_soldier3_run;
	player_sprites[? "spr_run_punch"]		= spr_soldier3_run_punch;
	player_sprites[? "spr_jump"]			= spr_soldier3_jump;
	player_sprites[? "spr_jump_punch"]		= spr_soldier3_jump_punch;
	player_sprites[? "spr_fall"]			= spr_soldier3_fall;
	player_sprites[? "spr_meteor"]			= spr_soldier_meteor;
	player_sprites[? "spr_meteor_impact"]	= spr_soldier_meteor_impact;
#endregion

#region GOLD SAINTS

	ds_map_add_map(global.character_sprites, "soldier3", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]		= spr_mu_idle;
	player_sprites[? "spr_idle_punch"]	= spr_seiya_idle_punch;
	player_sprites[? "spr_walk"]		= spr_mu_walk;
	player_sprites[? "spr_run_punch"]	= spr_seiya_run_punch;
	player_sprites[? "spr_run"]			= spr_seiya_run;
	player_sprites[? "spr_run_punch"]	= spr_seiya_run_punch;
	player_sprites[? "spr_duck"]		= spr_seiya_duck;
	player_sprites[? "spr_duck_punch"]	= spr_seiya_duck_punch;
	player_sprites[? "spr_jump"]		= spr_seiya_jump;
	player_sprites[? "spr_jump_punch"]	= spr_seiya_jump_punch;
	player_sprites[? "spr_meteor"]		= spr_seiya_meteor;
	player_sprites[? "spr_avatar"]		= spr_mu_avatar;

	ds_map_add_map(global.character_sprites, "mu", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();

	player_sprites[? "spr_idle"]			= spr_aldebaran_idle;
	player_sprites[? "spr_idle_punch"]		= spr_shiryu_idle_punch;
	player_sprites[? "spr_walk"]			= spr_aldebaran_walk;
	player_sprites[? "spr_run"]				= spr_shiryu_run;
	player_sprites[? "spr_run_punch"]		= spr_shiryu_run_punch;
	player_sprites[? "spr_duck"]			= spr_aldebaran_duck;
	player_sprites[? "spr_duck_punch"]		= spr_shiryu_duck_punch;
	player_sprites[? "spr_jump"]			= spr_aldebaran_jump;
	player_sprites[? "spr_jump_punch"]		= spr_shiryu_jump_punch;
	player_sprites[? "spr_meteor"]			= spr_shiryu_meteor;
	player_sprites[? "spr_block"]			= spr_aldebaran_idle;
	player_sprites[? "spr_fall"]			= spr_aldebaran_fall;
	player_sprites[? "spr_sit"]				= spr_aldebaran_sit;
	player_sprites[? "spr_cut_horn"]		= spr_aldebaran_cut_horn;
	player_sprites[? "spr_avatar"]			= spr_aldebaran_avatar;
	player_sprites[? "spr_attack1_sprite"]	= spr_aldebaran_great_horn;
	player_sprites[? "spr_attack1_pos"]		= spr_aldebaran_great_horn_pos;
	player_sprites[? "spr_attack1_impact"]	= spr_aldebaran_great_horn_impact;

	ds_map_add_map(global.character_sprites, "aldebaran", player_sprites);
	//ds_map_destroy(player_sprites);
	var player_sprites = ds_map_create();
		
#endregion


}
