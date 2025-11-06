if (Input_IsPressed(INPUT.LEFT))
	selected_battle--;
if (Input_IsPressed(INPUT.RIGHT))
	selected_battle++;
if (Input_IsHeld(INPUT.LEFT)) {
	hold_time++;
	if (hold_time >= 30) {
		hold_time = 20;
		selected_battle--;
	}
}
else if (Input_IsHeld(INPUT.RIGHT)) {
	hold_time++;
	if (hold_time >= 30) {
		hold_time = 18;
		selected_battle++;
	}
}
else hold_time = 0;

if (selected_battle <= 1) selected_battle = 1;

if (abs(selected_battle - selection_display) / 10 > 0.0001)
	selection_display += (selected_battle - selection_display) / 10;

if (Input_IsPressed(INPUT.CONFIRM)) {
	var _battle_index = selected_battle % array_length(titles);
	if (_battle_index < 0) _battle_index = array_length(titles) + _battle_index;

	Encounter_Start(battles[_battle_index]);
}

if (Input_IsPressed(INPUT.MENU)) {
	Battle_CreateGB(0, 0, 0, random(640), random(480), random(360), 30, 30);
}