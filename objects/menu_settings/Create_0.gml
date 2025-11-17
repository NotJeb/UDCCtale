_menu = MENU_SCREEN.MAIN;

_menu_screen = [
	{parent : -1, button : [
		]},
	{parent : MENU_SCREEN.RETURN, button : [
		function(){return $"SETTINGS"},
		function(){return $"MODIFIERS"},
		]},
	{parent : MENU_SCREEN.MAIN, button : [
		function(){return $"EFFECTS : {(world.settings.effects == 2 ? "MAX" : (world.settings.effects == 1 ? "OPTIMIZED" : "OFF"))}"},
		function(){return $"FAST RESET : {(world.settings.fast_reset ? "ON" : "OFF")}"},
		function(){return $"SFX VOLUME : {int64(world.settings.sfx_volume * 100)}"},
		function(){return $"BGM VOLUME : {int64(world.settings.bgm_volume * 100)}"},
		]},
	{parent : MENU_SCREEN.MAIN, button : [
		function(){return $"DEBUG : {(world.settings.debug ? "ON" : "OFF")}"},
		function(){return $"HITBOXES : {(world.settings.hitboxes ? "ON" : "OFF")}"},
		function(){return $"GAME SPEED : {world.settings.game_speed} FPS"},
		function(){return $"NO HIT : {(world.settings.no_hit ? "ON" : "OFF")}"},
		function(){return $"NO HEAL : {(world.settings.no_heal ? "ON" : "OFF")}"},
		]},
];

_menu_button = array_create(array_length(_menu_screen), 0);