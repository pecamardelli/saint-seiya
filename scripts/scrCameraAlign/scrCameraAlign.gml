function scrCameraAlign() {

	var cam_height	= camera_get_view_height(view_camera[0]);
	var cam_width	= camera_get_view_width(view_camera[0]);
	var cam_x		= obj_player.x - cam_width/4;

	if cam_x < 0 {
		cam_x = 0;
	}

	if cam_x > room_width - cam_width {
		cam_x = room_width - cam_width;
	}

	var cam_y		= room_height - cam_height;	

	camera_set_view_pos(view_camera[0], cam_x, cam_y);	




}
