// Inherit the parent event
event_inherited();

if (Battle_GetState() == BATTLE_STATE.CUTSCENE && Input_IsPressed(INPUT.MENU)) {
	instance_destroy(battle_dialog_enemy);
	
	battle_board.alpha = 1;
	battle_board.alpha_frame = 1;
	battle_soul.image_alpha = 1;
	battle_button.image_alpha = 1;
	battle_ui.image_alpha = 1;
	fader.alpha = 0;
	
	Anim_Destroy(battle_board);
	Anim_Destroy(battle_soul);
	Anim_Destroy(battle_button);
	Anim_Destroy(battle_ui);
	Anim_Destroy(fader);
	Anim_Destroy(battle_effect_clonetails_glow);
	
	battle_effect_clonetails_glow.effect_intensity = 1;
	
	Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
	audio_sound_set_track_position(BGM_GetAudio(), 2220 / 60);
	
	for (var i = 0; i < array_length(time_sources); i++)
		time_source_destroy(time_sources[i]);
}