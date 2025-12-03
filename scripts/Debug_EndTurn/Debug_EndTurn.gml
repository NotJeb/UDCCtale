function Debug_EndTurn() {
	if (instance_exists(battle_turn)) {
		instance_destroy(battle_warning);
		with battle_board {
			Anim_Destroy(id);
			angle = 0;
			left = BATTLE_BOARD.LEFT;
			right = BATTLE_BOARD.RIGHT;
			up = BATTLE_BOARD.UP;
			down = BATTLE_BOARD.DOWN;
			x = BATTLE_BOARD.X;
			y = BATTLE_BOARD.Y;
		}
	}
	with camera {
		Anim_Destroy(id);
		event_user(0);
	}
	with fader {
		alpha = 0;
		alarm[0] = -1;
	}
	Battle_EndTurn();
	Battle_SetState(BATTLE_STATE.MENU);
}