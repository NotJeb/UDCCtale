function Battle_CreateGB(_start_x, _start_y, _start_angle, _end_x, _end_y, _end_angle, _move_time, _shoot_time, _xscale = 1, _yscale = 2) {
	if (_move_time < 13) return show_debug_message($"GB at {_start_x}, {_start_y} with _move_time {_move_time} not created, please use a _move_time of at least 13.");
	if (_shoot_time < 12) return show_debug_message($"GB at {_start_x}, {_start_y} with _shoot_time {_shoot_time} not created, please use a _move_time of at least 12.");
	
	// Create initial GB instance
	var _inst = instance_create_depth(_start_x, _start_y, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_bullet_gb_skelly);
	_inst.image_angle = _start_angle;
	_inst.image_xscale = _xscale;
	_inst.image_yscale = _yscale;
	
	// Move GB to end position
	Anim_Create(_inst, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, _start_x, _end_x - _start_x, _move_time - 10);
	Anim_Create(_inst, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, _start_y, _end_y - _start_y, _move_time - 10);
	Anim_Create(_inst, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, _start_angle, _end_angle - _start_angle, _move_time - 10);
	
	Anim_Create(_inst, "image_index", 0, 0, 0, 4, 12, _move_time - 12); // Open GB head
	
	Anim_Create(_inst, "speed", 0, 0, 0, -120, 120, _move_time - 2); // Apply force to GB
	
	// Create GB beam, start GB head anim
	_inst.alarm[0] = _move_time - 4;
	Anim_Create(_inst, "beam_xscale", 0, 0, 0, _xscale * 1.2, 8, _move_time - 4);
	
	// Start GB beam slight movement
	Anim_Create(_inst, "beam_xscale", 0, 0, _xscale * 1.2, _xscale * 0.2, floor(_shoot_time / 2), _move_time + 4);
	Anim_Create(_inst, "beam_xscale", 0, 0, _xscale * 1.4, _xscale * -0.4, floor(_shoot_time / 2) - 10, _move_time + 4 + floor(_shoot_time / 2));
	
	// Make beam go tranparent and shrink
	Anim_Create(_inst, "image_alpha", 0, 0, 1, -1, 6, _move_time + _shoot_time - 6);
	Anim_Create(_inst, "beam_xscale", 0, 0, _xscale, -_xscale, 6, _move_time + _shoot_time - 6);
	
	_inst.alarm[1] = _move_time + _shoot_time; // Delete instance
}