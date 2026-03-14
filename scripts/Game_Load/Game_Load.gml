function Game_Load() {
	if (file_exists("save.ini"))
    {
		ini_open("save.ini");
		
		Player_SetName(ini_read_string("SETTINGS", "player_name", ""));
		global.settings.debug = ini_read_real("SETTINGS", "debug", global.settings.debug);
		global.settings.no_hit = ini_read_real("SETTINGS", "no_hit", global.settings.no_hit);
		global.settings.no_heal = ini_read_real("SETTINGS", "no_heal", global.settings.no_heal);
		global.settings.fast_reset = ini_read_real("SETTINGS", "fast_reset", global.settings.fast_reset);
		global.settings.effects = ini_read_real("SETTINGS", "effects", global.settings.effects);
		global.settings.bgm_volume = ini_read_real("SETTINGS", "bgm_volume", global.settings.bgm_volume);
		global.settings.sfx_volume = ini_read_real("SETTINGS", "sfx_volume", global.settings.sfx_volume);
		global.settings.hitboxes = ini_read_real("SETTINGS", "hitboxes", global.settings.hitboxes);
		global.settings.game_speed = ini_read_real("SETTINGS", "game_speed", global.settings.game_speed);
		
		for (var i = 0; i < array_length(global.enemy.name); i++) {
			global.badges[i].completion = ini_read_real("BADGES_COMPLETION", global.enemy.name[i], global.badges[i].completion);
			global.badges[i].no_heal = ini_read_real("BADGES_NOHEAL", global.enemy.name[i], global.badges[i].no_heal);
			global.badges[i].no_hit = ini_read_real("BADGES_NOHIT", global.enemy.name[i], global.badges[i].no_hit);
		}
		
		global.selected_battle = ini_read_real("MISC", "selected_battle", 9999999);
		
		ini_close();
    }
}