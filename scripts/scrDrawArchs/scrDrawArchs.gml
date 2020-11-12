function scrDrawArchs(argument0) {
	// CREAMOS UN NÚMERO ALEATORIO DE ARCADAS
	// argument0 = ground_pos --> El primer argumento es la posición X actual del suelo

	randomize();

	var arch;
	var arch_sprite	= spr_archs;
	var arch_index	= floor(random(sprite_get_number(arch_sprite)));
	var arch_width	= sprite_get_width(arch_sprite);
	var arch_height	= sprite_get_height(arch_sprite);
	var arch_x;
	var arch_y;
	var arch_q		= ceil(random(4)) + 1;

	var ground;
	var	ground_sprite	= spr_ground;
	var ground_index	= floor(random(sprite_get_number(ground_sprite)));
	var ground_width	= sprite_get_width(spr_ground);
	var ground_height	= sprite_get_height(spr_ground);
	var ground_x		= argument0;
	var ground_y;
	var ground_q;
	var total_ground	= 0;

	var block;

	if random(100) < 50 {
		var block_sprite	= spr_blocks_40x40;
	}
	else {
		var block_sprite	= spr_blocks_60x60;
	}

	var block_index		= floor(random(sprite_get_number(block_sprite)));
	var block_width		= sprite_get_width(block_sprite);
	var block_height	= sprite_get_height(block_sprite);
	var block_wall_y	= ceil(arch_height / block_height);
	var block_x;
	var block_y;

	// PRIMERA COLUMNA DE BLOQUES
	block_x	= ground_x;

	for (var i=0;i<block_wall_y;i++) {
		block_y = room_height - ground_height - block_height * i;
	
		block = instance_create_depth(block_x, block_y, -2000, obj_block);

		with block {
			sprite_index	= block_sprite;
			image_index		= block_index;
			image_speed		= 0;
			//solid = false;
		};	
	}

	total_ground	+= block_width;

	// DIBUJAMOS LAS ARCADAS

	arch_y	= room_height - ground_height;

	for (var j=0;j<arch_q;j++) {
		arch_x	= ground_x + block_width + arch_width * j;
		arch = instance_create_depth(arch_x, arch_y, -2000, obj_block);

		with arch {
			sprite_index	= arch_sprite;
			image_index		= arch_index;
			image_speed		= 0
			//solid = false;
		};
	
		total_ground += arch_width;
	}

	// DIBUJAMOS LA COLUMNA DE BLOQUES FINAL

	block_x	= arch_x + arch_width;

	for (var k=0;k<block_wall_y;k++) {
		block_y = room_height - ground_height - block_height * k;
	
		block = instance_create_depth(block_x, block_y, -2000, obj_block);

		with block {
			sprite_index	= block_sprite;
			image_index		= block_index;
			image_speed		= 0;
			//solid = false;
		};	
	}

	// CREAMOS EL SUELO DEBAJO DE LAS ARCADAS

	while total_ground > 0 {
		ground = instance_create_depth(ground_x, room_height, 0, obj_ground);
		ground_x		+= ground_width;
		total_ground	-= ground_width;
	}

	return ground_x;


}
