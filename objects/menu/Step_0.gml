if (!instance_exists(_menu))
	instance_create_depth(320, 240, 0, _menu);
	
if (_menu == menu_battle_selector) {
	visible = true;
	sprite_index = spr_menu_settings;
}
else if (_menu == menu_settings) {
	visible = true;
	sprite_index = spr_menu_back;
}
else {
	visible = false;
}

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	if (_menu == menu_battle_selector) {
		instance_destroy(_menu);
		_menu = menu_settings;
	}
	else if (_menu == menu_settings) {
		instance_destroy(_menu);
		_menu = menu_battle_selector;
	}
}