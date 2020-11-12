function scrAriesFightSteps() {
	switch global.fight_phase {
		case 0:
			if close_enough {
				if keyF2 {
					scrTalkTime();
				}
				else if keyF1 {
					obj_gui_fight.current_action		= "talking";
					obj_gui_fight.enemy_talk			= "Quieres atacarme? Asi no llegaran lejos...";
					obj_gui_fight.player_gui_showing	= "menu";
				}
			}
			break;
		case 1:
			obj_enemy.follow_player	= true;
			
			if obj_player.x > obj_enemy.x {
				obj_gui_fight.current_action		= "idle";
				obj_gui_fight.player_gui_showing	= "menu";
				global.fight_phase++;
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
