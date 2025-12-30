_time=0;
_frame_skip=0;
_frame_skipped=0;

global.selected_battle = power(2, 24);

settings = {
	developer_mode : false, // Hi turn this on if you wanna mod the game :3
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
settings.debug = settings.developer_mode;

enemy = {
	encounter : [ENEMY_INDEX.SKELLY, ENEMY_INDEX.DLECKON, ENEMY_INDEX.PLAYERUT, ENEMY_INDEX.KACPII, ENEMY_INDEX.CLONETAILS, ENEMY_INDEX.CANDLE_AND_MOSS],
	title : [ENEMY_TITLE_SKELLY, ENEMY_TITLE_DLECKON, ENEMY_TITLE_PLAYERUT, ENEMY_TITLE_KACPII, ENEMY_TITLE_CLONETAILS, ENEMY_TITLE_CANDLE_AND_MOSS],
	description : [ENEMY_DESCRIPTION_SKELLY, ENEMY_DESCRIPTION_DLECKON, ENEMY_DESCRIPTION_PLAYERUT, ENEMY_DESCRIPTION_KACPII, ENEMY_DESCRIPTION_CLONETAILS, ENEMY_DESCRIPTION_CANDLE_AND_MOSS],
	name : [ENEMY_NAME_SKELLY, ENEMY_NAME_DLECKON, ENEMY_NAME_PLAYERUT, ENEMY_NAME_KACPII, ENEMY_NAME_CLONETAILS, ENEMY_NAME_CANDLE_AND_MOSS],
};

badges = [];
for (var i = 0; i < array_length(enemy.name); i++) {
	badges[i] = {
		completion : false,
		no_heal : false,
		no_hit : false
	}
}

notifications = [];