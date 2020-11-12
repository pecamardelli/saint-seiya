/// @description Detener la animación del sprite

if room == rm_fight_room {
	if animation_stop_at_end {
		image_index	= sprite_get_number(obj_enemy.sprite_index) -1;
		image_speed	= 0;
	}
	/*
	if sprite_index == enemy_sprites[? "spr_block"] {
		image_index	= sprite_get_number(enemy_sprites[? "spr_block"]) - 1;
		image_speed	= 0;
	}
	*/
	if sprite_index	== enemy_sprites[? "spr_fall"] {
		image_index	= sprite_get_number(enemy_sprites[? "spr_fall"]) - 1;
		image_speed	= 0;
	}
	
	if sprite_index	== enemy_sprites[? "spr_cut_horn"] {
		//image_index	= sprite_get_number(enemy_sprites[? "spr_cut_horn"]) - 1;
		//image_speed	= 0;
		global.fight_phase	= 2;
		scrTalkTime();
	}
}
