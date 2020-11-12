/// @description Impacto con el jugador

/*
if obj_player.player_vars[? "cosmo"] > attack_damage {
	obj_player.player_vars[? "cosmo"] -= attack_damage;
}
else {
	obj_player.player_vars[? "cosmo"] = 0;
}

if obj_player.player_vars[? "life"] > attack_damage {
	obj_player.player_vars[? "life"] -= attack_damage;
}
else {
	obj_player.player_vars[? "life"] = 0;
}
*/
if !hit_target {
	obj_player.cosmo_damage	+= attack_damage;
	obj_player.life_damage	+= attack_damage;

	obj_player.x -= random_range(5,10) * image_xscale;

	switch attack_number {
		case 1:
			var s	= "spr_attack" + string(attack_number) + "_impact";
			sprite_index				= obj_enemy.enemy_sprites[? s];
			hspeed						= 0;
			destroy_on_animation_end	= true;
			break;
	}
	hit_target = true;
}