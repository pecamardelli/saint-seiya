/// @description Insert description here
// You can write your code in this editor
if !global.game_over {
	if keyboard_check_pressed(vk_right){
		if x == seiya_xpos && y == seiya_ypos {
			if	ds_map_find_value(global.character_vars[? "ikki"], "available") &&
				ds_map_find_value(global.character_vars[? "ikki"], "enabled") {
				x = ikki_xpos;
				y = ikki_ypos;
				global.character_selected = "ikki";
			}
			else if	ds_map_find_value(global.character_vars[? "shiryu"], "available") &&
				ds_map_find_value(global.character_vars[? "shiryu"], "enabled") {
				x = shiryu_xpos;
				y = shiryu_ypos;
				global.character_selected = "shiryu";
			}
			else {
				global.character_selected = "seiya";
			}
		}
		else if x == ikki_xpos && y == ikki_ypos {
			if	ds_map_find_value(global.character_vars[? "shiryu"], "available") &&
				ds_map_find_value(global.character_vars[? "shiryu"], "enabled") {
				x = shiryu_xpos;
				y = shiryu_ypos;
				global.character_selected = "shiryu";
			}
			else {
				global.character_selected = "ikki";
			}
		}
	
		if x == hyoga_xpos && y == hyoga_ypos {
			if	ds_map_find_value(global.character_vars[? "shun"], "available") &&
				ds_map_find_value(global.character_vars[? "shun"], "enabled") {
				x = shun_xpos;
				y = shun_ypos;
				global.character_selected = "shun";
			}
			else {
				global.character_selected = "hyoga";
			}
		}
	}

	if keyboard_check_pressed(vk_left){
		if x == shiryu_xpos && y == shiryu_ypos {
			if	ds_map_find_value(global.character_vars[? "ikki"], "available") &&
				ds_map_find_value(global.character_vars[? "ikki"], "enabled") {
				x = ikki_xpos;
				y = ikki_ypos;
				global.character_selected = "ikki";
			}
			else if	ds_map_find_value(global.character_vars[? "seiya"], "available") &&
				ds_map_find_value(global.character_vars[? "seiya"], "enabled") {
				x = seiya_xpos;
				y = seiya_ypos;
				global.character_selected = "seiya";
			}
			else {
				global.character_selected = "shiryu";
			}		
		}
		else if x == ikki_xpos && y == ikki_ypos {
			if	ds_map_find_value(global.character_vars[? "seiya"], "available") &&
				ds_map_find_value(global.character_vars[? "seiya"], "enabled") {
				x = seiya_xpos;
				y = seiya_ypos;
				global.character_selected = "seiya";
			}
			else {
				global.character_selected = "ikki";
			}
		}
	
		if x == shun_xpos && y == shun_ypos {
			if	ds_map_find_value(global.character_vars[? "hyoga"], "available") &&
				ds_map_find_value(global.character_vars[? "hyoga"], "enabled") {
				x = hyoga_xpos;
				y = hyoga_ypos;
				global.character_selected = "hyoga";
			}
			else {
				global.character_selected = "shun";
			}
		}
	}

	if keyboard_check_pressed(vk_down){
		if x == seiya_xpos && y == seiya_ypos {
			if	ds_map_find_value(global.character_vars[? "hyoga"], "available") &&
				ds_map_find_value(global.character_vars[? "hyoga"], "enabled") {
				x = hyoga_xpos;
				y = hyoga_ypos;
				global.character_selected = "hyoga";
			}
			else if	ds_map_find_value(global.character_vars[? "shun"], "available") &&
				ds_map_find_value(global.character_vars[? "shun"], "enabled") {
				x = shun_xpos;
				y = shun_ypos;
				global.character_selected = "shun";
			}
			else {
				global.character_selected = "seiya";
			}
		}
	
		if x == shiryu_xpos && y == shiryu_ypos {
			if	ds_map_find_value(global.character_vars[? "shun"], "available") &&
				ds_map_find_value(global.character_vars[? "shun"], "enabled") {
				x = shun_xpos;
				y = shun_ypos;
				global.character_selected = "shun";
			}
			else if	ds_map_find_value(global.character_vars[? "hyoga"], "available") &&
				ds_map_find_value(global.character_vars[? "hyoga"], "enabled") {
				x = hyoga_xpos;
				y = hyoga_ypos;
				global.character_selected = "hyoga";
			}
			else {
				global.character_selected = "shiryu";
			}
		}
	}

	if keyboard_check_pressed(vk_up){
		if x == hyoga_xpos && y == hyoga_ypos {
			if	ds_map_find_value(global.character_vars[? "seiya"], "available") &&
				ds_map_find_value(global.character_vars[? "seiya"], "enabled") {
				x = seiya_xpos;
				y = seiya_ypos;
				global.character_selected = "seiya";
			}
			else if	ds_map_find_value(global.character_vars[? "ikki"], "available") &&
				ds_map_find_value(global.character_vars[? "ikki"], "enabled") {
				x = ikki_xpos;
				y = ikki_ypos;
				global.character_selected = "ikki";
			}
			else if	ds_map_find_value(global.character_vars[? "shiryu"], "available") &&
				ds_map_find_value(global.character_vars[? "shiryu"], "enabled") {
				x = shiryu_xpos;
				y = shiryu_ypos;
				global.character_selected = "shiryu";
			}
			else {
				global.character_selected = "hyoga";
			}
		}
	
		if x == shun_xpos && y == shun_ypos {
			if	ds_map_find_value(global.character_vars[? "shiryu"], "available") &&
				ds_map_find_value(global.character_vars[? "shiryu"], "enabled") {
				x = shiryu_xpos;
				y = shiryu_ypos;
				global.character_selected = "shiryu";
			}
			else if	ds_map_find_value(global.character_vars[? "ikki"], "available") &&
				ds_map_find_value(global.character_vars[? "ikki"], "enabled") {
				x = ikki_xpos;
				y = ikki_ypos;
				global.character_selected = "ikki";
			}
			else if	ds_map_find_value(global.character_vars[? "seiya"], "available") &&
				ds_map_find_value(global.character_vars[? "seiya"], "enabled") {
				x = seiya_xpos;
				y = seiya_ypos;
				global.character_selected = "seiya";
			}
			else {
				global.character_selected = "shun";
			}
		}
	}
}

if keyboard_check_pressed(vk_enter){
	if global.game_over {
		game_restart();
	}
	else {
		room_goto(rm_level_room);
		//room_goto(rm_to_aries);
	}
}
