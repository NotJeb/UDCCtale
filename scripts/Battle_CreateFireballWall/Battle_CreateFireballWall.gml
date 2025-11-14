function Battle_CreateFireballWall(_side, _length, _warn_time, _extend_time) {
	if (_extend_time < 10) return show_debug_message($"Fireball wall with angle {_side} with _extend_time {_extend_time} not created, please use an _extend_time of at least 10.");
	var bb = battle_board;
	switch (_side) {
		case DIR.DOWN:
			Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_down_y - _length * 18 + 1, bb._frame_right_x - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.left + bb.right + 18; i += 18) {
				for (var j = 0; j < _length; j += 1) {
					var _fire0 = Battle_CreateFireball(bb._frame_left_x + bb._frame_left_width + i, bb._frame_down_y + 18 + j * 18 - 11, 0, 0, _warn_time + _extend_time + 10);
					Anim_Create(_fire0, "y", 0, 0, bb._frame_down_y + 18 + j * 18 - 11, -_length * 18, 10, _warn_time);
					Anim_Create(_fire0, "y", 0, 0, bb._frame_down_y + 18 + j * 18 - 11 - _length * 18, _length * 18, 10, _warn_time + _extend_time);
				}
			}
			break;
		case DIR.UP:
			Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1, bb._frame_up_y + bb._frame_up_height + _length * 18 - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.left + bb.right + 18; i += 18) {
				for (var j = 0; j < _length; j += 1) {
					var _fire0 = Battle_CreateFireball(bb._frame_right_x - i, bb._frame_up_y + bb._frame_up_height - 18 - j * 18 + 11, 180, 0, _warn_time + _extend_time + 10);
					Anim_Create(_fire0, "y", 0, 0, bb._frame_up_y + bb._frame_up_height - 18 - j * 18 + 11, _length * 18, 10, _warn_time);
					Anim_Create(_fire0, "y", 0, 0, bb._frame_up_y + bb._frame_up_height - 18 - j * 18 + 11 + _length * 18, -_length * 18, 10, _warn_time + _extend_time);
				}
			}
			break;
		case DIR.LEFT:
			Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_left_x + _length * 18 - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.down + bb.up + 18; i += 18) {
				for (var j = 0; j < _length; j += 1) {
					var _fire0 = Battle_CreateFireball(bb._frame_left_x + bb._frame_left_width - 18 - j * 18 + 11, bb._frame_up_y + bb._frame_up_height + i, 270, 0, _warn_time + _extend_time + 10);
					Anim_Create(_fire0, "x", 0, 0, bb._frame_left_x + bb._frame_left_width - 18 - j * 18 + 11, _length * 18, 10, _warn_time);
					Anim_Create(_fire0, "x", 0, 0, bb._frame_left_x + bb._frame_left_width - 18 - j * 18 + 11 + _length * 18, -_length * 18, 10, _warn_time + _extend_time);
				}
			}
			break;
		case DIR.RIGHT:
			Battle_CreateWarning(bb._frame_right_x - _length * 18 + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1, bb._frame_down_y - 1 + 10, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.down + bb.up + 18; i += 18) {
				for (var j = 0; j < _length; j += 1) {
					var _fire0 = Battle_CreateFireball(bb._frame_right_x + 18 + j * 18 - 11, bb._frame_up_y + bb._frame_up_height + i, 90, 0, _warn_time + _extend_time + 10);
					Anim_Create(_fire0, "x", 0, 0, bb._frame_right_x + 18 + j * 18 - 11, -_length * 18, 10, _warn_time);
					Anim_Create(_fire0, "x", 0, 0, bb._frame_right_x + 18 + j * 18 - 11 - _length * 18, _length * 18, 10, _warn_time + _extend_time);
				}
			}
			break;
	}
}