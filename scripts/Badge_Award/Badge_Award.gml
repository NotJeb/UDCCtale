function Badge_Award(_badge_type, _enemy = battle_enemy._enemy_name) {
	if (_badge_type == BADGE.COMPLETION) {
		world.badges[array_get_index(world.enemy.name, _enemy)].completion = true;
		Create_Notification($"they have been probably murdered :3", spr_badge, 0);
	}
	else if (_badge_type == BADGE.NO_HEAL) {
		world.badges[array_get_index(world.enemy.name, _enemy)].no_heal = true;
		Create_Notification($"SOMEONE FAILED A NO HIT OMG >w<", spr_badge, 1);
	}
	else if (_badge_type == BADGE.NO_HIT) {
		world.badges[array_get_index(world.enemy.name, _enemy)].no_hit = true;
		Create_Notification($"SOMEONE DID A NO HIT OMG >w<", spr_badge, 2);
	}
}