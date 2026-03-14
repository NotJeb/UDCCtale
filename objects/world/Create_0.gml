_time=0;
_frame_skip=0;
_frame_skipped=0;

global.selected_battle = power(2, 24);

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

global.enemy = {
	encounter : [ENEMY_INDEX.SKELLY, ENEMY_INDEX.DLECKON, ENEMY_INDEX.KACPII, ENEMY_INDEX.CLONETAILS, ENEMY_INDEX.CANDLE_AND_MOSS, ENEMY_INDEX.SHAUN_AND_MINUS, ENEMY_INDEX.SIL],
	title : [ENEMY_TITLE_SKELLY, ENEMY_TITLE_DLECKON, ENEMY_TITLE_KACPII, ENEMY_TITLE_CLONETAILS, ENEMY_TITLE_CANDLE_AND_MOSS, ENEMY_TITLE_SHAUN_AND_MINUS, ENEMY_TITLE_SIL],
	description : [ENEMY_DESCRIPTION_SKELLY, ENEMY_DESCRIPTION_DLECKON, ENEMY_DESCRIPTION_KACPII, ENEMY_DESCRIPTION_CLONETAILS, ENEMY_DESCRIPTION_CANDLE_AND_MOSS, ENEMY_DESCRIPTION_SHAUN_AND_MINUS, ENEMY_DESCRIPTION_SIL],
	name : [ENEMY_NAME_SKELLY, ENEMY_NAME_DLECKON, ENEMY_NAME_KACPII, ENEMY_NAME_CLONETAILS, ENEMY_NAME_CANDLE_AND_MOSS, ENEMY_NAME_SHAUN_AND_MINUS, ENEMY_NAME_SIL],
};

global.badges = [];
for (var i = 0; i < array_length(global.enemy.name); i++) {
	global.badges[i] = {
		completion : false,
		no_heal : false,
		no_hit : false
	}
}

global.notifications = [];

depth = -10000;