global.fight_phase					= -1;
obj_gui_fight.player_gui_showing	= "dialogbox";
obj_gui_fight.player_talk			= string_upper(obj_player.player_vars[? "attack1_name"]);
obj_gui_fight.enemy_gui_showing		= "bars";
obj_player.sprite_index				= obj_player.player_sprites[? "spr_idle_punch"];
obj_player.move_enabled				= false;
obj_player.attacking				= true;
obj_enemy.move_enabled				= false;
obj_enemy.move_enabled				= false;
obj_enemy.under_attack				= true;
obj_enemy.attacking					= false;
