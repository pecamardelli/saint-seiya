function scrCreateRoom() {
	// CREACIÓN DE LA ROOM (ACÁ TE QUIERO VER)

	room_width	= 200000 + ceil(random(20)) * 1000 * ceil(random_range(1,5));
	var camMain = camera_create_view(0,0,1024,768,0,obj_player,-1,-1,512,384);
	view_camera[0] = camMain;
	var ground_spr_width	= sprite_get_width(spr_ground);
	var ground_height		= sprite_get_height(spr_ground);
	var ground_x			= 0;
	var ground_y			= room_height;
	var ground_prob			= 90;
	var empties				= 0;

	var wall = instance_create_depth(ground_x, room_height, 0, obj_ground);

	with wall {
		image_xscale	= 0.1;
		image_yscale	= 10;
		visible			= false;
	};

	for(var i=0;i<=5;i++){
		instance_create_depth(ground_x, room_height, -1000, obj_ground);
		ground_x += ground_spr_width;
	}

	while (ground_x < room_width) {
		randomize();
		if (random(100) <= ground_prob || empties == 1) {
			empties = 0;
			var prob = random(100);
		
			if prob < 15 {
				ground_x = scrDrawWalls(ground_x);
			}
			else if prob < 30 {
				ground_x = scrDrawArchs(ground_x);
			}
			else if prob < 45 {
				ground_x = scrColumns(ground_x);
			}
			else if prob < 60 {
				ground_x = scrDrawStatue(ground_x);
			}
			else if prob < 80 {
				//scrDrawOrnament(ground_x, ground_y - ground_height, false, false);
				ground_x = scrDrawStairs(ground_x, false, false, false, true);
			}
			else if prob < 90 {
				//ground_x = scrDrawTemple(ground_x);
				ground_x = scrColumnsInEmpty(ground_x);
			}
			else {
				instance_create_depth(ground_x, ground_y, -1000, obj_ground);
			}
		}
		else {
			empties++;
		}
		ground_x += ground_spr_width;
	}


}
