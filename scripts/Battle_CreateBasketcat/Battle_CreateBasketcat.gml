function Battle_CreateBasketcat(_x, _y, _vel_x, _vel_y, _size, _angle = 0, _time = 0) {
	var _inst = instance_create_depth(_x, _y, 0, battle_bullet_basketcat);
	_inst.vel_x = _vel_x;
	_inst.vel_y = _vel_y;
	_inst.image_xscale = (_vel_x < 0) ? _size / -498 : _size / 498;
	_inst.image_yscale = _size / 498;
	_inst.image_angle = _angle;
	_inst.alarm[0] = _time;
	
	return _inst;
}