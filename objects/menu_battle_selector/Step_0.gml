if (!instance_exists(menu)) instance_destroy();

if (Input_IsPressed(INPUT.LEFT))
	global.selected_battle--;
if (Input_IsPressed(INPUT.RIGHT))
	global.selected_battle++;
if (Input_IsHeld(INPUT.LEFT)) {
	if (menu.input_time[INPUT.LEFT] >= 30 && menu.input_time[INPUT.LEFT] % 10 == 0) {
		global.selected_battle--;
	}
}
else if (Input_IsHeld(INPUT.RIGHT)) {
	if (menu.input_time[INPUT.RIGHT] >= 30 && menu.input_time[INPUT.RIGHT] % 10 == 0) {
		global.selected_battle++;
	}
}
else hold_time = 0;

if (global.selected_battle <= 1) global.selected_battle = 1;

if (abs(global.selected_battle - selection_display) / 10 > 0.0001)
	selection_display += (global.selected_battle - selection_display) / 10;

if (Input_IsPressed(INPUT.CONFIRM)) {
	var _battle_index = global.selected_battle % array_length(global.enemy.title);
	if (_battle_index < 0) _battle_index = array_length(global.enemy.title) + _battle_index;
	
	Game_Save();
	
	Encounter_Start(global.enemy.encounter[_battle_index]);
}

if (Input_IsPressed(INPUT.MENU))
	Menu_Set(menu_settings);