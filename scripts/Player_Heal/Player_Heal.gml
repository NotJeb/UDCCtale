function Player_Heal(heal) {
	if(heal < 0) {
		return Player_Hurt(-heal);
	}
	if(heal > 0) {
		var _hp = min(Player_GetHpMax(), Player_GetHp() + heal);
		battle.kr = min(battle.kr, Player_GetHpMax() - _hp);
		Player_SetHp(min(Player_GetHpMax(), Player_GetHp() + heal));
		
		if (_hp > 0)
			battle.player_heal = true;
	}
	return true;
}
