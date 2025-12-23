function Battle_CreateBoneWall(_side, _length, _warn_time, _extend_time, _color = 0) {
	if (_extend_time < 10) return show_debug_message($"Bone wall with angle {_side} with _extend_time {_extend_time} not created, please use an _extend_time of at least 10.");
	var bb = battle_board;
	switch (_side) {
		case DIR.DOWN:
			if (_warn_time > 0) Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_down_y - _length + 1, bb._frame_right_x - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.left + bb.right + 12; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width + i, bb._frame_down_y + 10, 10, 0, _color, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _length + 10, -_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.UP:
			if (_warn_time > 0) Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1, bb._frame_up_y + bb._frame_up_height + _length - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.left + bb.right + 12; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_right_x - i, bb._frame_up_y + bb._frame_up_height - 10, 10, 180, _color, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _length + 10, -_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.LEFT:
			if (_warn_time > 0) Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_left_x + bb._frame_left_width + _length - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.down + bb.up + 12; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width - 10, bb._frame_up_y + bb._frame_up_height + i, 10, 90, _color, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _length + 10, -_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.RIGHT:
			if (_warn_time > 0) Battle_CreateWarning(bb._frame_right_x - _length + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			for (var i = 0; i < bb.down + bb.up + 12; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_right_x + 10, bb._frame_down_y - i, 10, 270, _color, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _length + 10, -_length, 10, _warn_time + _extend_time);
			}
			break;
	}
}