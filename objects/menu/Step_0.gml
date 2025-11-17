if (!instance_exists(_menu))
	instance_create_depth(320, 240, 0, _menu);
	
if (_menu == menu_battle_selector) {
	visible = true;
	sprite_index = spr_menu_settings;
	
	if ((mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) || Input_IsPressed(INPUT.MENU)) {
		instance_destroy(_menu);
		_menu = menu_settings;
	}
}
else if (_menu == menu_settings) {
	visible = true;
	sprite_index = spr_menu_back;
	
	if ((mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) || Input_IsPressed(INPUT.CANCEL)) {
		Game_Save();
		instance_destroy(_menu);
		_menu = menu_battle_selector;
	}
}
else {
	visible = false;
}

for (var i = 0; i < array_length(input_time); i++) {
	if (Input_IsHeld(i))
		input_time[i]++;
	else
		input_time[i] = 0;
}