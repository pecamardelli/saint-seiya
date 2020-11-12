/// @description Pausa y atajos

if keyboard_check_pressed(vk_f5) {
	game_restart();
	//room_goto(rm_main_menu);
}

if room == rm_twelve_houses {
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_character_select);
	}
}

if room == rm_level_room {
	var room_end = collision_rectangle(room_width - 50, 0, room_width, room_height,obj_player,false,false);

	if room_end != noone {
		room_goto(rm_fight_room);
	}
	
	if obj_player.y - sprite_get_height(obj_player.sprite_index) > room_height {
		obj_player.life_damage	+= 50;
		/*
		if obj_player.player_vars[? "life"] > 50 {
			player_vars[? "life"] -= 50;
			x = 100;
			y = room_height - 60;
		}
		else {
			player_vars[? "life"]		= 0;
			player_vars[? "enabled"]	= false;
			ds_map_replace_map(global.character_vars, global.character_selected, player_vars);
			room_goto(rm_character_select);
		}
		*/
	}
	
	if	obj_player.player_vars[? "cosmo"]	== 0 ||
		obj_player.player_vars[? "life"]	== 0 {
			
		obj_player.player_vars[? "enabled"]	= false;
		ds_map_replace_map(global.character_vars, global.character_selected, obj_player.player_vars);
		room_goto(rm_character_select);
	}
}

if room == rm_fight_room {
	if	abs(obj_enemy.x - obj_player.x) < 650 {
		close_enough	= true;
	}
	else {
		close_enough	= false;
	}
	
	if	close_enough &&
		global.fight_phase == 0 ||
		global.fight_phase == 2 {
		
		obj_player.move_enabled	= false;
	}
	
	scrCameraAlign();
	
	if recover_energy {
		recover_count++;
		obj_gui_fight.enemy_gui_showing		= "bars";
		obj_gui_fight.player_gui_showing	= "bars";
		obj_player.move_enabled				= false;
		
		if keyboard_check(ord("C")) {
			if keyboard_check(vk_up) {
				if global.sevensenses > 0 && obj_player.player_vars[? "cosmo"] < obj_player.player_vars[? "max_cosmo"] {
					obj_player.player_vars[? "cosmo"]++;
					global.sevensenses--;
				}
			}
			else if keyboard_check(vk_down) {
				if obj_player.player_vars[? "cosmo"] > 0 {
					obj_player.player_vars[? "cosmo"]--;
					global.sevensenses++;
				}
			}
		}
		
		if keyboard_check(ord("V")) {
			if keyboard_check(vk_up) {
				if global.sevensenses > 0 && obj_player.player_vars[? "life"] < obj_player.player_vars[? "max_life"] {
					obj_player.player_vars[? "life"]++;
					global.sevensenses--;
				}
			}
			else if keyboard_check(vk_down) {
				if obj_player.player_vars[? "life"] > 0 {
					obj_player.player_vars[? "life"]--;
					global.sevensenses++;
				}
			}
		}
		
		if keyboard_check_pressed(vk_enter) {
			global.fight_phase		= 1;
			obj_player.move_enabled	= true;
			recover_energy			= false;
			global.attack_turn		= 0;
		}
		
	}
	
	keyF1		= keyboard_check_pressed(vk_f1);
	keyF2		= keyboard_check_pressed(vk_f2);
	keyF3		= keyboard_check(vk_f3);
	keyF4		= keyboard_check_pressed(vk_f4);
	keyF5		= keyboard_check_pressed(vk_f5);
	keyF6		= keyboard_check_pressed(vk_f6);
	keyF7		= keyboard_check_pressed(vk_f7);
	keyF8		= keyboard_check_pressed(vk_f8);
	keyEnter	= keyboard_check_pressed(vk_enter);
	
	switch global.current_house_number {
		case 0: // Casa de Aries
			scrAriesFightSteps();
			break;
		case 1: // Casa de Tauro
			scrTauroFightSteps();
			break;
	}
}