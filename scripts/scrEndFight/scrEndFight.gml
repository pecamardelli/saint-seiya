function scrEndFight() {
	// Crear el rectángulo de colision que pasa al siguiente nivel

	var room_end = collision_rectangle(room_width - 20, 0, room_width, room_height,obj_player,false,false);

	obj_player.move_mode	= "run";
	switch global.current_house_number {
		case 1:
			obj_enemy.sprite_index			= obj_enemy.enemy_sprites[? "spr_sit"];
			obj_enemy.image_speed			= 1;
			obj_enemy.animation_stop_at_end	= true;
			break;
	}

	if room_end != noone {
		global.current_house_number++;
		room_goto(rm_twelve_houses);
	}


}
