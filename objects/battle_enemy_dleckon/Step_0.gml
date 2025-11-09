// Inherit the parent event
event_inherited();

siner++;

if (Battle_GetState() == BATTLE_STATE.CUTSCENE && Input_IsPressed(INPUT.MENU)) {
	battle_board.visible = true;
	battle_soul.visible = true;
	battle_button.visible = true;
	battle_ui.visible = true;
	fader.alpha = 0;
	alarm[0] = 1;
	effect_intensity = 1;
	Battle_SetState(BATTLE_STATE.MENU);
	audio_sound_set_track_position(bgm, 1100 / 60);
	
	for (var i = 0; i < array_length(time_sources); i++)
		time_source_destroy(time_sources[i]);
}