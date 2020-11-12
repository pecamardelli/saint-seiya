function scrDrawOrnament(argument0, argument1, argument2, argument3) {
	//	DIBUJAMOS UN ORNAMENTO ALEATORIO
	//	scrDrawOrnament(posicion_x, posicion_y)

	randomize();

	var base;
	if argument3 {
		var base_sprite	= argument3;
	}
	else {
		if random(100) < 50 {
			var base_sprite	= spr_blocks_40x40;
		}
		else {
			var base_sprite = spr_ornament_pedestals_40x60;
		}
	}

	var base_index;
	var base_width	= sprite_get_width(base_sprite);
	var base_height	= sprite_get_height(base_sprite);
	var base_x		= argument0;
	var base_y		= argument1;

	var ornament;
	var ornament_sprite	= spr_ornament_statues_40x60;
	var ornament_index;
	var ornament_x;
	var ornament_y;

	if argument2 {
		base_index = argument2;
	}
	else {
		base_index = floor(random(sprite_get_number(base_sprite)));
	}

	base = instance_create_depth(base_x, base_y, 10, obj_ornament);

	with base {
		sprite_index	= base_sprite;
		image_index		= base_index;
		image_speed		= 0;
		//solid = false;
	}

	ornament_x		= base_x;
	ornament_y		= base_y - base_height;

	if argument3 {
		ornament_index = argument3;
	}
	else {
		ornament_index	= floor(random(sprite_get_number(ornament_sprite)));
	}

	ornament		= instance_create_depth(ornament_x, ornament_y, 0, obj_ornament);

	with ornament {
		sprite_index	= ornament_sprite;
		image_index		= ornament_index;
		image_speed		= 0;
		//solid = false;
	}


}
