function Battle_CreateGB(_start_x, _start_y, _start_angle, _end_x, _end_y, _end_angle, _move_time, _pause_time, _shoot_time, _xscale = 1, _yscale = 2, _color = 0, _gb_type = battle_enemy._enemy_name) {
	if (_move_time < 13) return show_debug_message($"GB at {_start_x}, {_start_y} with _move_time {_move_time} not created, please use a _move_time of at least 13.");
	if (_shoot_time < 4) return show_debug_message($"GB at {_start_x}, {_start_y} with _shoot_time {_shoot_time} not created, please use a _move_time of at least 4.");
	
	// Change GB depending on who's fight it is
	var _obj = asset_get_index("battle_bullet_gb_head_" + _gb_type);
	
	// Create initial GB instance
	var _inst = instance_create_depth(_start_x, _start_y, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, _obj);
	_inst.angle = _start_angle;
	_inst.image_xscale = _xscale;
	_inst.image_yscale = _yscale;
	_inst.shoot_time = _shoot_time;
	_inst.color = _color;
	
	// Move GB to end position
	Anim_Create(_inst, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, _start_x, _end_x - _start_x, _move_time - 10);
	Anim_Create(_inst, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, _start_y, _end_y - _start_y, _move_time - 10);
	Anim_Create(_inst, "angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, _start_angle, _end_angle - _start_angle, _move_time - 10);
	
	_inst.alarm[0] = _move_time + _pause_time - 12; // Open GB head
	
	_inst.alarm[1] = _move_time + _pause_time  - 4; // Create GB beam, start GB head anim
	
	_inst.alarm[2] = _move_time + _pause_time  + _shoot_time - 8; // Make beam go tranparent and shrink
	
	_inst.alarm[3] = _move_time + _pause_time  + _shoot_time; // Try to delete instance
	
	return _inst;
}