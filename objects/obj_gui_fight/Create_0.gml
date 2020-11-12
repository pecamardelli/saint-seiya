/// @description Creación de la GUI

screen_width	= view_get_wport(0);
screen_height	= view_get_hport(0);

current_action	= "idle";

#region DIALOGBOX
box_sprite		= spr_gui_dialogbox;
box_width		= sprite_get_width(box_sprite);
box_height		= sprite_get_height(box_sprite);
#endregion

#region GUI DEL JUGADOR
gui_bkg_sprite	= spr_gui_bkg;
gui_bkg_width	= sprite_get_width(gui_bkg_sprite);
gui_bkg_height	= sprite_get_height(gui_bkg_sprite);
gui_bkg_x		= 0;
gui_bkg_y		= screen_height - gui_bkg_height;
gui_bkg_xscale	= screen_width / gui_bkg_width;
gui_bkg_yscale	= 1;

char_sprite		= obj_player.player_sprites[? "spr_char"];
char_width		= sprite_get_width(char_sprite);
char_height		= sprite_get_height(char_sprite);
char_scale		= (gui_bkg_height - 10) / char_height;
char_x			= gui_bkg_x + char_width/2;
char_y			= gui_bkg_y + char_height/2;

player_dialogbox_xscale	= (screen_width - char_width*2 - 10) / box_width;
player_dialogbox_yscale	= (gui_bkg_height - 10) / box_height;
player_dialogbox_x		= char_x + char_width/2 + 5;
player_dialogbox_y		= gui_bkg_y + 5;

sevensenses_label_text		= "SEVENSENSES";
sevensenses_label_width		= string_width(sevensenses_label_text);
sevensenses_label_height	= string_height(sevensenses_label_text);
sevensenses_label_x			= char_width * char_scale + sevensenses_label_width + 20;

cosmo_label_text	= "COSMO";
cosmo_label_width	= string_width(cosmo_label_text);
cosmo_label_height	= string_height(cosmo_label_text);
cosmo_label_x		= sevensenses_label_x;

life_label_text		= "VIDA";
life_label_width	= string_width(life_label_text);
life_label_height	= string_height(life_label_text);
life_label_x		= sevensenses_label_x;

label_y_separation	= (char_height * char_scale - cosmo_label_height - life_label_height - sevensenses_label_height) / 4;

cosmo_label_y		= gui_bkg_y + label_y_separation + cosmo_label_height / 2 + 5;
life_label_y		= cosmo_label_y + label_y_separation + cosmo_label_height;
sevensenses_label_y	= life_label_y + label_y_separation + life_label_height;

cosmo_number_x		= cosmo_label_x + string_width("9999") + 10;
cosmo_number_y		= cosmo_label_y;

life_number_x		= cosmo_number_x;
life_number_y		= life_label_y;

sevensenses_number_x	= cosmo_number_x;
sevensenses_number_y	= sevensenses_label_y;

gui_bar_sprite		= spr_gui_bar;
gui_bar_width		= sprite_get_width(gui_bar_sprite);
gui_bar_height		= sprite_get_height(gui_bar_sprite);

cosmo_bar_sprite	= spr_gui_bar;
cosmo_bar_index		= 0;
cosmo_bar_height	= sprite_get_height(cosmo_bar_sprite);
cosmo_bar_x			= cosmo_number_x + 10;
cosmo_bar_y			= cosmo_number_y - cosmo_bar_height / 2;

life_bar_sprite		= spr_gui_bar;
life_bar_index		= 0;
life_bar_height		= sprite_get_height(life_bar_sprite);
life_bar_x			= life_number_x + 10;
life_bar_y			= life_number_y - life_bar_height / 2;

sevensenses_bar_sprite	= spr_gui_bar;
sevensenses_bar_index	= 1;
sevensenses_bar_height	= sprite_get_height(sevensenses_bar_sprite);
sevensenses_bar_x		= sevensenses_number_x + 10;
sevensenses_bar_y		= sevensenses_number_y - sevensenses_bar_height / 2;

player_dialog_pos		= 0;
#endregion

#region GUI DEL ENEMIGO
enemy_gui_bkg_sprite	= spr_gui_bkg;
enemy_gui_bkg_width		= sprite_get_width(gui_bkg_sprite);
enemy_gui_bkg_height	= sprite_get_height(gui_bkg_sprite);
enemy_gui_bkg_x			= 0;
enemy_gui_bkg_y			= 0;
enemy_gui_bkg_xscale	= screen_width / gui_bkg_width;
enemy_gui_bkg_yscale	= 1;

enemy_sprite	= obj_enemy.enemy_sprites[? "spr_avatar"];
enemy_width		= sprite_get_width(enemy_sprite);
enemy_height	= sprite_get_height(enemy_sprite);
enemy_scale		= (enemy_gui_bkg_height - 10) / enemy_height;
enemy_x			= enemy_gui_bkg_x + enemy_width/2;
enemy_y			= enemy_gui_bkg_y + enemy_height/2;

zodiac_sprite	= spr_zodiac_logos;
zodiac_index	= global.current_house_number;
zodiac_width	= sprite_get_width(zodiac_sprite);
zodiac_height	= sprite_get_height(zodiac_sprite);
zodiac_scale	= (enemy_gui_bkg_height - 10) / zodiac_height;
zodiac_x		= enemy_gui_bkg_width - zodiac_width + 5;
zodiac_y		= enemy_gui_bkg_y + 5;

enemy_dialogbox_xscale	= (screen_width - enemy_width - zodiac_width - 10) / box_width;
enemy_dialogbox_yscale	= (gui_bkg_height - 10) / box_height;
enemy_dialogbox_x		= enemy_x + enemy_width/2 + 5;
enemy_dialogbox_y		= enemy_gui_bkg_y + 5;

enemy_cosmo_label_text		= "COSMO";
enemy_cosmo_label_width		= string_width(enemy_cosmo_label_text);
enemy_cosmo_label_height	= string_height(enemy_cosmo_label_text);
enemy_cosmo_label_x			= enemy_width * enemy_scale + enemy_cosmo_label_width + 20;

enemy_life_label_text		= "VIDA";
enemy_life_label_width	= string_width(enemy_life_label_text);
enemy_life_label_height	= string_height(enemy_life_label_text);
enemy_life_label_x		= enemy_cosmo_label_x;

enemy_label_y_separation	= (enemy_height * enemy_scale - enemy_cosmo_label_height - enemy_life_label_height) / 3;

enemy_cosmo_label_y		= enemy_gui_bkg_y + enemy_label_y_separation + enemy_cosmo_label_height / 2 + 5;
enemy_life_label_y		= enemy_cosmo_label_y + enemy_label_y_separation + enemy_cosmo_label_height;

enemy_cosmo_number_x	= enemy_cosmo_label_x + string_width("9999") + 10;
enemy_cosmo_number_y	= enemy_cosmo_label_y;

enemy_life_number_x		= enemy_cosmo_number_x;
enemy_life_number_y		= enemy_life_label_y;

enemy_cosmo_bar_sprite	= spr_gui_bar;
enemy_cosmo_bar_index	= 0;
enemy_cosmo_bar_height	= sprite_get_height(enemy_cosmo_bar_sprite);
enemy_cosmo_bar_x		= enemy_cosmo_number_x + 10;
enemy_cosmo_bar_y		= enemy_cosmo_number_y - enemy_cosmo_bar_height / 2;

enemy_life_bar_sprite	= spr_gui_bar;
enemy_life_bar_index	= 0;
enemy_life_bar_height	= sprite_get_height(enemy_life_bar_sprite);
enemy_life_bar_x		= enemy_life_number_x + 10;
enemy_life_bar_y		= enemy_life_number_y - enemy_life_bar_height / 2;

enemy_dialog_pos		= 0;
#endregion

gui_bar_max_len		= zodiac_x - cosmo_bar_x - 10;
gui_bar_scale		= gui_bar_max_len / 999;

enemy_gui_showing	= "dialogbox";
player_gui_showing	= "dialogbox";

enemy_talk	= "";
player_talk	= "";