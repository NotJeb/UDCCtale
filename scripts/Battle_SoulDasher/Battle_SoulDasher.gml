function Battle_SoulDasher(_toggle_state){
	if (_toggle_state) {
		if (!instance_exists(battle_soul_dasher))
			instance_create_depth(0, 0, 0, battle_soul_dasher);
	}
	else
		instance_destroy(battle_soul_dasher);
}