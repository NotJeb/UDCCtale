function Battle_CreateBone(_x, _y, _length, _angle, _color = 0, _time = 0, _origin = 0) {
	var _inst = instance_create_depth(_x, _y, 0, battle_bullet_bone);
	_inst.length = _length;
	_inst.angle = _angle;
	_inst.color = _color;
	_inst.alarm[0] = _time;
	_inst.origin = _origin;
	
	return _inst;
}