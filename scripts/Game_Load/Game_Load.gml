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
		world.settings.hitboxes = ini_read_real("SETTINGS", "hitboxes", world.settings.hitboxes);
		
		for (var i = 0; i < array_length(world.enemy.name); i++) {
			world.badges[i].completion = ini_read_real("BADGES_COMPLETION", world.enemy.name[i], world.badges[i].completion);
			world.badges[i].no_heal = ini_read_real("BADGES_NOHEAL", world.enemy.name[i], world.badges[i].no_heal);
			world.badges[i].no_hit = ini_read_real("BADGES_NOHIT", world.enemy.name[i], world.badges[i].no_hit);
		}
		
		global.selected_battle = ini_read_real("MISC", "selected_battle", 9999999);
		
		ini_close();
    }
}