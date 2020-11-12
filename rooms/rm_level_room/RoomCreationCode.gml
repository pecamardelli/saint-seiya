room_goto(rm_fight_room);
scrCreateRoom();

obj_control_game.alarm[0] = ceil(random(5)) * room_speed;
