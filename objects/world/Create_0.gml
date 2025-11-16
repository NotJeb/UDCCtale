_time=0;
_frame_skip=0;
_frame_skipped=0;

settings = {
	developer_mode : true, // Hi turn this on if you wanna mod the game :3
	debug : false,
	no_hit : false,
	no_heal : false,
	fast_reset : false,
	effects : 2,
	bgm_volume : 100,
	sfx_volume : 100,
	hitboxes : false,
};
settings.debug = settings.developer_mode;

enemy = {
	encounter : [ENEMY_INDEX.SKELLY, ENEMY_INDEX.DLECKON, ENEMY_INDEX.PLAYERUT, ENEMY_INDEX.KACPII, ENEMY_INDEX.CLONETAILS],
	title : [ENEMY_TITLE_SKELLY, ENEMY_TITLE_DLECKON, ENEMY_TITLE_PLAYERUT, ENEMY_TITLE_KACPII, ENEMY_TITLE_CLONETAILS],
	description : [ENEMY_DESCRIPTION_SKELLY, ENEMY_DESCRIPTION_DLECKON, ENEMY_DESCRIPTION_PLAYERUT, ENEMY_DESCRIPTION_KACPII, ENEMY_DESCRIPTION_CLONETAILS],
	name : [ENEMY_NAME_SKELLY, ENEMY_NAME_DLECKON, ENEMY_NAME_PLAYERUT, ENEMY_NAME_KACPII, ENEMY_NAME_CLONETAILS],
};

badges = [];
for (var i = 0; i < array_length(enemy.name); i++) {
	badges[i] = {
		completion : false,
		no_heal : false,
		no_hit : false
	}
}