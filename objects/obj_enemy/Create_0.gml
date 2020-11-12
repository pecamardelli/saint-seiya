/// @description Creación del enemigo

//enemy_sprites	= scrGetEnemySprites(global.current_house_number);
//enemy_vars		= scrGetEnemyVars(global.current_house_number);

enemy_sprites  = ds_map_create();
enemy_vars		= ds_map_create();

ds_map_copy(enemy_vars, global.character_vars[? global.enemy_names[global.current_house_number]]);
ds_map_copy(enemy_sprites, global.character_sprites[? global.enemy_names[global.current_house_number]]);

sprite_index	= enemy_sprites[? "spr_idle"];
scale			= 1;
image_xscale	= scale;
image_yscale	= scale;
image_speed		= 1;
under_attack	= false;
attacking		= false;
move_enabled	= true;

animation_stop_at_end	= false;

x = room_width * 2/3 + random_range(-1,1) * 200;

#region VARIABLES DE MOVIMIENTOS
intVY	= 0;
intVX	= 0;
intMove = 0;
#endregion

#region VARIABLES DE ACCIONES
follow_player	= false;
dist			= random_range(500, 600);
#endregion