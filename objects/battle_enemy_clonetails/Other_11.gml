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
	
	var _inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
	_inst.template = 0;
	_inst.text = "{skippable false}Hey,{sleep 10} i'm CloneTails.{sleep 40}{clear}You hated on a character&or game i glaze a lot,{sleep 10} so&i'm gonna attack you for&it.{sleep 40}{end}";
}
Delay_Event(_event_cutscene_0, 420);

var _event_cutscene_1 = function() {
	Anim_Create(battle_button_fight, "image_alpha", 0, 0, 0, 1, 30);
	Anim_Create(battle_button_act, "image_alpha", 0, 0, 0, 1, 30, 60);
	Anim_Create(battle_button_item, "image_alpha", 0, 0, 0, 1, 30, 120);
	Anim_Create(battle_button_mercy, "image_alpha", 0, 0, 0, 1, 30, 180);
	
	Anim_Create(battle_ui, "image_alpha", 0, 0, 0, 1, 30, 360);
	Anim_Create(battle_board, "alpha", 0, 0, 0, 1, 30, 360);
	Anim_Create(battle_board, "alpha_frame", 0, 0, 0, 1, 30, 360);
	Anim_Create(battle_soul, "image_alpha", 0, 0, 0, 1, 30, 360);
}
Delay_Event(_event_cutscene_1, 1740);

var _event_cutscene_2 = function() {
	Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
}
Delay_Event(_event_cutscene_2, 2220);