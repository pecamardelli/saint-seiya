/// @description Control del juego

//instance_create_layer(512, 384, "Instances", obj_camera);	
global.character_vars		= ds_map_create();
global.character_sprites	= ds_map_create();
global.character_talks		= ds_list_create();
global.current_house_number	= 1;
global.game_over			= false;
global.sevensenses			= 0;
global.fight_phase			= 0;
global.talk_pos				= 0;
global.attack_turn			= 0;

global.enemy_names[0]	= "mu";
global.enemy_names[1]	= "aldebaran";
global.enemy_names[2]	= "geminis";
global.enemy_names[3]	= "deathmask";
global.enemy_names[4]	= "aioria";
global.enemy_names[5]	= "shaka";
global.enemy_names[6]	= "dohko";
global.enemy_names[7]	= "milo";
global.enemy_names[8]	= "aioros";
global.enemy_names[9]	= "shura";
global.enemy_names[10]	= "camus";
global.enemy_names[11]	= "afrodita";
global.enemy_names[12]	= "saga";

recover_energy	= false;
recover_count	= 0;

scrSetCharSprites();
scrSetCharVars();
scrSetCharTalks();

// CONSTANTES GRAVITATORIAS Y DE FRICCIÓN

global.intMultiplier	= 1;
global.intGravityNorm	= 1.9;
global.intGroundAcc		= 1.0;
global.intGroundFric	= 1.9;
global.intAirAcc		= 0.75;
global.intAirFric		= 0.1;