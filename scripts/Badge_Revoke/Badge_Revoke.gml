function Badge_Revoke(_badge_type, _enemy = battle_enemy._enemy_name) {
	if (_badge_type == BADGE.COMPLETION)
		world.badges[array_get_index(world.enemy.name, _enemy)].completion = false;
	else if (_badge_type == BADGE.NO_HEAL)
		world.badges[array_get_index(world.enemy.name, _enemy)].no_heal = false;
	else if (_badge_type == BADGE.NO_HIT)
		world.badges[array_get_index(world.enemy.name, _enemy)].no_hit = false;
}