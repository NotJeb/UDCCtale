function Game_ResetSave() {
	global.settings = {
		developer_mode : true, // Hi turn this on if you wanna mod the game :3
		debug : false,
		no_hit : false,
		no_heal : false,
		fast_reset : false,
		effects : 2,
		bgm_volume : 1,
		sfx_volume : 1,
		hitboxes : false,
		game_speed : 60,
	};
	global.settings.debug = global.settings.developer_mode;
}