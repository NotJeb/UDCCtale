_menu = MENU_SCREEN.SETTINGS;

_menu_screen = [
	{parent : MENU_SCREEN.SETTINGS, button : [
		function(){return $"DEBUG : {(world.settings.debug ? "ON" : "OFF")}"}, 
		function(){return $"EFFECTS : {(world.settings.effects == 2 ? "MAX" : (world.settings.effects == 1 ? "OPTIMIZED" : "OFF"))}"}, 
		function(){return $"NO HIT : {(world.settings.no_hit ? "ON" : "OFF")}"}, 
		function(){return $"NO HEAL : {(world.settings.no_heal ? "ON" : "OFF")}"}]},
];

_menu_button = array_create(array_length(_menu_screen), 0);