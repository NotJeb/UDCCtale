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
	Battle_Slam(DIR.LEFT);
}
if (time == 80) {
	bs.impact = 1;
	bs.dir = DIR.RIGHT;
	
	Battle_BoardTransform(50, 50, 335, 335, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (Battle_Repeat(80, 660)) {
	bs.x += ((bb.x - 100) - bs.x) / 20;
	bs.move = 0;
}
if (Battle_Repeat(110, 350, 3)) {
	var _length = sin(((time - 110) / 3) * (pi / 8)) * 25;
	
	var _bone0 = Battle_CreateBone(bb.x + 340, bb.y - 60, 47 + _length, 180, 0, 80);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 340, -660, 80);
	
	var _bone1 = Battle_CreateBone(bb.x + 340, bb.y + 60, 47 - _length, 0, 0, 80);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 340, -660, 80);
}
if (Battle_Repeat(380, 620, 20)) {
	for (var i = 0; i < 4; i++) {
		var _side = (time - 380) % 40 == 0;
		var _bone0 = Battle_CreateBone(bb.x + 340 + i * 12, bb.y + (_side ? -60 : 60), 33, (_side ? 180 : 0), 0, 80);
		Anim_Create(_bone0, "x", 0, 0, bb.x + 340 + i * 12, -718, 80);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 33, 35, 8, i * 2);
	}
}
if (Battle_Repeat(620, 647, 3)) {
	var _length = 7 + ((time - 620) / 3) * 5;
	
	var _bone0 = Battle_CreateBone(bb.x + 340, bb.y - 60, _length, 180, 0, 80);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 340, -660, 80);
	
	var _bone1 = Battle_CreateBone(bb.x + 340, bb.y + 60, _length, 0, 0, 80);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 340, -660, 80);
}
if (time == 690) {
	bs.move = abs((bb.x + 65 - bs.x) / 20);
	
	Battle_BoardTransform(50, 50, 335, 65, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (time == 730) {
	bs.impact = 1;
	bs.dir = DIR.LEFT;
	
	Battle_BoardTransform(50, 50, 335, 325, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (Battle_Repeat(730, 1310)) {
	bs.x += ((bb.x + 100) - bs.x) / 20;
	bs.move = 0;
}
if (Battle_Repeat(730, 970, 3)) {
	var _length = sin(((time - 730) / 3) * (pi / 8)) * 25;
	
	var _bone0 = Battle_CreateBone(bb.x - 340, bb.y - 60, 46 + _length, 180, 0, 80);
	Anim_Create(_bone0, "x", 0, 0, bb.x - 340, 660, 80);
	
	var _bone1 = Battle_CreateBone(bb.x - 340, bb.y + 60, 46 - _length, 0, 0, 80);
	Anim_Create(_bone1, "x", 0, 0, bb.x - 340, 660, 80);
}
if (Battle_Repeat(805, 955, 48)) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + 50, 100, 0, 1, 60);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 60);
	}
}
if (Battle_Repeat(1000, 1240, 20)) {
	for (var i = 0; i < 4; i++) {
		var _side = (time - 1000) % 40 == 0;
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + (_side ? -60 : 60), 32, (_side ? 180 : 0), 0, 80);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 80);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 32, 35, 4, i);
	}
}
if (Battle_Repeat(1015, 1255, 40)) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + 50, 100, 0, 1, 60);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 60);
	}
}
if (Battle_Repeat(1240, 1267, 3)) {
	var _length = 6 + ((time - 1240) / 3) * 5;
	
	var _bone0 = Battle_CreateBone(bb.x - 340, bb.y - 60, _length, 180, 0, 80);
	Anim_Create(_bone0, "x", 0, 0, bb.x - 340, 660, 80);
	
	var _bone1 = Battle_CreateBone(bb.x - 340, bb.y + 60, _length, 0, 0, 80);
	Anim_Create(_bone1, "x", 0, 0, bb.x - 340, 660, 80);
}
if (time == 1290) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + 50, 100, 0, 1, 60);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 60);
	}
}
if (time == 1320) {
	bs.move = abs((bb.x - 65 - bs.x) / 20);
	
	Battle_BoardTransform(50, 50, 65, 335, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (time == 1340) {
	var _gb0 = Battle_CreateGB(bb.x - 370, bb.y + 370, 45 + 180, bb.x - 100, bb.y + 100, 45, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb1 = Battle_CreateGB(bb.x + 370, bb.y + 370, 135 + 180, bb.x + 100, bb.y + 100, 135, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb2 = Battle_CreateGB(bb.x + 370, bb.y - 370, 225 + 180, bb.x + 100, bb.y - 100, 225, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb3 = Battle_CreateGB(bb.x - 370, bb.y - 370, 315 + 180, bb.x - 100, bb.y - 100, 315, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	
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
if (time == 1350) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
	
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 1368) {
	var _gb0 = Battle_CreateGB(bb.x - 370, bb.y + 50, 0 + 180, bb.x - 100, bb.y + 50, 0, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb1 = Battle_CreateGB(bb.x + 50, bb.y + 370, 90 + 180, bb.x + 50, bb.y + 100, 90, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb2 = Battle_CreateGB(bb.x + 370, bb.y - 50, 180 + 180, bb.x + 100, bb.y - 50, 180, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb3 = Battle_CreateGB(bb.x - 50, bb.y - 370, 270 + 180, bb.x - 50, bb.y - 100, 270, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	
	var _event_0 = function(_gb0, _gb1, _gb2, _gb3) {
		Anim_Create(_gb0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.x, bb.x - 100 - _gb0.x, 5);
		Anim_Create(_gb0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.y, bb.y + 100 - _gb0.y, 5);
		Anim_Create(_gb0, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb0.angle, 45 - _gb0.angle, 5);
		
		Anim_Create(_gb1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.x, bb.x + 100 - _gb1.x, 5);
		Anim_Create(_gb1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.y, bb.y + 100 - _gb1.y, 5);
		Anim_Create(_gb1, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb1.angle, 135 - _gb1.angle, 5);
		
		Anim_Create(_gb2, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.x, bb.x + 100 - _gb2.x, 5);
		Anim_Create(_gb2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.y, bb.y - 100 - _gb2.y, 5);
		Anim_Create(_gb2, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb2.angle, 225 - _gb2.angle, 5);
		
		Anim_Create(_gb3, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.x, bb.x - 100 - _gb3.x, 5);
		Anim_Create(_gb3, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.y, bb.y - 100 - _gb3.y, 5);
		Anim_Create(_gb3, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _gb3.angle, 315 - _gb3.angle, 5);
	}
	Delay_Event(_event_0, 30, [_gb0, _gb1, _gb2, _gb3]);
}