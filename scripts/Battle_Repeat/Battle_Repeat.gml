function Battle_Repeat(start, stop, interval = 1){
	if instance_exists(battle_turn)
		return (battle_turn.time == clamp(battle_turn.time, start, stop) && (battle_turn.time - start) % interval == 0);
	else
		return false;
}