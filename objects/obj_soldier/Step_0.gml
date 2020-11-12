/// @description AI y movimientos


var keyLeft			= 0;
var keyRight		= 0;
var keyJump			= 0;
var keyJumpRelease	= 0;
var keyMeteor		= 0;

intColLeft	= place_meeting(x-1, y, solid);
intColRight	= place_meeting(x+1, y, solid);
onBlockTop	= place_meeting(x, y+1, obj_block) && !place_meeting(x, y, obj_block);
bolGround	= !place_free(x, y+1) || onBlockTop;

if soldier_vars[? "life"] > 0 {
	#region AI DEL SOLDADO

	randomize();

	// Tomar una decisión
	
	if decision_avail {
		if random(100) < distance_to_object(obj_player) / random_range(4,6) {
			decision	= "walk";
		}
		else {
			decision	= "idle";
		}
		
		decision_avail	= false;
		decision_delay	= random_range(random_range(0.8,2), random_range(3, 5));
	}
	
	switch decision {
		case "walk":
			if obj_player.x < x {
				keyLeft = -1;
			}
			else if obj_player.x > x {
				keyRight = 1;	
			}
			break;
		case "idle":
			image_xscale = sign(obj_player.x - x);
			break;
	}

	intMove		= keyLeft + keyRight;
	
	// PROBABILIDAD DE SALTAR
	jump_prob	= 0;
	
	if obj_player.y < y - sprite_get_height(sprite_index) {
		jump_prob	+= random_range(10,20);
	}
	/*	
	if distance_to_object(obj_player) <= sprite_get_width(sprite_index) * 3 {
		jump_prob	+= random_range(5,10) / (distance_to_object(obj_player)/500);
	}
	*/
	if	intColLeft		||
		intColRight		||
		(!place_meeting(x + image_xscale * 20, y+1, obj_block) &&
		place_free(x + image_xscale * 20, y+1)) {
		jump_prob	= 500;
	}
	
	if	random(500) < jump_prob  {
		keyJump = 1;
	}

	// Bajar desde lo alto de un blque
	
	if onBlockTop && obj_player.y < y {
		if random(100) < random(10) {
			y += 5;
		}
	}
	// Disparar un meteoro

	if random(100) < 5 {
		keyMeteor = 1;
	}


	//#################################
	//#################################
	//#################################
	#endregion
}

intMove		= keyLeft + keyRight;

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
	intVX = scrApproach(intVX, soldier_vars[? "max_speed"] * intMove, intTempAcc);
}
else{
	intVX = scrApproach(intVX, soldier_vars[? "max_speed"] * intMove, intTempFric);
}

// VELOCIDAD VERTICAL
if !bolGround {
	intVY = scrApproach(intVY, soldier_vars[? "jump_power"], global.intGravityNorm);	
}

// SALTO
if keyJump && bolGround {
	intVY = -soldier_vars[? "jump_power"];	
}

// COLISIÓN HORIZONTAL
repeat (abs(intVX)){
	if place_free(x + sign(intVX), y) {
	//if !place_meeting(x + sign(intVX), y, obj_ground) && !place_meeting(x + sign(intVX), y, obj_tile) && !place_meeting(x + sign(intVX), y, obj_block) {
		x += sign(intVX);
	}
	else{
		intVX = 0;
		break;
	}
}

// COLISIÓN VERTICAL
repeat (abs(intVY)){
	//if !place_free(x, y + sign(intVY)) {
	if !place_free(x, y + sign(intVY)) || (place_meeting(x, y + sign(intVY), obj_block) && !place_meeting(x, y, obj_block) && !place_meeting(x, y-1, obj_block)){
	//if place_meeting(x, y + sign(intVY), obj_ground) || place_meeting(x, y + sign(intVY), obj_tile) || place_meeting(x, y + sign(intVY), obj_block) {
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

if soldier_vars[? "life"] > 0 {
	if !bolGround || intVY != 0 {
		sprite_index	= soldier_sprites[? "spr_jump"];
	}
	else{
		if intVX != 0 {
			sprite_index	= soldier_sprites[? "spr_run"];
		}
		else{
			sprite_index	= soldier_sprites[? "spr_idle"];
		}
	}
}

// METEORO
if	keyMeteor &&
	soldier_vars[? "meteor_ready"] &&
	instance_number(obj_soldier_meteor) < soldier_vars[? "meteor_quantity"] {
		
	var meteor;
	
	if !bolGround {
		sprite_index = soldier_sprites[? "spr_jump_punch"];
		meteor_y_offset = soldier_vars[? "meteor_y_offset_jump"];
	}
	else {
		if intMove != 0 {
			sprite_index = soldier_sprites[? "spr_run_punch"];
			meteor_y_offset = soldier_vars[? "meteor_y_offset_run"];
		}
		else{
			sprite_index = soldier_sprites[? "spr_idle_punch"];
			meteor_y_offset = soldier_vars[? "meteor_y_offset_idle"];
		}
	}
			
	meteor = instance_create_depth(x + (soldier_vars[? "meteor_x_offset"] * image_xscale), y - meteor_y_offset, -1000, obj_soldier_meteor);
	
	var meteor_sprite	= soldier_sprites[? "spr_meteor"];
	var meteor_speed	= soldier_vars[? "meteor_speed"] + abs(intVX);
	var meteor_life		= soldier_vars[? "meteor_life"];
	var meteor_dir		= image_xscale;
	
	meteor.life			= meteor_life;
	meteor.damage		= ceil(soldier_vars[? "meteor_damage_coef"] * soldier_vars[? "life"]);	
	
	with(meteor){
		sprite_index	= meteor_sprite;
		image_speed		= 1;
		speed			= meteor_speed;
		visible			= true;
		image_xscale	= meteor_dir;
		direction		= -90 * (meteor_dir - 1);
	};
	soldier_vars[? "meteor_ready"] = false;
}
