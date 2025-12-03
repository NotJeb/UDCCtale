if (world.settings.debug) {
	
	// Shift + arrows to change speed
	if (keyboard_check(vk_shift)) {
		if (keyboard_check_pressed(vk_left) && game_get_speed(gamespeed_fps) > 5)
			game_set_speed(game_get_speed(gamespeed_fps) - 5, gamespeed_fps);
		if (keyboard_check_pressed(vk_right))
			game_set_speed(game_get_speed(gamespeed_fps) + 5, gamespeed_fps);
	}

	if (room == room_battle) {
		if (Battle_GetState() == BATTLE_STATE.IN_TURN) {

			// Space to end turn
			if (keyboard_check_pressed(ord("E")))
				Debug_EndTurn();
		}
		else {
			
			// Control + arrows to change turn number
			if (keyboard_check(vk_lcontrol) || keyboard_check(vk_rcontrol)) {
				if (keyboard_check_pressed(vk_left) && Battle_GetTurnNumber() > 0) {
					Battle_SetTurnNumber(Battle_GetTurnNumber() - 1);
					audio_play_sound(snd_ding, 0, 0);
				}
				if (keyboard_check_pressed(vk_right) && Battle_GetTurnNumber() < battle_enemy.turn_count) {
					Battle_SetTurnNumber(Battle_GetTurnNumber() + 1);
					audio_play_sound(snd_ding, 0, 0);
				}
			}
		}
	
		// R to restart turn
		if (keyboard_check_pressed(ord("R")) && Battle_GetState() != BATTLE_STATE.TURN_PREPARATION) {
			Debug_EndTurn();
			
			Battle_SetTurnNumber(Battle_GetTurnNumber() - 1);
			
			Battle_SetMenu(-1, false);
			Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
			
			Player_Heal(99999);
		}

		// Space to heal
		if (keyboard_check_pressed(vk_space)) {
			Player_Heal(99999);
			audio_play_sound(snd_item_heal, 0, 0);
		}
		
		var _index = array_get_index(world.enemy.name, battle_enemy._enemy_name)
		if (keyboard_check_pressed(ord("1"))) {
			if (world.badges[_index].completion)
				Badge_Revoke(BADGE.COMPLETION);
			else
				Badge_Award(BADGE.COMPLETION);
		}
		
		if (keyboard_check_pressed(ord("2"))) {
			if (world.badges[_index].no_heal)
				Badge_Revoke(BADGE.NO_HEAL);
			else
				Badge_Award(BADGE.NO_HEAL);
		}
		
		if (keyboard_check_pressed(ord("3"))) {
			if (world.badges[_index].no_hit)
				Badge_Revoke(BADGE.NO_HIT);
			else
				Badge_Award(BADGE.NO_HIT);
		}
	}
}