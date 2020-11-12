/// @description Detener la animación en ciertos casos

if room == rm_fight_room {
	if sprite_index	== player_sprites[? "spr_fall"] {
		image_index	= sprite_get_number(player_sprites[? "spr_fall"]) - 1;
		image_speed	= 0;
	}
}
