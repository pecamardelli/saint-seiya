obj_gui_fight.enemy_gui_showing		= "dialogbox";
obj_gui_fight.enemy_talk			= obj_enemy.enemy_vars[? "attack1_name"];
obj_gui_fight.player_gui_showing	= "bars";

obj_enemy.attacking					= true;
obj_enemy.sprite_index				= obj_enemy.enemy_sprites[? "spr_attack1_pos"];
obj_enemy.image_speed				= 1;
obj_enemy.animation_stop_at_end		= true;
obj_enemy.follow_player				= false;
