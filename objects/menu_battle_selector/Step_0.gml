if (Input_IsPressed(INPUT.LEFT))
	global.selected_battle--;
if (Input_IsPressed(INPUT.RIGHT))
	global.selected_battle++;
if (Input_IsHeld(INPUT.LEFT)) {
	hold_time++;
	if (hold_time >= 30) {
		hold_time = 20;
		global.selected_battle--;
	}
}
else if (Input_IsHeld(INPUT.RIGHT)) {
	hold_time++;
	if (hold_time >= 30) {
		hold_time = 18;
		global.selected_battle++;
	}
}
else hold_time = 0;

if (global.selected_battle <= 1) global.selected_battle = 1;

if (abs(global.selected_battle - selection_display) / 10 > 0.0001)
	selection_display += (global.selected_battle - selection_display) / 10;

if (Input_IsPressed(INPUT.CONFIRM)) {
	var _battle_index = global.selected_battle % array_length(world.enemy.title);
	if (_battle_index < 0) _battle_index = array_length(world.enemy.title) + _battle_index;
	
	Encounter_Start(world.enemy.encounter[_battle_index]);
}