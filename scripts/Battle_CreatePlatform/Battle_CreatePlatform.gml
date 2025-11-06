function Battle_CreatePlatform(_x, _y, _width, _time = -1, _angle = 0, _sticky = 1){
	var _platform = instance_create_depth(_x, _y, DEPTH_BATTLE.BULLET, battle_platform);
	_platform.width = _width;
	_platform.angle = _angle;
	_platform.sticky = _sticky;
	_platform.alarm[0] = _time;
	
	return _platform;
}