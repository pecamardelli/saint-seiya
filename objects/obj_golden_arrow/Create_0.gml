/// @description Insert description here
// You can write your code in this editor

screen_width	= view_get_wport(0);
screen_height	= view_get_hport(0);
char_width		= sprite_get_width(spr_seiya_char);
char_height		= sprite_get_height(spr_seiya_char);

grid_x_q	= 3;
grid_y_q	= 2;
grid_x_dist	= screen_width / (grid_x_q + 1);
grid_y_dist	= screen_height / (grid_y_q + 1);

for (var i=0; i<grid_x_q; i++) {
	grid_x_pos[i]	= grid_x_dist * (i + 1);
}

for (var j=0; j<grid_y_q; j++) {
	grid_y_pos[j]	= grid_y_dist * (j + 1);
}

arrow_sprite	= spr_golden_arrow;
arrow_width		= sprite_get_width(arrow_sprite);
arrow_height	= sprite_get_height(arrow_sprite);
arrow_y_offset	= 5;
arrow_x			= 0;
arrow_y			= 0;

seiya_xpos		= grid_x_pos[0];
seiya_ypos		= grid_y_pos[0] - sprite_get_height(spr_seiya_char)/2 - arrow_y_offset;

ikki_xpos		= grid_x_pos[1];
ikki_ypos		= grid_y_pos[0] - sprite_get_height(spr_ikki_char)/2 - arrow_y_offset;

shiryu_xpos		= grid_x_pos[2];
shiryu_ypos		= grid_y_pos[0] - sprite_get_height(spr_shiryu_char)/2 - arrow_y_offset;

hyoga_xpos		= grid_x_pos[0];
hyoga_ypos		= grid_y_pos[1] - sprite_get_height(spr_hyoga_char)/2 - arrow_y_offset;

shun_xpos		= grid_x_pos[2];
shun_ypos		= grid_y_pos[1] - sprite_get_height(spr_shun_char)/2 - arrow_y_offset;

/*
seiya_xpos		= sprite_get_width(spr_seiya_char) * 1.5 - arrow_width / 2;
seiya_ypos		= sprite_get_height(spr_seiya_char) - arrow_height - arrow_y_offset;

ikki_xpos		= room_width/2 - arrow_width/2;
ikki_ypos		= sprite_get_height(spr_ikki_char) - arrow_height - arrow_y_offset;

shiryu_xpos		= room_width - sprite_get_width(spr_shiryu_char) * 1.5 - arrow_width/2;
shiryu_ypos		= sprite_get_height(spr_shiryu_char) - arrow_height - arrow_y_offset;

hyoga_xpos		= sprite_get_width(spr_hyoga_char) * 1.5 - arrow_width/2;
hyoga_ypos		= room_height - sprite_get_height(spr_hyoga_char) * 2 - arrow_height - arrow_y_offset - 20;

shun_xpos		= room_width - sprite_get_width(spr_shun_char) * 1.5 - arrow_width/2;
shun_ypos		= room_height - sprite_get_height(spr_shun_char) * 2 - arrow_height - arrow_y_offset - 20;
*/

if	ds_map_find_value(global.character_vars[? "seiya"], "available") &&
	ds_map_find_value(global.character_vars[? "seiya"], "enabled") {
	x	= seiya_xpos;
	y	= seiya_ypos;
	global.character_selected	= "seiya";
}
else if	ds_map_find_value(global.character_vars[? "ikki"], "available") &&
		ds_map_find_value(global.character_vars[? "ikki"], "enabled") {
	x	= ikki_xpos;
	y	= ikki_ypos;	
	global.character_selected	= "ikki";
}
else if ds_map_find_value(global.character_vars[? "shiryu"], "available") &&
		ds_map_find_value(global.character_vars[? "shiryu"], "enabled") {
	x	= shiryu_xpos;
	y	= shiryu_ypos;
	global.character_selected	= "shiryu";
}
else if ds_map_find_value(global.character_vars[? "hyoga"], "available") &&
		ds_map_find_value(global.character_vars[? "hyoga"], "enabled") {
	x	= hyoga_xpos;
	y	= hyoga_ypos;
	global.character_selected	= "hyoga";
}
else if ds_map_find_value(global.character_vars[? "shun"], "available") &&
		ds_map_find_value(global.character_vars[? "shun"], "enabled") {
	x	= shun_xpos;
	y	= shun_ypos;
	global.character_selected	= "shun";
}
else {
	global.game_over	= true;	
}
