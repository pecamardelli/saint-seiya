/// @description Dibujar la info en pantalla

// Dibujamos el fondo
draw_sprite_ext(gui_bkg_sprite, 0, gui_bkg_x, gui_bkg_y, gui_bkg_xscale, gui_bkg_yscale, 0, c_white, 1);

// Dibujamos el avatar del jugador
draw_sprite_ext(char_sprite, 0, char_x, char_y, char_scale, char_scale, 0, c_white, 1);

// Dibujamos el logo del templo actual
draw_sprite_ext(zodiac_sprite, zodiac_index, zodiac_x, zodiac_y, zodiac_scale, zodiac_scale, 0, c_white, 1);

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