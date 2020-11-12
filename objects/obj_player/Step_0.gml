/// @description Movimientos

if cosmo_damage > 0 {
	if player_vars[? "cosmo"] > 0 {
		player_vars[? "cosmo"]--;
		cosmo_damage--;
	}
	else {
		player_vars[? "cosmo"]	= 0;
		cosmo_damage			= 0;
	}
}

if life_damage > 0 {
	if player_vars[? "life"] > 0 {
		player_vars[? "life"]--;
		life_damage--;
	}
	else {
		player_vars[? "life"]	= 0;
		life_damage				= 0;
	}
}

var keyLeft, keyRight, keyJump, keyJumpRelease, keyDuck;

keyLeft			= -keyboard_check(vk_left);
keyRight		= keyboard_check(vk_right);
keyJump			= keyboard_check_pressed(vk_up);
keyJumpRelease	= keyboard_check_released(vk_up);
keyDuck			= keyboard_check(vk_down);

intColLeft	= place_meeting(x-1, y, solid);
intColRight	= place_meeting(x+1, y, solid);
onBlockTop	= place_meeting(x, y+1, obj_block) && !place_meeting(x, y, obj_block);

if keyDuckDown == 2 && onBlockTop {
	y	+= 5;
}

bolGround	= !place_free(x, y+1) || onBlockTop;

if move_enabled {
	intMove	= keyLeft + keyRight;
}
else {
	intMove	= 0;
}

// DEFINICIÓN DE LA ACELERACIÓN Y LA FRICCIÓN
if !bolGround {
	intTempAcc	= global.intAirAcc;
	intTempFric	= global.intAirFric;
}
else{
	intTempAcc	= global.intGroundAcc;
	intTempFric	= global.intGroundFric;
}

// VELOCIDAD HORIZONTAL
if intMove != 0 {
	switch move_mode {
		case "run":
			intVX = scrApproach(intVX, player_vars[? "run_speed"] * intMove, intTempAcc);
			break;
		default:
			intVX = scrApproach(intVX, player_vars[? "walk_speed"] * intMove, intTempAcc);
	}
}
else{
	switch move_mode {
		case "run":
			intVX = scrApproach(intVX, player_vars[? "run_speed"] * intMove, intTempFric);
			break;
		default:
			intVX = scrApproach(intVX, player_vars[? "walk_speed"] * intMove, intTempFric);
	}
}

// VELOCIDAD VERTICAL
if !bolGround {
	intVY = scrApproach(intVY, player_vars[? "jump_power"], global.intGravityNorm);	
}

// SALTO
if keyJump && bolGround && jump_enabled && move_enabled {
	intVY = -player_vars[? "jump_power"];	
}

// COLISIÓN HORIZONTAL
repeat (abs(intVX)){
	if place_free(x + sign(intVX), y) {
	//if !place_meeting(x + sign(intVX), y, obj_ground) {
		x += sign(intVX);
	}
	else{
		intVX = 0;
		break;
	}
}

// COLISIÓN VERTICAL
repeat (abs(intVY)){
	if !place_free(x, y + sign(intVY)) || (place_meeting(x, y + sign(intVY), obj_block) && !place_meeting(x, y, obj_block) && !place_meeting(x, y-1, obj_block)){
	//if place_meeting(x, y + sign(intVY), obj_ground) {
	//if !place_free(x, y + sign(intVY)) || onBlockTop {
		intVY = 0;
		break;
	}
	else{
		y += sign(intVY);
	}	
}

// REFLEJO DEL SPRITE DEL PERSONAJE
if intMove != 0 {
	image_xscale = intMove;
}


// CAMBIO DE SPRITE
if player_vars[? "cosmo"] > 0 && player_vars[? "life"] > 0 {
	if !bolGround || intVY != 0 {
		sprite_index	= player_sprites[? "spr_jump"];
	}
	else{
		if intVX != 0 {
			switch move_mode {
				case "run":
					sprite_index	= player_sprites[? "spr_run"];
					image_speed		= 1;
					break;
				default:
					sprite_index	= player_sprites[? "spr_walk"];
					image_speed		= 1;
			}
		}
		else{
			// AGACHARSE
			if keyDuck && bolGround && duck_enabled && move_enabled {
				sprite_index	= player_sprites[? "spr_duck"];
			}
			else if under_attack {
				sprite_index	= player_sprites[? "spr_block"];
			}
			else if attacking {
				// No hay que hacer una mierda
			}
			else{
				sprite_index	= player_sprites[? "spr_idle"];
				image_speed		= 1;
			}
		}
	}
}


// METEORO
if	keyboard_check(vk_space) &&
	instance_number(obj_meteor) < player_vars[? "meteor_quantity"] &&
	meteor_enabled {
		
	var meteor;
	
	if !bolGround {
		sprite_index = player_sprites[? "spr_jump_punch"];
		meteor_y_offset = player_vars[? "meteor_y_offset_jump"];
	}
	else {
		if keyDuck {
			sprite_index	= player_sprites[? "spr_duck_punch"];
			meteor_y_offset = player_vars[? "meteor_y_offset_duck"];
		}
		else if intMove != 0 {
			sprite_index = player_sprites[? "spr_run_punch"];
			meteor_y_offset = player_vars[? "meteor_y_offset_run"];
		}
		else{
			sprite_index = player_sprites[? "spr_idle_punch"];
			meteor_y_offset = player_vars[? "meteor_y_offset_idle"];
		}
	}
			
	//meteor = instance_create_depth(obj_player.x + (player_vars[? "meteor_x_offset"] * obj_player.image_xscale), obj_player.y - meteor_y_offset, -1000, obj_meteor);
	meteor	= instance_create_depth(x + (player_vars[? "meteor_x_offset"] * image_xscale), y - meteor_y_offset, -1000, obj_meteor);
	
	with(meteor){
		sprite_index = obj_player.player_sprites[? "spr_meteor"];
		image_speed = 1;
		speed = obj_player.player_vars[? "meteor_speed"] + abs(obj_player.intVX);
		visible = true;
		image_xscale = obj_player.image_xscale;
		direction = -90 * (image_xscale - 1);
	};
	player_vars[? "meteor_ready"] = false;
}
