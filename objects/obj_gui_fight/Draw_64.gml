/// @description Dibujar la info en pantalla

#region DIBUJAR GUI DEL JUGADOR

// Dibujamos el fondo
draw_sprite_ext(gui_bkg_sprite, 0, gui_bkg_x, gui_bkg_y, gui_bkg_xscale, gui_bkg_yscale, 0, c_white, 1);

// Dibujamos el avatar del jugador
draw_sprite_ext(char_sprite, 0, char_x, char_y, char_scale, char_scale, 0, c_white, 1);

switch player_gui_showing {
	case "bars":
		draw_set_color(c_black);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_right);
		draw_set_font(font0);

		draw_text(cosmo_label_x, cosmo_label_y, cosmo_label_text);
		draw_text(life_label_x, life_label_y, life_label_text);
		draw_text(sevensenses_label_x, sevensenses_label_y, sevensenses_label_text);

		cosmo_number		= obj_player.player_vars[? "cosmo"];
		cosmo_number_text	= string(cosmo_number);
		life_number			= obj_player.player_vars[? "life"];
		life_number_text	= string(life_number);

		draw_text(cosmo_number_x,	cosmo_number_y, cosmo_number_text);
		draw_text(life_number_x,	life_number_y,	life_number_text);
		draw_text(sevensenses_number_x, sevensenses_number_y, string(global.sevensenses));

		cosmo_bar_len		= obj_player.player_vars[? "max_cosmo"] * gui_bar_scale;
		life_bar_len		= obj_player.player_vars[? "max_life"] * gui_bar_scale;
		sevensenses_bar_len	= gui_bar_max_len;

		draw_rectangle_color(cosmo_bar_x, cosmo_bar_y, cosmo_bar_x + cosmo_bar_len, cosmo_bar_y + cosmo_bar_height, c_black, c_black, c_black, c_black, false);
		draw_rectangle_color(life_bar_x, life_bar_y, life_bar_x + life_bar_len, life_bar_y + life_bar_height, c_black, c_black, c_black, c_black, false);
		draw_rectangle_color(sevensenses_bar_x, sevensenses_bar_y, sevensenses_bar_x + sevensenses_bar_len, sevensenses_bar_y + sevensenses_bar_height, c_black, c_black, c_black, c_black, false);

		draw_sprite_ext(cosmo_bar_sprite, cosmo_bar_index, cosmo_bar_x, cosmo_bar_y, (cosmo_number * gui_bar_scale) + 1, 1, 0, c_white, 1);
		draw_sprite_ext(life_bar_sprite, life_bar_index, life_bar_x, life_bar_y, (life_number * gui_bar_scale) + 1, 1, 0, c_white, 1);
		draw_sprite_ext(sevensenses_bar_sprite, sevensenses_bar_index, sevensenses_bar_x, sevensenses_bar_y, (global.sevensenses / 10 * gui_bar_scale) + 1, 1, 0, c_white, 1);
		break;
	case "dialogbox":
		draw_sprite_ext(box_sprite, 0, player_dialogbox_x, player_dialogbox_y, player_dialogbox_xscale, player_dialogbox_yscale, 0, c_white, 1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_black);
		draw_text_ext(player_dialogbox_x + 20, player_dialogbox_y + 10, player_talk, -1, (box_width * player_dialogbox_xscale) - 40);
		break;
	case "menu":
		draw_sprite_ext(box_sprite, 0, player_dialogbox_x, player_dialogbox_y, player_dialogbox_xscale, player_dialogbox_yscale, 0, c_white, 1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		var items;
		items[0]	= "F1 -> Atacar";
		items[1]	= "F2 -> Hablar";
		items[2]	= "F3 -> Barras";
		
		for (var i=0;i<array_length_1d(items);i++) {
			draw_text(player_dialogbox_x + box_width/(array_length_1d(items)+1)*(i+1), player_dialogbox_y + box_height/2, items[i]);
		}
		
		break;
	case "attacks":
		draw_sprite_ext(box_sprite, 0, player_dialogbox_x, player_dialogbox_y, player_dialogbox_xscale, player_dialogbox_yscale, 0, c_white, 1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		draw_set_font(font1);
		
		var i		= 1;
		var k		= 0;
		var enabled	= "";
		var name	= "";
		
		while true {
			enabled	= ds_map_find_value(obj_player.player_vars, "attack" + string(i) + "_enabled");
			
			if !is_undefined(enabled) {
				if enabled {
					name	= ds_map_find_value(obj_player.player_vars, "attack" + string(i) + "_name");
					draw_text(player_dialogbox_x + 30 + box_width/2*k, player_dialogbox_y + box_height/3*(i-k*2) - 5, "F" + string(i) + " -> " + name);
				}
				
				if i mod 2 == 0 {
					k++;
				}
				
				i++;
			}
			else {
				break;
			}
			
		}
		break;
}
#endregion

#region DIBUJAR GUI DEL ENEMIGO

// Dibujamos el fondo
draw_sprite_ext(enemy_gui_bkg_sprite, 0, enemy_gui_bkg_x, enemy_gui_bkg_y, enemy_gui_bkg_xscale, enemy_gui_bkg_yscale, 0, c_white, 1);

// Dibujamos el avatar del jugador
draw_sprite_ext(enemy_sprite, 0, enemy_x, enemy_y, enemy_scale, enemy_scale, 0, c_white, 1);

// Dibujamos el logo del templo actual
draw_sprite_ext(zodiac_sprite, zodiac_index, zodiac_x, zodiac_y, zodiac_scale, zodiac_scale, 0, c_white, 1);

switch enemy_gui_showing {
	case "bars":
		draw_set_color(c_black);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_right);
		draw_set_font(font0);

		draw_text(enemy_cosmo_label_x, enemy_cosmo_label_y, enemy_cosmo_label_text);
		draw_text(enemy_life_label_x, enemy_life_label_y, enemy_life_label_text);

		enemy_cosmo_number		= obj_enemy.enemy_vars[? "cosmo"];
		enemy_cosmo_number_text	= string(enemy_cosmo_number);
		enemy_life_number		= obj_enemy.enemy_vars[? "life"];
		enemy_life_number_text	= string(enemy_life_number);

		draw_text(enemy_cosmo_number_x,	enemy_cosmo_number_y, enemy_cosmo_number_text);
		draw_text(enemy_life_number_x,	enemy_life_number_y,	enemy_life_number_text);

		enemy_cosmo_bar_len		= obj_enemy.enemy_vars[? "max_cosmo"] * gui_bar_scale;
		enemy_life_bar_len		= obj_enemy.enemy_vars[? "max_life"] * gui_bar_scale;

		draw_rectangle_color(enemy_cosmo_bar_x, enemy_cosmo_bar_y, enemy_cosmo_bar_x + enemy_cosmo_bar_len, enemy_cosmo_bar_y + enemy_cosmo_bar_height, c_black, c_black, c_black, c_black, false);
		draw_rectangle_color(enemy_life_bar_x, enemy_life_bar_y, enemy_life_bar_x + enemy_life_bar_len, enemy_life_bar_y + enemy_life_bar_height, c_black, c_black, c_black, c_black, false);

		draw_sprite_ext(enemy_cosmo_bar_sprite, enemy_cosmo_bar_index, enemy_cosmo_bar_x, enemy_cosmo_bar_y, (enemy_cosmo_number * gui_bar_scale) + 1, 1, 0, c_white, 1);
		draw_sprite_ext(enemy_life_bar_sprite, enemy_life_bar_index, enemy_life_bar_x, enemy_life_bar_y, (enemy_life_number * gui_bar_scale) + 1, 1, 0, c_white, 1);
		break;
	case "dialogbox":
		draw_sprite_ext(box_sprite, 0, enemy_dialogbox_x, enemy_dialogbox_y, enemy_dialogbox_xscale, enemy_dialogbox_yscale, 0, c_white, 1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_black);
		draw_text_ext(enemy_dialogbox_x + 20, enemy_dialogbox_y + 10, enemy_talk, -1, (box_width * enemy_dialogbox_xscale) - 40);
		break;
}
#endregion