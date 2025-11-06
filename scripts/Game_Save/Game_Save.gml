function Game_Save(){
	ini_open("save.ini");
	ini_write_string("SETTINGS", "player_name", Player_GetName());
	ini_write_real("MISC", "selected_battle", global.selected_battle);
	ini_close();
}