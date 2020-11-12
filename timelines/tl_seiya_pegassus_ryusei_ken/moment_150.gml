obj_player.move_enabled			= true;
obj_player.attacking			= false;
global.attack_turn				= 1 - global.attack_turn;
obj_enemy.move_enabled			= true;
obj_enemy.under_attack			= false;
obj_enemy.animation_stop_at_end	= false;
global.fight_phase				= 1;
obj_player.timeline_running		= false;