name = "";
selected_option = 0;
keyboard_string = "";
time = 0;

if (Player_GetName() != "") {
	show_debug_message(Player_GetName());
	instance_create_depth(0, 0, 0, menu_battle_selector);
	instance_destroy();
}