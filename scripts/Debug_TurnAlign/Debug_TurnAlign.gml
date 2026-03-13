function Debug_TurnAlign() {
	Battle_SetState(BATTLE_STATE.MENU);
	switch (battle_enemy._enemy_name) {
		case ENEMY_NAME_SHAUN_AND_MINUS:
			battle_enemy_shaun_and_minus.x = 320 - 80;
			battle_enemy_shaun_and_minus.image_alpha = 1;
			battle_enemy_shaun_and_minus.follow_board = true;
			battle_enemy_minus_dummy.x = 320 + 80;
			battle_enemy_minus_dummy.image_alpha = 1;
			battle_enemy_minus_dummy.follow_board = true;
			
			if (Battle_GetTurnNumber() == 0) {
				battle_enemy.effect_intensity = 0;
				battle_effect_shaun_and_minus_carousel.effect_intensity = 0;
				battle_effect_shaun_and_minus_glow.effect_intensity = 0;
				battle_enemy.alarm[1] = -1;
				instance_destroy(battle_effect_shaun_and_minus_chips);
			}
			else {
				battle_enemy.effect_intensity = 1;
				battle_effect_shaun_and_minus_carousel.effect_intensity = 1;
				battle_effect_shaun_and_minus_glow.effect_intensity = 1;
				if (battle_enemy.alarm[1] == -1) battle_enemy.alarm[1] = 1;
			}
			if (Battle_GetTurnNumber() == 6) {
				battle_enemy_minus_dummy.sprite_index = spr_enemy_minus_dance_sad;
				battle_enemy_shaun_and_minus.image_index = 1;
			}
			else {
				battle_enemy_minus_dummy.sprite_index = spr_enemy_minus_dance;
				battle_enemy_shaun_and_minus.image_index = 0;
			}
			break;
	}
}