var screen_width	= view_get_wport(0);
var screen_height	= view_get_hport(0);

var ground;
var ground_spr_width	= sprite_get_width(spr_ground);
var ground_height		= sprite_get_height(spr_ground);
var ground_x			= 0;
var ground_y			= screen_height - sprite_get_height(spr_gui_bkg);
var empties				= 0;

var camMain = camera_create_view(0,0,1024,768,0,-1,-1,-1,512,384);
view_camera[0] = camMain;

for (var i=0;i<2;i++) {
	var wall = instance_create_depth(ground_x + (room_width * i), room_height, 0, obj_ground);

	with wall {
		image_xscale	= 0.1;
		image_yscale	= 15;
		visible			= false;
	};
}

var total_ground = ceil(room_width / ground_spr_width);

for (i=0;i<total_ground;i++) {
	ground = instance_create_depth(ground_spr_width * i, ground_y, 0, obj_ground);
	
	with ground {
		visible	= false;
	};
}

global.talk_pos					= 0;
global.fight_phase				= 0;
obj_control_game.recover_count	= 0;