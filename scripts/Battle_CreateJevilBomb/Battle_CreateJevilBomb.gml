function Battle_CreateJevilBomb(_x, _y, _type) {
	if (_y <= -24) return show_debug_message($"Jevil Bomb at {_x}, {_y} of type {_type} not created, please use a y of at least -23.");
	var _inst = instance_create_depth(_x, -12, 0, battle_bullet_jevil_bomb);
	_inst.alarm[1] = floor((_y + 24) / 7);
	_inst.alarm[2] = floor((_y + 24) / 7) + 30;
	_inst.end_y = _y;
	_inst.type = _type;
	
	return _inst;
}