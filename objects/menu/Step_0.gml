if ((mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id))) {
	if (_menu == menu_name) Menu_Set();
	else if (_menu == menu_battle_selector) Menu_Set(menu_settings, menu_battle_selector);
	else if (_menu == menu_settings) Menu_Set();
}

if (!instance_exists(_menu))
	instance_create_depth(320, 240, 0, _menu);

for (var i = 0; i < array_length(input_time); i++) {
	if (Input_IsHeld(i))
		input_time[i]++;
	else
		input_time[i] = 0;
}

if (!world.settings.debug)
	game_set_speed(60, gamespeed_fps);