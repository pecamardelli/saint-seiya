function scrTauroFightSteps() {
	switch global.fight_phase {
		case 0:
			if close_enough {
				if keyF2 {
					scrTalkTime();
				}
			}
			break;
		case 1:
			if	obj_player.player_vars[? "cosmo"] == 0 ||
				obj_player.player_vars[? "life"] == 0 {
				obj_player.sprite_index	= obj_player.player_sprites[? "spr_fall"];
						
				if recover_count == 0 && global.character_selected == "seiya" {
					if !obj_player.under_attack {
						scrSeiyaAtTauro();
						obj_gui_fight.player_gui_showing	= "bars";
						global.fight_phase	= 0;
						global.attack_turn	= -1;
					}
				}
				else {
					obj_player.player_vars[? "enabled"] = false;
					ds_map_replace_map(global.character_vars, global.character_selected, obj_player.player_vars);
					alarm[1] = 2 * room_speed;
					global.fight_phase = -1;
				}
				//global.fight_phase++;
			}
					
			if	obj_enemy.enemy_vars[? "cosmo"] == 0 ||
				obj_enemy.enemy_vars[? "life"] == 0 {
			
				obj_enemy.sprite_index			= obj_enemy.enemy_sprites[? "spr_cut_horn"];
				obj_enemy.follow_player			= false;
				obj_enemy.move_enabled			= false;
				obj_enemy.animation_stop_at_end	= true;
				obj_enemy.image_speed			= 1;
				global.fight_phase				= 0;
				global.attack_turn				= -1;
				exit;		
			}
		
			if close_enough {
				obj_player.move_mode				= "walk";
				//obj_gui_fight.player_gui_showing	= "menu";
				obj_player.image_xscale				= sign(obj_enemy.x - obj_player.x);
			}
		
			if global.attack_turn == 1 && !obj_enemy.attacking {
				obj_enemy.timeline_index			= tl_aldebaran_great_horn;
				obj_enemy.timeline_running			= true;
				obj_enemy.timeline_position			= 0;
				obj_enemy.timeline_loop				= false;
				obj_gui_fight.player_gui_showing	= "bars";						
			}
			else if global.attack_turn == 0 {
				if obj_player.under_attack {
					obj_gui_fight.player_gui_showing	= "bars";
				}
				else {
					//obj_gui_fight.player_gui_showing	= "menu";
					obj_gui_fight.enemy_gui_showing		= "bars";
					obj_enemy.follow_player				= true;
				}
			}
					
			if global.attack_turn == 0 {
				if keyF1 {
					if obj_gui_fight.player_gui_showing	!= "attacks" {
						obj_gui_fight.player_gui_showing = "attacks";	
					}
					else {
						//scrSelectAttack(global.character_selected, 1);
						if obj_player.player_vars[? "attack1_enabled"] {
							obj_player.timeline_index			= obj_player.player_vars[? "attack1_timeline"];
							obj_player.timeline_running			= true;
							obj_player.timeline_position		= 0;
							obj_player.timeline_loop			= false;
						}
					}
				}
			
				if keyF2 {
					if obj_gui_fight.player_gui_showing	== "attacks" {
						if obj_player.player_vars[? "attack2_enabled"] {
							obj_player.timeline_index			= obj_player.player_vars[? "attack2_timeline"];;
							obj_player.timeline_running			= true;
							obj_player.timeline_position		= 0;
							obj_player.timeline_loop			= false;
							obj_gui_fight.enemy_gui_showing		= "bars";
						}
					}
				}
			
				if keyF3 {
					if obj_gui_fight.player_gui_showing	== "attacks" {
						if obj_player.player_vars[? "attack3_enabled"] {
							obj_player.timeline_index			= obj_player.player_vars[? "attack3_timeline"];;
							obj_player.timeline_running			= true;
							obj_player.timeline_position		= 0;
							obj_player.timeline_loop			= false;
							obj_gui_fight.enemy_gui_showing		= "bars";
						}
					}
					else {
						obj_gui_fight.player_gui_showing	= "bars";
					}
				}
			
				if keyF4 {
					if obj_gui_fight.player_gui_showing	== "attacks" {
						if obj_player.player_vars[? "attack4_enabled"] {
							obj_player.timeline_index			= obj_player.player_vars[? "attack4_timeline"];;
							obj_player.timeline_running			= true;
							obj_player.timeline_position		= 0;
							obj_player.timeline_loop			= false;
							obj_gui_fight.enemy_gui_showing		= "bars";
						}
					}
				}
			}
			break;
		case 2:
			if close_enough {
				if keyF2 || keyEnter {
					scrTalkTime();
				}
			}
			break;
		case 3:
			scrEndFight();
			break;
	}


}
