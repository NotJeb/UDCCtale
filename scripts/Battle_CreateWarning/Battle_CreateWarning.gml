function Battle_CreateWarning(_x1, _y1, _x2, _y2, _warn_time = 30, _sound = -1) {
	var _inst = instance_create_depth(0, 0, DEPTH_BATTLE.BULLET, battle_warning);
	_inst.x1 = _x1;
	_inst.y1 = _y1;
	_inst.x2 = _x2;
	_inst.y2 = _y2;
	_inst.time = _warn_time;
	_inst.sound = _sound;
	
	return _inst;
}