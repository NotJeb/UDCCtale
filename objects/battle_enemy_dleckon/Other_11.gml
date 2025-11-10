///@desc Battle Start

// Inherit the parent event
event_inherited();

bgm = audio_play_sound(bgm_dleckon, 1, 1);

Battle_SetNextState(BATTLE_STATE.CUTSCENE);

battle_board.visible = false;
battle_soul.visible = false;
battle_button.visible = false;
battle_ui.visible = false;

draw_set_font(font_mars_needs_cunnilingus);
var _text = instance_create_depth(320 - string_width("Bottom Text ") / 2, 320, 0, text_typer);
_text.text = "{scale 2}{voice 1}{speed 2}{shadow true}{gui false}{depth "+string(DEPTH_BATTLE.UI_HIGH)+"}{speed 50}Bottom Text";

var _event_cutscene_0 = function() {
	Anim_Create(id, "effect_intensity", 0, 0, 0, 1, 240);
	alarm[0] = 60;
}
Delay_Event(_event_cutscene_0, 450);
	
var _event_cutscene_1 = function() {
	fader.alpha = 1;
}
Delay_Event(_event_cutscene_1, 990);

var _event_cutscene_2 = function() {
	battle_board.visible = true;
	battle_soul.visible = true;
	battle_button.visible = true;
	battle_ui.visible = true;
	fader.alpha = 0;
	instance_destroy(text_typer);
	
	Battle_SetState(BATTLE_STATE.MENU);
}
Delay_Event(_event_cutscene_2, 1110);