function scrColumns(argument0) {
	// CREAMOS UN NÚMERO ALEATORIO DE COLUMNAS
	// argument0 = ground_pos --> El primer argumento es la posición X actual del suelo

	var column;
	var column_dist		= 4;
	var column_width	= sprite_get_width(spr_columns);
	var column_x		= argument0;
	var column_y		= room_height - sprite_get_height(spr_ground);
	var column_q		= ceil(random_range(1, 4));
	var column_sprite	= spr_columns;
	var ground;
	var ground_pos		= argument0;
	var total_ground	= 0;

	randomize();
	var column_index	= floor(random(sprite_get_number(column_sprite)));

	for (var i=0; i<column_q; i++) {
		column = instance_create_depth(column_x, column_y, 0, obj_block);

		with column {
			sprite_index	= column_sprite;
			image_index		= column_index;
			image_speed		= 0
			//solid = false;
		}
		column_x		+= column_dist * column_width;
		total_ground	+= column_dist * column_width;
	}

	// CREAMOS LAS TILES SOBRE LAS COLUMNAS... O NO

	var tile;
	var tile_sprite	= spr_tiles;
	var tile_index	= floor(random(sprite_get_number(tile_sprite)));
	var tile_width	= sprite_get_width(spr_tiles);
	var tile_x		= argument0;
	var tile_y		= room_height - sprite_get_height(spr_ground) - sprite_get_height(spr_columns);
	var tile_q		= column_dist * (column_q - 1) + 1;

	if random(100) < 30 {
		for (i=0;i<tile_q;i++){
			tile = instance_create_depth(tile_x, tile_y, 0, obj_block);

			with tile {
				sprite_index	= tile_sprite;
				image_index		= tile_index;
				image_speed		= 0;
				//solid = true;
			}
		
			tile_x += tile_width;
		}
	}

	// CREAMOS EL SUELO DEBAJO DE LAS COLUMNAS

	while total_ground > 0 {
		ground = instance_create_depth(ground_pos, room_height, 0, obj_ground);
		ground_pos += sprite_get_width(spr_ground);
		total_ground -= sprite_get_width(spr_ground);
	}

	return ground_pos;


}
