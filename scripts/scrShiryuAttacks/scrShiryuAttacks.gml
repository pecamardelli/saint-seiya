function scrShiryuAttacks(argument0) {
	// ROZAN SHO RYU HA
	// DRAGON NACIENTEEEEE!!!

	var attack;

	switch argument0 {
		case 1:
			attack = instance_create_depth(obj_player.x, obj_player.y, -100, obj_player_attack);
			with attack {
				sprite_index	= obj_player.player_sprites[? "spr_attack1"];
				image_speed		= 1;
				visible			= true;
				//hspeed			= 30 * sign(obj_enemy.x - obj_player.x);
				image_xscale	= sign(obj_enemy.x - obj_player.x);
			
				y	= obj_player.y - sprite_get_height(sprite_index)/2;
			
				animation_stop_at_end	= true;
				sprite_on_impact		= obj_player.player_sprites[? "spr_attack1_impact"];
				attack_damage			= ceil(obj_player.player_vars[? "attack1_damage_coef"] * obj_player.player_vars[? "cosmo"]);
			};
			break;
		case 2:
			attack = instance_create_depth(obj_player.x, obj_player.y, -100, obj_player_attack);
			with attack {
				sprite_index	= obj_player.player_sprites[? "spr_attack2"];
				image_speed		= 1;
				visible			= true;
				hspeed			= 35 * sign(obj_enemy.x - obj_player.x);
				image_xscale	= sign(obj_enemy.x - obj_player.x);
		
				x	= obj_player.x + 20 + random_range(-10,10);
				y	= obj_player.y - sprite_get_height(sprite_index)/2 - 20;
	
				sprite_on_impact	= obj_player.player_sprites[? "spr_attack2_impact"];
				attack_damage		= ceil(obj_player.player_vars[? "attack2_damage_coef"] * obj_player.player_vars[? "cosmo"]);
			};
			break;
		case 3:
			attack = instance_create_depth(obj_enemy.x, obj_enemy.y, -100, obj_player_attack);
			with attack {
				sprite_index	= obj_player.player_sprites[? "spr_attack3"];
				image_speed		= 1;
				visible			= true;
			
				y	= obj_player.y - sprite_get_height(sprite_index)/2;
			
				sprite_on_impact			= false;
				attack_damage				= ceil(obj_player.player_vars[? "attack3_damage_coef"] * obj_player.player_vars[? "cosmo"]);
			};
			break;
	}


}
