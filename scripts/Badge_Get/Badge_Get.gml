function Badge_Get(_badge_type, _enemy = battle_enemy._enemy_name) {
	if (_badge_type == BADGE.COMPLETION)
		return global.badges[array_get_index(global.enemy.name, _enemy)].completion;
	else if (_badge_type == BADGE.NO_HEAL)
		return global.badges[array_get_index(global.enemy.name, _enemy)].no_heal;
	else if (_badge_type == BADGE.NO_HIT)
		return global.badges[array_get_index(global.enemy.name, _enemy)].no_hit;
}