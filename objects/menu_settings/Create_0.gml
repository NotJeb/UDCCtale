_menu_screen = [
	{parent : -1, button : [
		]},
	{parent : MENU_SCREEN.RETURN, button : [
		function(){return $"SETTINGS"},
		function(){return $"MODIFIERS"},
		function(){return $"CREDITS"},
		]},
	{parent : MENU_SCREEN.MAIN, button : [
		function(){return $"EFFECTS : {(global.settings.effects == 2 ? "MAX" : (global.settings.effects == 1 ? "OPTIMIZED" : "OFF"))}"},
		function(){return $"FAST RESET : {(global.settings.fast_reset ? "ON" : "OFF")}"},
		function(){return $"SFX VOLUME : {int64(global.settings.sfx_volume * 100)}"},
		function(){return $"BGM VOLUME : {int64(global.settings.bgm_volume * 100)}"},
		function(){return $"CHANGE NAME"},
		function(){return $"WIPE SAVE"},
		]},
	{parent : MENU_SCREEN.MAIN, button : [
		function(){return $"DEBUG : {(global.settings.debug ? "ON" : "OFF")}"},
		function(){return $"HITBOXES : {(global.settings.hitboxes ? "ON" : "OFF")}"},
		function(){return $"GAME SPEED : {global.settings.game_speed} FPS"},
		function(){return $"NO HIT : {(global.settings.no_hit ? "ON" : "OFF")}"},
		function(){return $"NO HEAL : {(global.settings.no_heal ? "ON" : "OFF")}"},
		]},
];

_menu = menu.settings_screen;
_menu_button = menu.settings_button == -1 ? array_create(array_length(_menu_screen), 0) : menu.settings_button;

menu.visible = true;
menu.sprite_index = spr_menu_back;