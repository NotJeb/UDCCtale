function Battle_BoardTransform(_up, _down, _left, _right, _x = battle_board.x, _y = battle_board.y, _time = 10, _anim_type = {tween : ANIM_TWEEN.SINE, ease : ANIM_EASE.IN_OUT}, _board = battle_board) {
	with (_board) {
		if (_time > 0) {
		    Anim_Create(id, "up", _anim_type.tween, _anim_type.ease, up, _up - up, _time);
		    Anim_Create(id, "down", _anim_type.tween, _anim_type.ease, down, _down - down, _time);
		    Anim_Create(id, "left", _anim_type.tween, _anim_type.ease, left, _left - left, _time);
		    Anim_Create(id, "right", _anim_type.tween, _anim_type.ease, right, _right - right, _time);
		    Anim_Create(id, "x", _anim_type.tween, _anim_type.ease, x, _x - x, _time);
		    Anim_Create(id, "y", _anim_type.tween, _anim_type.ease, y, _y - y, _time);
		}
		else {
			up = _up;
			down = _down;
			left = _left;
			right = _right;
			x = _x;
			y = _y;
		}
	}
}