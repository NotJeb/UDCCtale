function Battle_Slam(_dir, _soul = battle_soul_blue) {
	Battle_SetSoul(_soul);
	battle_soul.impact = 1;
	battle_soul.dir = _dir;
	if (_dir == DIR.UP) battle_soul.move = abs((battle_board.y - battle_board.up - battle_soul.y) / 10);
	else if (_dir == DIR.DOWN) battle_soul.move = abs((battle_board.y + battle_board.down - battle_soul.y) / 10);
	else if (_dir == DIR.LEFT) battle_soul.move = abs((battle_board.x - battle_board.left - battle_soul.x) / 10);
	else if (_dir == DIR.RIGHT) battle_soul.move = abs((battle_board.x + battle_board.right - battle_soul.x) / 10);
}