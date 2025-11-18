name = Player_GetName();
keyboard_string = name;
selected_option = 0;
time = 0;

if (Player_GetName != "") {
	menu.visible = true;
	menu.sprite_index = spr_menu_back;
}
else {
	menu.visible = false;
	menu.sprite_index = -1;
}