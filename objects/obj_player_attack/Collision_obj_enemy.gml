/// @description Impactar al enemigo

if !hit_target {
	hspeed			= 0;

	if sprite_on_impact {
		sprite_index	= sprite_on_impact;
	}
	
	var prob = obj_enemy.enemy_vars[? "block_accuracy_base"] + obj_enemy.enemy_vars[? "cosmo"] / obj_enemy.enemy_vars[? "max_cosmo"] * obj_enemy.enemy_vars[? "block_accuracy_plus"];

	randomize();

	if random(100) > prob {
		obj_enemy.sprite_index	= obj_enemy.enemy_sprites[? "spr_fall"];
		obj_enemy.image_speed	= 0;
		obj_enemy.image_index	= 0;
	
		if obj_enemy.enemy_vars[? "cosmo"] > attack_damage {
			obj_enemy.enemy_vars[? "cosmo"]	-= attack_damage;
		}
		else{
			obj_enemy.enemy_vars[? "cosmo"] = 0;
		}
	
		if obj_enemy.enemy_vars[? "life"] > attack_damage {
			obj_enemy.enemy_vars[? "life"]	-= attack_damage;
		}
		else{
			obj_enemy.enemy_vars[? "life"] = 0;
		}
	}
	hit_target = true;
}