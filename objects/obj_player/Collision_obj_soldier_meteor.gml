/// @description Insert description here
// You can write your code in this editor
cosmo_damage = life_damage = other.damage;

/*
if player_vars[? "cosmo"] > dam {
	//player_vars[? "cosmo"]	-= dam;
	cosmo_damage = dam;
}
else {
	player_vars[? "cosmo"]		= 0;
	player_vars[? "enabled"]	= false;
	room_goto(rm_character_select);
}
	
if player_vars[? "life"] > dam {
	player_vars[? "life"]	-= dam;
}
else {
	player_vars[? "life"]		= 0;
	player_vars[? "enabled"]	= false;
	ds_map_replace_map(global.character_vars, global.character_selected, player_vars);
	room_goto(rm_character_select);
}