/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font0);

if !global.game_over {
	draw_text(room_width/2, room_height-50, "SELECCION DEL PERSONAJE");
	draw_self();
	/*
	if global.seiya_vars[? "enabled"] {
		draw_sprite_ext(spr_seiya_char, 0, sprite_get_width(spr_seiya_char), sprite_get_height(spr_seiya_char),1,1,0,c_white,1);
	}
	else {
		draw_sprite_ext(spr_seiya_char, 0, sprite_get_width(spr_seiya_char), sprite_get_height(spr_seiya_char),1,1,0,c_gray,0.8);
	}
	
	draw_text(sprite_get_width(spr_seiya_char)*1.5, sprite_get_height(spr_seiya_char)*2+20, "SEIYA");
	
	if global.ikki_vars[? "enabled"] {
		draw_sprite_ext(spr_ikki_char, 0, room_width/2 - sprite_get_width(spr_ikki_char)/2, sprite_get_height(spr_ikki_char),1,1,0,c_white,1);
	}
	else {
		draw_sprite_ext(spr_ikki_char, 0, room_width/2 - sprite_get_width(spr_ikki_char)/2, sprite_get_height(spr_ikki_char),1,1,0,c_gray,0.8);
	}
	
	draw_text(room_width/2, sprite_get_height(spr_ikki_char)*2+20, "IKKI");
	
	if global.shiryu_vars[? "enabled"] {
		draw_sprite_ext(spr_shiryu_char, 0, room_width-sprite_get_width(spr_shiryu_char)*2, sprite_get_height(spr_shiryu_char),1,1,0,c_white,1);
	}
	else {
		draw_sprite_ext(spr_shiryu_char, 0, room_width-sprite_get_width(spr_shiryu_char)*2, sprite_get_height(spr_shiryu_char),1,1,0,c_gray,0.8);
	}
	
	draw_text(room_width-sprite_get_width(spr_shiryu_char)*1.5, sprite_get_height(spr_shiryu_char)*2+20, "SHIRYU");
	
	if global.hyoga_vars[? "enabled"] {
		draw_sprite_ext(spr_hyoga_char, 0, sprite_get_width(spr_hyoga_char), room_height-sprite_get_height(spr_hyoga_char)*2-20,1,1,0,c_white,1);
	}
	else {
		draw_sprite_ext(spr_hyoga_char, 0, sprite_get_width(spr_hyoga_char), room_height-sprite_get_height(spr_hyoga_char)*2-20,1,1,0,c_gray,0.8);
	}
	
	draw_text(sprite_get_width(spr_seiya_char)*1.5, room_height-sprite_get_height(spr_hyoga_char), "HYOGA");
	
	if global.shun_vars[? "enabled"] {
		draw_sprite_ext(spr_shun_char, 0, room_width-sprite_get_width(spr_hyoga_char)*2, room_height-sprite_get_height(spr_shun_char)*2-20,1,1,0,c_white,1);
	}
	else {
		draw_sprite_ext(spr_shun_char, 0, room_width-sprite_get_width(spr_hyoga_char)*2, room_height-sprite_get_height(spr_shun_char)*2-20,1,1,0,c_gray,0.8);
	}
	
	draw_text(room_width-sprite_get_width(spr_shiryu_char)*1.5, room_height-sprite_get_height(spr_shun_char), "SHUN");
	*/
	if  ds_map_find_value(global.character_vars[? "seiya"], "available") &&
		ds_map_find_value(global.character_vars[? "seiya"], "enabled") {
		draw_sprite_ext(spr_seiya_char, 0, grid_x_pos[0], grid_y_pos[0], 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(spr_seiya_char, 0, grid_x_pos[0], grid_y_pos[0], 1, 1, 0, c_gray, 0.8);
	}
	
	draw_text(grid_x_pos[0], grid_y_pos[0] + sprite_get_height(spr_seiya_char)/2 + 20, "SEIYA");
	
	if ds_map_find_value(global.character_vars[? "ikki"], "available") {
		if ds_map_find_value(global.character_vars[? "ikki"], "enabled") {
			draw_sprite_ext(spr_ikki_char, 0,  grid_x_pos[1], grid_y_pos[0], 1, 1, 0, c_white, 1);
		}
		else {
			draw_sprite_ext(spr_ikki_char, 0, grid_x_pos[1], grid_y_pos[0], 1, 1, 0, c_gray, 0.8);
		}
	
		draw_text(grid_x_pos[1], grid_y_pos[0] + sprite_get_height(spr_ikki_char)/2 + 20, "IKKI");
	}
	
	if ds_map_find_value(global.character_vars[? "shiryu"], "available") &&
		ds_map_find_value(global.character_vars[? "shiryu"], "enabled") {
		draw_sprite_ext(spr_shiryu_char, 0, grid_x_pos[2], grid_y_pos[0], 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(spr_shiryu_char, 0, grid_x_pos[2], grid_y_pos[0], 1, 1, 0, c_gray, 0.8);
	}
	
	draw_text(grid_x_pos[2], grid_y_pos[0] + sprite_get_height(spr_shiryu_char)/2 + 20, "SHIRYU");
	
	if ds_map_find_value(global.character_vars[? "hyoga"], "available") &&
		ds_map_find_value(global.character_vars[? "hyoga"], "enabled") {
		draw_sprite_ext(spr_hyoga_char, 0, grid_x_pos[0], grid_y_pos[1], 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(spr_hyoga_char, 0, grid_x_pos[0], grid_y_pos[1], 1, 1, 0, c_gray, 0.8);
	}
	
	draw_text(grid_x_pos[0], grid_y_pos[1] + sprite_get_height(spr_hyoga_char)/2 + 20, "HYOGA");
	
	if ds_map_find_value(global.character_vars[? "shun"], "available") &&
		ds_map_find_value(global.character_vars[? "shun"], "enabled") {
		draw_sprite_ext(spr_shun_char, 0, grid_x_pos[2], grid_y_pos[1], 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(spr_shun_char, 0, grid_x_pos[2], grid_y_pos[1], 1, 1, 0, c_gray, 0.8);
	}
	
	draw_text(grid_x_pos[2], grid_y_pos[1] + sprite_get_height(spr_shun_char)/2 + 20, "SHUN");
	
	//draw_sprite(char_sel_vars[? "arrow_sprite"], 0, char_sel_vars[? "arrow_x"], char_sel_vars[? "arrow_y"]);
}
else {
	draw_text(screen_width/2, screen_height/2, "GAME OVER!");
}