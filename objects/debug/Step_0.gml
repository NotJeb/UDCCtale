if (enabled) {
	
	// Shift + arrows to change speed
	if (keyboard_check(vk_shift)) {
		if (keyboard_check_pressed(vk_left) && game_get_speed(gamespeed_fps) > 15)
			game_set_speed(game_get_speed(gamespeed_fps) - 15, gamespeed_fps);
		if (keyboard_check_pressed(vk_right))
			game_set_speed(game_get_speed(gamespeed_fps) + 15, gamespeed_fps);
	}

	if (room == room_battle) {
		if (Battle_GetState() == BATTLE_STATE.IN_TURN) {

			// C to end turn
			if (keyboard_check_pressed(ord("C")))
				Debug_EndTurn();
		}
		else {
			
			// Control + arrows to change turn number
			if (keyboard_check(vk_lcontrol) || keyboard_check(vk_rcontrol)) {
				if (keyboard_check_pressed(vk_left) && Battle_GetTurnNumber() > 0) {
					Battle_SetTurnNumber(Battle_GetTurnNumber() - 1);
					audio_play_sound(snd_ding, 0, 0);
				}
				if (keyboard_check_pressed(vk_right) && Battle_GetTurnNumber() < 8) {
					Battle_SetTurnNumber(Battle_GetTurnNumber() + 1);
					audio_play_sound(snd_ding, 0, 0);
				}
			}
		}
	
		// R to restart turn
		if (keyboard_check_pressed(ord("R"))) {
			Debug_EndTurn();
			
			Battle_SetTurnNumber(Battle_GetTurnNumber() - 1);
			Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
			
			Battle_SetSoul(battle_soul_red);
			Player_Heal(99999);
		}

		// Space to heal
		if (keyboard_check_pressed(vk_space)) {
			Player_Heal(99999);
			audio_play_sound(snd_item_heal, 0, 0);
		}
	}
}