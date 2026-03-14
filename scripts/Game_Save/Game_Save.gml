function Game_Save(){
	ini_open("save.ini");
	
	ini_write_string("SETTINGS", "player_name", Player_GetName());
	ini_write_real("SETTINGS", "debug", global.settings.debug);
	ini_write_real("SETTINGS", "no_hit", global.settings.no_hit);
	ini_write_real("SETTINGS", "no_heal", global.settings.no_heal);
	ini_write_real("SETTINGS", "fast_reset", global.settings.fast_reset);
	ini_write_real("SETTINGS", "effects", global.settings.effects);
	ini_write_real("SETTINGS", "bgm_volume", global.settings.bgm_volume);
	ini_write_real("SETTINGS", "sfx_volume", global.settings.sfx_volume);
	ini_write_real("SETTINGS", "hitboxes", global.settings.hitboxes);
	ini_write_real("SETTINGS", "game_speed", global.settings.game_speed);
	
	for (var i = 0; i < array_length(global.enemy.name); i++) {
		ini_write_real("BADGES_COMPLETION", global.enemy.name[i], global.badges[i].completion);
		ini_write_real("BADGES_NOHEAL", global.enemy.name[i], global.badges[i].no_heal);
		ini_write_real("BADGES_NOHIT", global.enemy.name[i], global.badges[i].no_hit);
	}
	
	ini_write_real("MISC", "selected_battle", global.selected_battle);
	
	ini_close();
}