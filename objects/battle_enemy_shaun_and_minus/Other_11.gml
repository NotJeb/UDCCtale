///@desc Battle Start

// Inherit the parent event
event_inherited();

Battle_SetNextState(BATTLE_STATE.CUTSCENE);

Battle_BoardTransform(65, 65, 65, 65, battle_board.x, battle_board.y, 0);
battle_soul.x = battle_board.x;
battle_soul.y = battle_board.y;

Fader_Fade(1, 0, 30);