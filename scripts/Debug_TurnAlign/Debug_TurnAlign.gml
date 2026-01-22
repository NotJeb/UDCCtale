function Debug_TurnAlign() {
	Battle_SetState(BATTLE_STATE.MENU);
	switch (battle_enemy._enemy_name) {
		case ENEMY_NAME_SHAUN_AND_MINUS:
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
			break;
	}
}