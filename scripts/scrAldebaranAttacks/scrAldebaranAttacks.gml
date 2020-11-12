function scrAldebaranAttacks(argument0) {
	// ATAQUES DE ALDEBARÁN

	var attack = instance_create_depth(0, 0, -100, obj_enemy_attack);

	switch argument0 {
		case 1: // GREAT HORN
			with attack {
				sprite_index	= obj_enemy.enemy_sprites[? "spr_attack1_sprite"];
				image_speed		= 1;
				visible			= true;
				hspeed			= 30 * sign(obj_player.x - obj_enemy.x);
				image_xscale	= sign(obj_player.x - obj_enemy.x);
			
				x	= obj_enemy.x + sprite_get_width(obj_enemy.sprite_index)/2 * sign(image_xscale);
				y	= obj_enemy.y - sprite_get_height(obj_enemy.sprite_index)/2;
	
				attack_damage	= ceil(obj_enemy.enemy_vars[? "attack1_damage_coef"] * obj_enemy.enemy_vars[? "cosmo"] / 3);
				attack_number	= 1;
			};
			break;
		case 2: // GLORIOUS HORN
	
			break;
	}


}
