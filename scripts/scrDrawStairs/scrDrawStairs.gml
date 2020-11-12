function scrDrawStairs(argument0, argument1, argument2, argument3, argument4) {
	// SCRIPT DE CREACIÓN DE ESCALERAS DE DIFERENTES NIVELES
	// scrDrawStairs(ground_x, stair_q_x, stair_q_y, simetric, solid)

	randomize();

	var ground;
	var	ground_sprite	= spr_ground;
	var ground_index	= floor(random(sprite_get_number(ground_sprite)));
	var ground_width	= sprite_get_width(spr_ground);
	var ground_height	= sprite_get_height(spr_ground);
	var ground_x		= argument0;
	var ground_y		= room_height;
	var ground_q;
	var total_ground	= 0;

	var stair;
	var stair_sprite	= spr_blocks_60x120;
	var stair_index;
	var stair_width		= sprite_get_width(stair_sprite);
	var stair_height	= sprite_get_height(stair_sprite);
	var stair_simmetric	= argument3;

	if argument4 {
		var stair_object	= obj_ornament;
	}
	else {
		var stair_object	= obj_ground;
	}

	if argument2 {
		var stair_q_y	= argument2;
	}
	else {
		var stair_q_y	= ceil(random(5));
	}

	if argument1 {
		var stair_q_x	= argument1;
	}
	else {
		var stair_q_x	= stair_q_y + ceil(random(4));
	}

	var stair_x;
	var stair_y;

	var current_level	= 0;

	//	DIBUJAMOS LA ESCALERA

	for (var i=0; i<(stair_q_y + stair_q_x); i++) {
		randomize();
		stair_x		= ground_x + stair_width * i;
	
		for(var j=0;j<=current_level;j++) {
			stair_y		= ground_y - ground_height - stair_height * j;
			stair		= instance_create_depth(stair_x, stair_y, 0, stair_object);
			stair_index	= floor(random(sprite_get_number(stair_sprite)));

			with stair {
				sprite_index	= stair_sprite;
				image_index		= stair_index;
				image_speed		= 0;
				solid			= argument4;
			};
		}
	
		if current_level < stair_q_y {
			current_level++;
		}
	
		total_ground	+= stair_width;
	}

	while total_ground > 0 {
		ground = instance_create_depth(ground_x, ground_y, 0, obj_ground);
		ground_x		+= ground_width;
		total_ground	-= ground_width;
	}

	return ground_x;



}
