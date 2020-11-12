function scrColumnsInEmpty(argument0) {
	//	DIBUJAMOS ALGUNAS COLUMNAS EN EL VACÍO

	randomize();

	var total_empty		= 0;

	var column;
	var column_sprite	= spr_columns_60x120;
	var column_index	= floor(random(sprite_get_number(column_sprite)));
	var column_width	= sprite_get_width(column_sprite);
	var column_height	= sprite_get_height(column_sprite);
	var column_x		= argument0 - sprite_get_width(spr_ground);
	var column_y;
	var column_q		= ceil(random_range(0, 6));

	for (var i=0;i<column_q;i++) {
		column_x	+= ceil(random_range(120,250)) + column_width;
		column_y	= room_height + ceil(random_range(30,100));
		column		= instance_create_depth(column_x, column_y, 0, obj_ground);

		with column {
			sprite_index	= column_sprite;
			image_index		= column_index;
			image_speed		= 0
			//solid = true;
		}
	}

	return column_x;


}
