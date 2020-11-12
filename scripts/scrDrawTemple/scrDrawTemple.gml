function scrDrawTemple(argument0) {
	// DIBUJAR UN TEMPLO CON SPRITES ALEATORIOS

	randomize();

	var ground;
	var	ground_sprite	= spr_ground;
	var ground_index	= floor(random(sprite_get_number(ground_sprite)));
	var ground_width	= sprite_get_width(spr_ground);
	var ground_height	= sprite_get_height(spr_ground);
	var ground_x;
	var ground_y;
	var ground_q;

	var temple_top;
	var temple_top_sprite	= spr_temple_tops;
	var temple_top_index	= floor(random(sprite_get_number(temple_top_sprite)));
	var temple_top_width	= sprite_get_width(temple_top_sprite);
	var temple_top_x;
	var temple_top_y;

	var base;
	//var base_sprite		= spr_concrete;
	var base_sprite		= spr_blocks_60x120;
	var base_index;
	var base_width		= sprite_get_width(base_sprite);
	var base_height		= sprite_get_height(base_sprite);
	var base_x			= argument0;
	var base_y			= room_height - ground_height;
	var base_q_x		= temple_top_width / base_width;

	var column;
	var column_sprite	= spr_columns_60x120;
	var column_index	= floor(random(sprite_get_number(base_sprite)));;
	var column_width	= sprite_get_height(column_sprite);
	var column_height	= sprite_get_height(column_sprite);
	var column_q		= ceil(random_range(2, 6));
	var column_dist		= column_width + (temple_top_width - 60 - (column_q * column_width)) / (column_q - 1);
	column_dist	*= 2;
	var column_x;
	var column_y;

	// DIBUJAMOS LA BASE

	for (var i=0;i<base_q_x;i++) {
		base		= instance_create_depth(base_x, base_y, 10, obj_block);
		base_index	= floor(random(sprite_get_number(base_sprite)));
	
		with base {
			sprite_index	= base_sprite;
			image_index		= base_index;
			image_speed		= 0;
			//solid			= true;
		}
	
		base_x	+= base_width;
	}

	// DIBUJAMOS LAS COLUMNAS

	column_y	= room_height - ground_height - base_height;

	for (var j=0;j<column_q;j++) {
		column_x	= 30 + argument0 + column_dist * j;
		column		= instance_create_depth(column_x, column_y, 10, obj_ornament);
	
		with column {
			sprite_index	= column_sprite;
			image_index		= column_index;
			image_speed		= 0;
			solid			= false;
		}
	}

	// DIBUJAMOS EL TECHO

	temple_top_x		= argument0;
	temple_top_y		= room_height - ground_height - base_height - column_height;
	temple_top			= instance_create_depth(temple_top_x, temple_top_y, 10, obj_ornament);
	
	with temple_top {
		sprite_index	= temple_top_sprite;
		image_index		= temple_top_index;
		image_speed		= 0;
		//solid			= false;
	}

	// DIBUJAMOS EL SUELO

	ground_y	= room_height;
	ground_q	= ceil(temple_top_width/ground_width);

	for (var k=0;k<ground_q;k++) {
		ground_x	= argument0 + ground_width * k;
		ground		= instance_create_depth(ground_x, ground_y, 10, obj_ground);
	
		with ground {
			sprite_index	= ground_sprite;
			image_index		= ground_index;
			image_speed		= 0;
			//solid			= true;
		}
	}

	return ground_x;


}
