function Battle_CreateDogBeam(_x, _angle, _speed = 5, _size = 10){
	var _inst = instance_create_depth(_x, -_size / 2, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_bullet_annoying_dog_beam);
	_inst.image_angle = _angle;
	_inst.y_speed = _speed
	_inst.size = _size;
	_inst.image_xscale = _size / 20;
	_inst.image_yscale = _size / 20;
	
	_inst.alarm[0] = (480 + _size / 2) / _speed; // Activate slash
	
	_inst.alarm[1] = (480 + _size / 2) / _speed + 2; // Shrink slash
	
	_inst.alarm[2] = (480 + _size / 2) / _speed + 13; // Delete instance
	
	return _inst;
}