///@desc Battle Start

// Inherit the parent event
event_inherited();

Battle_SetNextState(BATTLE_STATE.CUTSCENE);

battle_board.alpha = 0;
battle_board.alpha_frame = 0;
battle_soul.image_alpha = 0;
battle_button.image_alpha = 0;
battle_ui.image_alpha = 0;

Fader_Fade(1, 0, 30);

var _event_cutscene_0 = function() {
	Anim_Create(battle_effect_clonetails_glow, "effect_intensity", 0, 0, 0, 1, 240);
}
Delay_Event(_event_cutscene_0, 420);

var _event_cutscene_1 = function() {
	Anim_Create(battle_board, "alpha", 0, 0, 0, 1, 30);
	Anim_Create(battle_board, "alpha_frame", 0, 0, 0, 1, 30);
	Anim_Create(battle_soul, "image_alpha", 0, 0, 0, 1, 30);
	Anim_Create(battle_button, "image_alpha", 0, 0, 0, 1, 30);
	Anim_Create(battle_ui, "image_alpha", 0, 0, 0, 1, 30);
}
Delay_Event(_event_cutscene_1, 1740);

var _event_cutscene_2 = function() {
	Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
}
Delay_Event(_event_cutscene_2, 2220);