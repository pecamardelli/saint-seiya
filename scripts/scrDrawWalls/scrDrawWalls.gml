function scrDrawWalls(argument0) {
	// CREAMOS ALGUNOS OBSTÁCULOS CON BLOQUES DE PIEDRA
	// argument0 = ground_pos --> El primer argumento es la posición X actual del suelo

	randomize();

	//var scale			= random_range(0.65,1.1);
	var scale			= 1;

	var wall;
	var wall_q_x		= ceil(random(4));
	var wall_q_y		= ceil(random(2));
	var wall_sprite		= spr_walls;
	var wall_index		= 0;
	var wall_width		= sprite_get_width(wall_sprite) * scale;
	var wall_height		= sprite_get_height(wall_sprite) * scale;
	var wall_x;
	var wall_y;

	var block;
	var block_sprite	= spr_blocks_60x60;
	var block_width		= sprite_get_width(block_sprite) * scale;
	var block_height	= sprite_get_height(block_sprite) * scale;
	var block_index;
	var block_per_wall	= ceil(wall_height / block_height);
	var block_wall_x	= ceil(wall_width / block_width);
	var block_x			= argument0;
	var block_y			= room_height - sprite_get_height(spr_ground);

	var ornament_base	= floor(random(sprite_get_number(spr_ornament_pedestals_40x60)));

	var ground;
	var ground_pos		= argument0;
	var total_ground	= 0;

	wall_index	= floor(random(sprite_get_number(wall_sprite)));
	block_index	= floor(random(sprite_get_number(block_sprite)));

	wall_x	= argument0 + block_width;
	wall_y	= room_height - sprite_get_height(spr_ground);

	for (var i=0; i<wall_q_x; i++) {
		randomize();
		for(var j=0;j<wall_q_y;j++) {
			wall = instance_create_depth(wall_x, wall_y - wall_height * j, 0, obj_block);

			with wall {
				sprite_index	= wall_sprite;
				image_index		= wall_index;
				image_xscale	= scale;
				image_yscale	= scale;
				image_speed = 0;
				//solid = false;
			};
		
			for (var k=0;k<block_per_wall;k++) {
				block		= instance_create_depth(block_x, block_y - block_height * k - wall_height * j, 0, obj_block);
				block_index	= floor(random(sprite_get_number(block_sprite)));
			
				with block {
					sprite_index	= block_sprite;
					image_index		= block_index;
					image_xscale	= scale;
					image_yscale	= scale;
					image_speed		= 0;
					solid = false;
				};
			}
		}
	
		//scrDrawOrnament(block_x, block_y - block_height * block_per_wall * wall_q_y, ornament_base, false);
	
		wall_x			+= block_width + wall_width;
		block_x			+= block_width + wall_width;
		total_ground	+= block_width + wall_width;
	}

	for (var k=0;k<block_per_wall*wall_q_y;k++) {
		block = instance_create_depth(block_x, block_y - block_width * k, 0, obj_block);
		block_index	= floor(random(sprite_get_number(block_sprite)));

		with block {
			sprite_index	= block_sprite;
			image_index		= block_index;
			image_xscale	= scale;
			image_yscale	= scale;
			image_speed		= 0;
			solid = false;
		}
	}

	//scrDrawOrnament(block_x, block_y - block_height * block_per_wall * wall_q_y, false, false);
	
	total_ground	+= block_width;

	// BLOQUES EN LA PARTE DE ARRIBA


	// CREAMOS EL SUELO DEBAJO DE LOS BLOQUES

	while total_ground > 0 {
		ground = instance_create_depth(ground_pos, room_height, 0, obj_ground);
		ground_pos += sprite_get_width(spr_ground);
		total_ground -= sprite_get_width(spr_ground);
	}

	return ground_pos;



}
