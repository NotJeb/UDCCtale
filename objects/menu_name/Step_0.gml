if (!instance_exists(menu)) instance_destroy();

if (Input_IsPressed(INPUT.DOWN) && selected_option == 0) {
	selected_option = 1;
	audio_play_sound(snd_menu_switch, 0, 0);
}
if (Input_IsPressed(INPUT.UP) && selected_option == 1) {
	selected_option = 0;
	keyboard_string = name;
	audio_play_sound(snd_menu_switch, 0, 0);
}

if (selected_option == 0) {
	if (string_length(keyboard_string) <= 6 && string_count(" ", keyboard_string) == 0)
		name = keyboard_string;
	else
		keyboard_string = name;
}
else if (selected_option == 1) {
	if (Input_IsPressed(INPUT.CONFIRM) && string_length(name) > 0) {
		audio_play_sound(snd_menu_confirm, 0, 0);
		Player_SetName(name);
		Game_Save();
		Menu_Set(menu_battle_selector);
	}
}

time += 2/25;