function scrDrawStatue(argument0) {
	// DIBUJAMOS UNA ESTATUA ALEATORIA
	// argument0 = ground_pos --> El primer argumento es la posición X actual del suelo

	randomize();

	var ground;
	var	ground_sprite	= spr_ground;
	var ground_width	= sprite_get_width(ground_sprite);
	var ground_height	= sprite_get_height(ground_sprite);
	var ground_x		= argument0;
	var ground_y		= room_height;

	var base;
	var base_sprite		= spr_ornament_pedestals_wide;
	var base_index;
	var base_width		= sprite_get_width(base_sprite);
	var base_height		= sprite_get_height(base_sprite);
	var base_x;
	var base_y;

	var item;
	var item_sprite	= spr_ornament_statues_120x240;
	var item_index;
	var item_width	= sprite_get_height(item_sprite);
	var item_x;
	var item_y;

	randomize();
	item_index	= floor(random(sprite_get_number(item_sprite)));
	base_index	= floor(random(sprite_get_number(base_sprite)));
	
	base_x	= ground_x + (ground_width - base_width) / 2;
	base_y	= ground_y - ground_height;
	base	= instance_create_depth(base_x, base_y, 0, obj_ornament);
	
	with base {
		sprite_index	= base_sprite;
		image_index		= base_index;
		image_speed		= 0;
		//solid = false;
	};
		
	item_x = ground_x + (ground_width - base_width) / 2;
	item_y = ground_y - ground_height - base_height;
	item = instance_create_depth(item_x, item_y, 0, obj_ornament);
	
	with item {
		sprite_index	= item_sprite;
		image_index		= item_index;
		image_speed		= 0;
		//solid = false;
	};
	
	ground	= instance_create_depth(ground_x, ground_y, 0, obj_ground);
	
	with ground {
		sprite_index	= ground_sprite;
		image_speed		= 0;
		//solid = true;
	};

	return ground_x;


}
