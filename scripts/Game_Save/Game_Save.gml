function Game_Save(){
	ini_open("save.ini");
	ini_write_string("SETTINGS", "player_name", Player_GetName());
	ini_write_real("SETTINGS", "debug", world.settings.debug);
	ini_write_real("SETTINGS", "no_hit", world.settings.no_hit);
	ini_write_real("SETTINGS", "no_heal", world.settings.no_heal);
	ini_write_real("SETTINGS", "fast_reset", world.settings.fast_reset);
	ini_write_real("SETTINGS", "effects", world.settings.effects);
	ini_write_real("SETTINGS", "bgm_volume", world.settings.bgm_volume);
	ini_write_real("SETTINGS", "sfx_volume", world.settings.sfx_volume);
	ini_write_real("SETTINGS", "hitboxes", world.settings.hitboxes);
	ini_write_real("MISC", "selected_battle", global.selected_battle);
	ini_close();
}