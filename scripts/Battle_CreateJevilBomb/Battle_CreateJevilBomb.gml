function Battle_CreateJevilBomb(_x, _y, _type, _dir = DIR.UP, _y_speed = 7) {
	var _start_y = _dir == DIR.UP ? -12 : 492;
	var _inst = instance_create_depth(_x, _start_y, 0, battle_bullet_jevil_bomb);
	
	var _delay = floor((_dir == DIR.UP ? _y : (480 - _y) + 24) / _y_speed);
	_inst.alarm[1] = _delay;
	_inst.alarm[2] = _delay + 30;
	
	_inst.end_y = _y;
	_inst.type = _type;
	_inst.y_speed = _y_speed;
	
	return _inst;
}