function Game_Load() {
	if (file_exists("save.ini"))
    {
		ini_open("save.ini");
		Player_SetName(ini_read_string("SETTINGS", "player_name", ""));
		world.settings.debug = ini_read_real("SETTINGS", "debug", world.settings.debug);
		world.settings.no_hit = ini_read_real("SETTINGS", "no_hit", world.settings.no_hit);
		world.settings.no_heal = ini_read_real("SETTINGS", "no_heal", world.settings.no_heal);
		world.settings.fast_reset = ini_read_real("SETTINGS", "fast_reset", world.settings.fast_reset);
		world.settings.effects = ini_read_real("SETTINGS", "effects", world.settings.effects);
		world.settings.bgm_volume = ini_read_real("SETTINGS", "bgm_volume", world.settings.bgm_volume);
		world.settings.sfx_volume = ini_read_real("SETTINGS", "sfx_volume", world.settings.sfx_volume);
		global.selected_battle = ini_read_real("MISC", "selected_battle", 9999999);
		ini_close();
    }
}