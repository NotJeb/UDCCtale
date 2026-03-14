function Badge_Revoke(_badge_type, _enemy = battle_enemy._enemy_name) {
	if (_badge_type == BADGE.COMPLETION)
		global.badges[array_get_index(global.enemy.name, _enemy)].completion = false;
	else if (_badge_type == BADGE.NO_HEAL)
		global.badges[array_get_index(global.enemy.name, _enemy)].no_heal = false;
	else if (_badge_type == BADGE.NO_HIT)
		global.badges[array_get_index(global.enemy.name, _enemy)].no_hit = false;
}