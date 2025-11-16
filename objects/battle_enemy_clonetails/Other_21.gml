///@desc Turn End

// Inherit the parent event
event_inherited();

if (!world.settings.debug && Battle_GetTurnNumber() == turn_count) {
	Badge_Award(BADGE.COMPLETION);
	Badge_Award(BADGE.NO_HEAL);
	
	if (Player_GetHp() == Player_GetHpMax())
		Badge_Award(BADGE.NO_HIT);
}