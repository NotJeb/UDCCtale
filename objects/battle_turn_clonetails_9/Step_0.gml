// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(10, 610, 95)) {
	var _dir = choose(DIR.UP, DIR.DOWN, DIR.LEFT, DIR.RIGHT);
	var _side_length = 30;
	var _bottom_length = 25;
	var _top_length = 65;
	var _warn_time = 30;
	var _extend_time = 30;
	
	Battle_Slam(_dir);
	
	switch (_dir) {
		case DIR.DOWN:
			if (_warn_time > 0) {
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1 + _side_length, bb._frame_down_y - _bottom_length + 1, bb._frame_right_x - 1 - _side_length, bb._frame_down_y - 1, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1 + _top_length, bb._frame_left_x + bb._frame_left_width + _side_length - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_right_x - _side_length + 1, bb._frame_up_y + bb._frame_up_height + 1 + _top_length, bb._frame_right_x - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			}
			
			// Bottom
			for (var i = 6; i < bb.left + bb.right + 6 - _side_length * 2; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width + i + _side_length - 1, bb._frame_down_y + 10, 10, 0, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _bottom_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _bottom_length + 10, -_bottom_length, 10, _warn_time + _extend_time);
				_bone0.image_index = 1;
			}
			
			// Top
			Battle_CreateBoneWall(DIR.UP, _top_length, _warn_time, _extend_time);
			
			// Sides
			for (var i = 6; i < bb.down + bb.up + 6 - _top_length; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width - 10, bb._frame_up_y + bb._frame_up_height + i + _top_length, 10, 90, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
				
				var _bone1 = Battle_CreateBone(bb._frame_right_x + 10, bb._frame_up_y + bb._frame_up_height + i + _top_length, 10, 270, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone1, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone1, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.UP:
			if (_warn_time > 0) {
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1 + _side_length, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1 - _side_length, bb._frame_up_y + bb._frame_up_height + _bottom_length - 1, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_left_x + bb._frame_left_width + _side_length - 1, bb._frame_down_y - 1 - _top_length, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_right_x - _side_length + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1, bb._frame_down_y - 1 - _top_length, _warn_time, snd_bonestab);
			}
			
			// Bottom
			for (var i = 6; i < bb.left + bb.right + 6 - _side_length * 2; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_right_x - i - _side_length + 1, bb._frame_up_y + bb._frame_up_height - 10, 10, 180, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _bottom_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _bottom_length + 10, -_bottom_length, 10, _warn_time + _extend_time);
				_bone0.image_index = 1;
			}
			
			// Top
			Battle_CreateBoneWall(DIR.DOWN, _top_length, _warn_time, _extend_time);
			
			// Sides
			for (var i = 6; i < bb.down + bb.up + 6 - _top_length; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width - 10, bb._frame_down_y - i - _top_length, 10, 90, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
				
				var _bone1 = Battle_CreateBone(bb._frame_right_x + 10, bb._frame_down_y - i - _top_length, 10, 270, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone1, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone1, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.LEFT:
			if (_warn_time > 0) {
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1 + _side_length, bb._frame_left_x + bb._frame_left_width + _bottom_length - 1, bb._frame_down_y - 1 - _side_length, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1 - _top_length, bb._frame_up_y + bb._frame_up_height - 1 + _side_length, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1, bb._frame_down_y + 1 - _side_length, bb._frame_right_x - 1 - _top_length, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			}
			
			// Bottom
			for (var i = 6; i < bb.down + bb.up + 6 - _side_length * 2; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width - 10, bb._frame_up_y + bb._frame_up_height + i + _side_length - 1, 10, 90, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _bottom_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _bottom_length + 10, -_bottom_length, 10, _warn_time + _extend_time);
				_bone0.image_index = 1;
			}
			
			// Top
			Battle_CreateBoneWall(DIR.RIGHT, _top_length, _warn_time, _extend_time);
			
			// Sides
			for (var i = 6; i < bb.left + bb.right + 6 - _top_length; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_right_x - i - _top_length, bb._frame_down_y + 10, 10, 0, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
				
				var _bone1 = Battle_CreateBone(bb._frame_right_x - i - _top_length, bb._frame_up_y + bb._frame_up_height - 10, 10, 180, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone1, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone1, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.RIGHT:
			if (_warn_time > 0) {
				Battle_CreateWarning(bb._frame_right_x - _bottom_length + 1, bb._frame_up_y + bb._frame_up_height + 1 + _side_length, bb._frame_right_x - 1, bb._frame_down_y - 1 - _side_length, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1 + _top_length, bb._frame_up_y + bb._frame_up_height + 1, bb._frame_right_x - 1, bb._frame_up_y + bb._frame_up_height - 1 + _side_length, _warn_time, snd_bonestab);
				Battle_CreateWarning(bb._frame_left_x + bb._frame_left_width + 1 + _top_length, bb._frame_down_y + 1 - _side_length, bb._frame_right_x - 1, bb._frame_down_y - 1, _warn_time, snd_bonestab);
			}
			
			// Bottom
			for (var i = 6; i < bb.down + bb.up + 6 - _side_length * 2; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_right_x + 10, bb._frame_down_y - i - _side_length + 1, 10, 270, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _bottom_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _bottom_length + 10, -_bottom_length, 10, _warn_time + _extend_time);
				_bone0.image_index = 1;
			}
			
			// Top
			Battle_CreateBoneWall(DIR.LEFT, _top_length, _warn_time, _extend_time);
			
			// Sides
			for (var i = 6; i < bb.left + bb.right + 6 - _top_length; i += 12) {
				var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width + i + _top_length - 1, bb._frame_down_y + 10, 10, 0, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone0, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
				
				var _bone1 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width + i + _top_length - 1, bb._frame_up_y + bb._frame_up_height - 10, 10, 180, 0, _warn_time + _extend_time + 10);
				Anim_Create(_bone1, "length", 0, 0, 10, _side_length, 10, _warn_time);
				Anim_Create(_bone1, "length", 0, 0, _side_length + 10, -_side_length, 10, _warn_time + _extend_time);
			}
			break;
	}
}
if (Battle_Repeat(44, 644, 95)) {
	var _bone0 = Battle_CreateBone(bb.x - 75, bb.y - 65, 130, 180, 2, 30);
	Anim_Linear(_bone0, 150, 30, DIR.RIGHT);
	
	var _bone1 = Battle_CreateBone(bb.x + 65, bb.y - 75, 130, 270, 2, 30);
	Anim_Linear(_bone1, 150, 30, DIR.DOWN);
	
	var _bone2 = Battle_CreateBone(bb.x + 75, bb.y + 65, 130, 0, 2, 30);
	Anim_Linear(_bone2, 150, 30, DIR.LEFT);
	
	var _bone3 = Battle_CreateBone(bb.x - 65, bb.y + 75, 130, 90, 2, 30);
	Anim_Linear(_bone3, 150, 30, DIR.UP);
}
if (Battle_Repeat(87, 687, 95)) {
	var _bone0 = Battle_CreateBone(bb.x - 75, bb.y - 65, 130, 180, 1, 30);
	Anim_Linear(_bone0, 150, 30, DIR.RIGHT);
	
	var _bone1 = Battle_CreateBone(bb.x + 65, bb.y - 75, 130, 270, 1, 30);
	Anim_Linear(_bone1, 150, 30, DIR.DOWN);
	
	var _bone2 = Battle_CreateBone(bb.x + 75, bb.y + 65, 130, 0, 1, 30);
	Anim_Linear(_bone2, 150, 30, DIR.LEFT);
	
	var _bone3 = Battle_CreateBone(bb.x - 65, bb.y + 75, 130, 90, 1, 30);
	Anim_Linear(_bone3, 150, 30, DIR.UP);
}