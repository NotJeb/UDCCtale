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
	
	var _bone0 = Battle_CreateBone(bb.x + 340, bb.y - 55, 41 + _length, 180, 0, 40);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 340, -660, 40);
	
	var _bone1 = Battle_CreateBone(bb.x + 340, bb.y + 55, 41 - _length, 0, 0, 40);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 340, -660, 40);
}
if (Battle_Repeat(380, 620, 20)) {
	for (var i = 0; i < 4; i++) {
		var _side = (time - 380) % 40 == 0;
		var _bone0 = Battle_CreateBone(bb.x + 340 + i * 12, bb.y + (_side ? -55 : 55), 0, (_side ? 180 : 0), 0, 40);
		Anim_Create(_bone0, "x", 0, 0, bb.x + 340 + i * 12, -718, 40);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 30, 32, 4, i);
	}
}
if (Battle_Repeat(620, 647, 3)) {
	var _length = ((time - 620) / 3) * 5;
	
	var _bone0 = Battle_CreateBone(bb.x + 340, bb.y - 55, _length, 180, 0, 40);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 340, -660, 40);
	
	var _bone1 = Battle_CreateBone(bb.x + 340, bb.y + 55, _length, 0, 0, 40);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 340, -660, 40);
}
if (time == 660) {
	bs.move = abs((bb.x + 65 - bs.x) / 10);
	
	Battle_BoardTransform(50, 50, 335, 65, bb.x, bb.y, 10, {tween : 0, ease : 0});
}
if (time == 700) {
	bs.impact = 1;
	bs.dir = DIR.LEFT;
	
	Battle_BoardTransform(50, 50, 335, 325, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (Battle_Repeat(700, 1280)) {
	bs.x += ((bb.x + 100) - bs.x) / 20;
	bs.move = 0;
}
if (Battle_Repeat(730, 970, 3)) {
	var _length = sin(((time - 730) / 3) * (pi / 8)) * 25;
	
	var _bone0 = Battle_CreateBone(bb.x - 340, bb.y - 55, 41 + _length, 180, 0, 40);
	Anim_Create(_bone0, "x", 0, 0, bb.x - 340, 660, 40);
	
	var _bone1 = Battle_CreateBone(bb.x - 340, bb.y + 55, 41 - _length, 0, 0, 40);
	Anim_Create(_bone1, "x", 0, 0, bb.x - 340, 660, 40);
}
if (Battle_Repeat(800, 950, 48)) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + 50, 100, 0, 1, 30);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 30);
	}
}
if (Battle_Repeat(1000, 1240, 20)) {
	for (var i = 0; i < 4; i++) {
		var _side = (time - 1000) % 40 == 0;
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + (_side ? -55 : 55), 0, (_side ? 180 : 0), 0, 40);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 40);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 30, 32, 4, i);
	}
}
if (Battle_Repeat(1010, 1210, 40)) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + 50, 100, 0, 1, 30);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 30);
	}
}
if (Battle_Repeat(1240, 1267, 3)) {
	var _length = ((time - 1240) / 3) * 5;
	
	var _bone0 = Battle_CreateBone(bb.x - 340, bb.y - 55, _length, 180, 0, 40);
	Anim_Create(_bone0, "x", 0, 0, bb.x - 340, 660, 40);
	
	var _bone1 = Battle_CreateBone(bb.x - 340, bb.y + 55, _length, 0, 0, 40);
	Anim_Create(_bone1, "x", 0, 0, bb.x - 340, 660, 40);
}
if (time == 1275) {
	for (var i = 0; i < 2; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 340 - i * 12, bb.y + 50, 100, 0, 1, 30);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 340 - i * 12, 718, 30);
	}
}
if (time == 1280) {
	bs.move = abs((bb.x - 65 - bs.x) / 10);
	
	Battle_BoardTransform(50, 50, 65, 335, bb.x, bb.y, 10, {tween : 0, ease : 0});
}
if (time == 1290) {
	var _gb0 = Battle_CreateGB(bb.x - 370, bb.y + 370, 45 + 180, bb.x - 100, bb.y + 100, 45, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb1 = Battle_CreateGB(bb.x + 370, bb.y + 370, 135 + 180, bb.x + 100, bb.y + 100, 135, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb2 = Battle_CreateGB(bb.x + 370, bb.y - 370, 225 + 180, bb.x + 100, bb.y - 100, 225, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb3 = Battle_CreateGB(bb.x - 370, bb.y - 370, 315 + 180, bb.x - 100, bb.y - 100, 315, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	
	var _event_0 = function(_gb0, _gb1, _gb2, _gb3) {
		_gb0.y = bb.y;
		_gb0.angle = 0;
		
		_gb1.x = bb.x;
		_gb1.angle = 90;
		
		_gb2.y = bb.y;
		_gb2.angle = 180;
		
		_gb3.x = bb.x;
		_gb3.angle = 270;
	}
	Delay_Event(_event_0, 35, [_gb0, _gb1, _gb2, _gb3]);
}
if (time == 1300) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
	
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 1315) {
	var _gb0 = Battle_CreateGB(bb.x - 370, bb.y + 50, 0 + 180, bb.x - 100, bb.y + 50, 0, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb1 = Battle_CreateGB(bb.x + 50, bb.y + 370, 90 + 180, bb.x + 50, bb.y + 100, 90, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb2 = Battle_CreateGB(bb.x + 370, bb.y - 50, 180 + 180, bb.x + 100, bb.y - 50, 180, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	var _gb3 = Battle_CreateGB(bb.x - 50, bb.y - 370, 270 + 180, bb.x - 50, bb.y - 100, 270, 40, 30, 2, 2, ENEMY_NAME_SKELLY);
	
	var _event_0 = function(_gb0, _gb1, _gb2, _gb3) {
		_gb0.x = bb.x - 100;
		_gb0.y = bb.y + 100;
		_gb0.angle = 45;
		
		_gb1.x = bb.x + 100;
		_gb1.y = bb.y + 100;
		_gb1.angle = 135;
		
		_gb2.x = bb.x + 100;
		_gb2.y = bb.y - 100;
		_gb2.angle = 225;
		
		_gb3.x = bb.x - 100;
		_gb3.y = bb.y - 100;
		_gb3.angle = 315;
	}
	Delay_Event(_event_0, 35, [_gb0, _gb1, _gb2, _gb3]);
}