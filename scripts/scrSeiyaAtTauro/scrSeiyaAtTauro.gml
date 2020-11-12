function scrSeiyaAtTauro() {
	var obj_x	= camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;

	image = instance_create_depth(obj_x, room_height, 0, obj_generic);

	with image {
		timeline_index		= tl_seiya_at_tauro;
		timeline_position	= 0;
		timeline_running	= true;
	};


}
