function Game_Load() {
	if (file_exists("save.ini"))
    {
		ini_open("save.ini");
		Player_SetName(ini_read_string("SETTINGS", "player_name", ""));
		global.selected_battle = ini_read_real("MISC", "selected_battle", 9999999);
		ini_close();
    }
}