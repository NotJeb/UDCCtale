function Battle_CreateGBBeam(_x, _y, _angle, _size, _shoot_time, _color = 0) {
	var _inst = instance_create_depth(_x, _y, DEPTH_BATTLE.BULLET_OUTSIDE_LOW, battle_bullet_gb_beam);
	_inst.image_angle = _angle;
	_inst.target_size = _size;
	_inst.shoot_time = _shoot_time;
	_inst.color = color;
	audio_play_sound(snd_gb_release, 0, 0);
	
	return _inst;
}