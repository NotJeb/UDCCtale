///@desc Turn Preperation Start

// Inherit the parent event
event_inherited();

if (turn_dialog[Battle_GetTurnNumber()] != -1) {
	if (instance_exists(battle_turn)) battle_turn.paused = true;
	var _inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
	_inst.template = 0;
	_inst.text = turn_dialog[Battle_GetTurnNumber()];
}