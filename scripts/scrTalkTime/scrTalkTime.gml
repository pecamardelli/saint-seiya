function scrTalkTime() {
	// Sin argumentos
	obj_gui_fight.enemy_gui_showing		= "dialogbox";
	obj_gui_fight.player_gui_showing	= "dialogbox";

	var words	= global.character_talks[|global.current_house_number];			
	if words[|global.talk_pos] != "END_OF_TALK" {
		if global.talk_pos % 2 == 0 {
			obj_gui_fight.enemy_talk	= words[|global.talk_pos];
		}
		else {
			obj_gui_fight.player_talk	= words[|global.talk_pos];
		}
	}
	else {
		global.fight_phase++;
		obj_gui_fight.enemy_talk	= "";
		obj_gui_fight.player_talk	= "";
		obj_player.move_enabled		= true;
	}
				
	global.talk_pos++;


}
