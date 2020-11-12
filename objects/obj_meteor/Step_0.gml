/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if obj_player.x < view_wport[0]/2 {
	obj_player.player_vars[? "meteor_life"] = view_wport[0] - obj_player.x;
}
else {
	obj_player.player_vars[? "meteor_life"] = view_wport[0]/2;
}

if x > obj_player.x  + obj_player.player_vars[? "meteor_life"] || x < obj_player.x - obj_player.player_vars[? "meteor_life"] {
	instance_destroy();
}

