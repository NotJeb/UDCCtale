function Anim_Linear(_inst, _distance, _time, _direction) {
	_inst.direction = _direction;
	_inst.speed = _distance / _time;
}