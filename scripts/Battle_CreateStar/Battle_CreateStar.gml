function Battle_CreateStar(_x, _y, _size, _angle = 0, _rotation = 0, _time = 0) {
	var _inst = instance_create_depth(_x, _y, 0, battle_bullet_star);
	_inst.image_xscale = _size / 23;
	_inst.image_yscale = _size / 23;
	_inst.image_angle = _angle;
	_inst.rotation = _rotation;
	_inst.alarm[0] = _time;
	
	return _inst;
}