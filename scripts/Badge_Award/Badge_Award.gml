function Badge_Award(_badge_type, _enemy = battle_enemy._enemy_name) {
	if (!Badge_Get(_badge_type, _enemy)) {
		if (_badge_type == BADGE.COMPLETION) {
			global.badges[array_get_index(global.enemy.name, _enemy)].completion = true;
			Create_Notification($"Hey good job! You beat the fight.", spr_badge, 0);
		}
		else if (_badge_type == BADGE.NO_HEAL) {
			global.badges[array_get_index(global.enemy.name, _enemy)].no_heal = true;
			Create_Notification($"No Healing huh? You hungry yet?", spr_badge, 1);
		}
		else if (_badge_type == BADGE.NO_HIT) {
			global.badges[array_get_index(global.enemy.name, _enemy)].no_hit = true;
			Create_Notification($"A No Hit? Consider me impressed.", spr_badge, 2);
		}
		
		Game_Save();
	}
}