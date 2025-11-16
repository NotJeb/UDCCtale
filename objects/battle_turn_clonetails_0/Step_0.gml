// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
	Battle_Slam(DIR.DOWN);
}
if (time == 10) {
	var _length = 73;
	for (var i = 0; i < bb.left + bb.right + 12; i += 12) {
		var _bone0 = Battle_CreateBone(bb._frame_right_x - i, bb._frame_up_y + bb._frame_up_height - 10, 10, 180, 0, 50);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 10, _length, 25);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, _length + 10, -_length, 25, 25);
	}
}
if (time == 35) {
	var _length = 73;
	for (var i = 0; i < bb.left + bb.right + 12; i += 12) {
		var _bone0 = Battle_CreateBone(bb._frame_left_x + bb._frame_left_width + i, bb._frame_down_y + 10, 10, 0, 0, 50);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 10, _length, 25);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, _length + 10, -_length, 25, 25);
	}
}
if (time == 60) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
}
if (Battle_Repeat(60, 180, 5)) {
	var _length = sin((time - 60) * (pi / 25)) * 20;
	
	var _bone0 = Battle_CreateBone(bb.x + 70, bb.y - 75, 59 + _length, 180, 0, 30);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 70, -140, 30);
	
	var _bone1 = Battle_CreateBone(bb.x + 70, bb.y + 75, 59 - _length, 0, 0, 30);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 70, -140, 30);
}
if (Battle_Repeat(195, 315, 5)) {
	var _length = sin((time - 60) * (pi / 25)) * 20;
	
	var _bone0 = Battle_CreateBone(bb.x - 70, bb.y - 75, 59 + _length, 180, 0, 30);
	Anim_Create(_bone0, "x", 0, 0, bb.x - 70, 140, 30);

	var _bone1 = Battle_CreateBone(bb.x - 70, bb.y + 75, 59 - _length, 0, 0, 30);
	Anim_Create(_bone1, "x", 0, 0, bb.x - 70, 140, 30);
}
if (Battle_Repeat(197, 297, 25)) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 70 - i * 12, bb.y + 65, 130, 0, 1, 30);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 70 - i * 12, 152, 30);
	}
}
if (time == 310) {
	var _gb0 = Battle_CreateGB(bb.x - 370, bb.y + 370, 45 + 180, bb.x - 100, bb.y + 100, 45, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb1 = Battle_CreateGB(bb.x + 370, bb.y + 370, 135 + 180, bb.x + 100, bb.y + 100, 135, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb2 = Battle_CreateGB(bb.x + 370, bb.y - 370, 225 + 180, bb.x + 100, bb.y - 100, 225, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb3 = Battle_CreateGB(bb.x - 370, bb.y - 370, 315 + 180, bb.x - 100, bb.y - 100, 315, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	
	var _event_0 = function(_gb0, _gb1, _gb2, _gb3) {
		Anim_Create(_gb0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.y, bb.y - _gb0.y, 5);
		Anim_Create(_gb0, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.angle, 0 - _gb0.angle, 5);
		
		Anim_Create(_gb1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.x, bb.x - _gb1.x, 5);
		Anim_Create(_gb1, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.angle, 90 - _gb1.angle, 5);
		
		Anim_Create(_gb2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.y, bb.y - _gb2.y, 5);
		Anim_Create(_gb2, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.angle, 180 - _gb2.angle, 5);
		
		Anim_Create(_gb3, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.x, bb.x - _gb3.x, 5);
		Anim_Create(_gb3, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.angle, 270 - _gb3.angle, 5);
	}
	Delay_Event(_event_0, 30, [_gb0, _gb1, _gb2, _gb3]);
}
if (time == 341) {
	var _gb0 = Battle_CreateGB(bb.x - 370, bb.y, 0 + 180, bb.x - 100, bb.y, 0, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb1 = Battle_CreateGB(bb.x, bb.y + 370, 90 + 180, bb.x, bb.y + 100, 90, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb2 = Battle_CreateGB(bb.x + 370, bb.y, 180 + 180, bb.x + 100, bb.y, 180, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb3 = Battle_CreateGB(bb.x, bb.y - 370, 270 + 180, bb.x, bb.y - 100, 270, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	
	var _event_0 = function(_gb0, _gb1, _gb2, _gb3) {
		Anim_Create(_gb0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.y, bb.y + 100 - _gb0.y, 5);
		Anim_Create(_gb0, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.angle, 45 - _gb0.angle, 5);
		
		Anim_Create(_gb1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.x, bb.x + 100 - _gb1.x, 5);
		Anim_Create(_gb1, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.angle, 135 - _gb1.angle, 5);
		
		Anim_Create(_gb2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.y, bb.y - 100 - _gb2.y, 5);
		Anim_Create(_gb2, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.angle, 225 - _gb2.angle, 5);
		
		Anim_Create(_gb3, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.x, bb.x - 100 - _gb3.x, 5);
		Anim_Create(_gb3, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.angle, 315 - _gb3.angle, 5);
	}
	Delay_Event(_event_0, 30, [_gb0, _gb1, _gb2, _gb3]);
}
if (time == 372) {
	Battle_CreateGB(bb.x - 370, bb.y + 50, 0 + 180, bb.x - 100, bb.y + 50, 0, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x + 50, bb.y + 370, 90 + 180, bb.x + 50, bb.y + 100, 90, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x + 370, bb.y - 50, 180 + 180, bb.x + 100, bb.y - 50, 180, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x - 50, bb.y - 370, 270 + 180, bb.x - 50, bb.y - 100, 270, 30, 10, 30, 2, 2, ENEMY_NAME_SKELLY);
}
if (time == 408) {
	Battle_CreateGB(bb.x - 420, bb.y, 0 + 180, bb.x - 150, bb.y, 0, 30, 10, 60, 4, 4, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x, bb.y + 420, 90 + 180, bb.x, bb.y + 150, 90, 30, 10, 60, 4, 4, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x + 420, bb.y, 180 + 180, bb.x + 150, bb.y, 180, 30, 10, 60, 4, 4, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x, bb.y - 420, 270 + 180, bb.x, bb.y - 150, 270, 30, 10, 60, 4, 4, ENEMY_NAME_SKELLY);
}