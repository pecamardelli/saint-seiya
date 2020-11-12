/// @description Comerse un bife
// Puede escribir su código en este editor

var meteor_damage	= ceil(obj_player.player_vars[? "cosmo"] * obj_player.player_vars[? "meteor_damage_coef"]);

if player_vars[? "life"] > meteor_damage {
	player_vars[? "life"] -= meteor_damage;
	intVX += meteor_damage * other.image_xscale / 5;
	sprite_index	= player_sprites[? "spr_fall"];
	y -= 5;
	image_index		= 0;
	image_speed		= 0;
}
else {
	player_vars[? "life"] = 0;
	global.sevensenses += player_vars[? "sevensenses"];
	player_vars[? "sevensenses"] = 0;
	sprite_index	= player_sprites[? "spr_fall"];
	image_speed		= 1;
}
