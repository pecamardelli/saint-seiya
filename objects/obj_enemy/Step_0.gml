/// @description Movimientos

//var keyLeft, keyRight, keyJump, keyJumpRelease, keyDuck, keyWalk;

keyLeft		= 0;
keyRight	= 0;
keyJump		= 0;
keyDuck		= 0;
keyWalk		= 0;

intColLeft	= place_meeting(x-1, y, solid);
intColRight	= place_meeting(x+1, y, solid);
bolGround	= !place_free(x, y+1);

// DEFINICIÓN DE LA ACELERACIÓN Y LA FRICCIÓN
if !bolGround {
	intTempAcc	= global.intAirAcc;
	intTempFric	= global.intAirFric;
}
else{
	intTempAcc	= global.intGroundAcc;
	intTempFric	= global.intGroundFric;
}

#region ACCIONES
// SEGUIR AL JUGADOR
if follow_player && move_enabled {
	if obj_player.x < x {
		if abs(obj_player.x - x) - 5 > dist {
			keyLeft		= -1;
			keyRight	= 0;
			image_speed	= 1;
		}
		else if abs(obj_player.x - x) + 5 < dist {
			keyLeft		= 0;
			keyRight	= 1;
			image_speed	= -1;
		}
	}	
	else if obj_player.x > x {
		if abs(obj_player.x - x) - 5 > dist {
			keyLeft		= 0;
			keyRight	= 1;
			image_speed	= 1;
		}
		else if abs(obj_player.x - x) + 5 < dist {
			keyLeft		= -1;
			keyRight	= 0;
			image_speed	= -1;
		}
	}
	else {
		follow_player	= false;
		image_speed	= 1;
	}
}

#endregion

intMove		= keyLeft + keyRight;
// AGACHARSE
if keyDuck && bolGround {
	intMove = 0;
}

// VELOCIDAD HORIZONTAL
if intMove != 0 {
	intVX = scrApproach(intVX, enemy_vars[? "max_speed"] * intMove, intTempAcc);
}
else{
	intVX = scrApproach(intVX, enemy_vars[? "max_speed"] * intMove, intTempFric);
}

// VELOCIDAD VERTICAL
if !bolGround {
	intVY = scrApproach(intVY, enemy_vars[? "jump_power"], global.intGravityNorm);	
}

// SALTO
if keyJump && bolGround {
	intVY = -enemy_vars[? "jump_power"];	
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

if move_enabled {
	image_xscale = scale * sign(obj_player.x - x);
}

// CAMBIO DE SPRITE
if enemy_vars[? "cosmo"] > 0 && enemy_vars[? "life"] > 0 {
	if !bolGround || intVY != 0 {
		sprite_index	= enemy_sprites[? "spr_jump"];
	}
	else{
		if intVX != 0 {
			sprite_index	= enemy_sprites[? "spr_walk"];
			image_speed		= 1;
		}
		else{
			if keyDuck {
				sprite_index	= enemy_sprites[? "spr_duck"];
			}
			else if under_attack {
				sprite_index	= enemy_sprites[? "spr_block"];
			}
			else if attacking {
				// No hacer un carajo
			}
			else {
				sprite_index	= enemy_sprites[? "spr_idle"];
				image_speed		= 1;
			}
		}
	}
}
