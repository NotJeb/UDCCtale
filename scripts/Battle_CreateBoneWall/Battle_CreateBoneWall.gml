function Battle_CreateBoneWall(_side, _length, _warn_time, _extend_time){
	var bb = battle_board;
	switch (_side) {
		case DIR.UP:
			Battle_CreateWarning(bb.x - 65, bb.y + 65, bb.x + 65, bb.y, _warn_time);
			for (var i = 0; i < (bb.right - bb.left) / 12; i++) {
				var _bone0 = Battle_CreateBone(bb.x - bb.left + i * 12, bb.y + bb.down / 2, 0, 0);
				Anim_Create(_bone0, "length", 0, 0, 0, _length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _length, -_length, 10, _warn_time + _extend_time);
			}
			break;
		case DIR.DOWN:
			Battle_CreateWarning(bb.x - bb.left + 1, bb.y + bb.down, bb.x + bb.right - 2, bb.y + bb.down - _length, _warn_time);
			for (var i = 0; i < (bb.left + bb.right + 12) / 12; i++) {
				var _bone0 = Battle_CreateBone(bb.x - bb.left + i * 12, bb.y + bb.down, 0, 0);
				Anim_Create(_bone0, "length", 0, 0, 0, _length, 10, _warn_time);
				Anim_Create(_bone0, "length", 0, 0, _length, -_length, 10, _warn_time + _extend_time);
			}
			break;
	}
}