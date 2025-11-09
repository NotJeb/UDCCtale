function Battle_CreateSlash(_x, _y, _angle, _delay = 20, _size = 10){
	var _inst = instance_create_depth(_x, _y, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_bullet_slash);
	_inst.image_angle = _angle;
	_inst.size = _size;
	
	_inst.alarm[0] = _delay; // Activate slash
	
	_inst.alarm[1] = _delay + 12; // Shrink slash
	
	_inst.alarm[2] = _delay + 23; // Delete instance
	
	return _inst;
}