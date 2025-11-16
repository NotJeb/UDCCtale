// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(10, 370, 48)) {
	Battle_Slam(choose(DIR.DOWN, DIR.LEFT, DIR.RIGHT, DIR.UP));
	
	Battle_CreateBoneWall(DIR.DOWN, 55, 28, 20);
	Battle_CreateBoneWall(DIR.LEFT, 55, 28, 20);
	Battle_CreateBoneWall(DIR.RIGHT, 55, 28, 20);
	Battle_CreateBoneWall(DIR.UP, 55, 28, 20);
}
if (time == 390) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
}
if (Battle_Repeat(405, 525, 30)) {
	var _bone0 = Battle_CreateBone(bb.x - 75, bb.y - 70, 75, 90, 0, 40);
	Anim_Create(_bone0, "y", 0, 0, bb.y - 70, 140, 40);
	
	var _bone1 = Battle_CreateBone(bb.x + 75, bb.y + 70, 75, 270, 0, 40);
	Anim_Create(_bone1, "y", 0, 0, bb.y + 70, -140, 40);
}
if (time == 555) {
	var _bone0 = Battle_CreateBone(bb.x + 75, bb.y - 70, 75, 270, 0, 40);
	Anim_Create(_bone0, "y", 0, 0, bb.y - 70, 140, 40);
	
	var _bone1 = Battle_CreateBone(bb.x - 75, bb.y + 70, 75, 90, 0, 40);
	Anim_Create(_bone1, "y", 0, 0, bb.y + 70, -140, 40);
}
if (time == 580) {
	Battle_Slam(DIR.LEFT);
}
if (time == 600) {
	bs.impact = 1;
	bs.dir = DIR.RIGHT;
	
	Battle_BoardTransform(50, 50, 335, 335, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (Battle_Repeat(600, 1340)) {
	bs.x += ((bb.x - 100) - bs.x) / 20;
	bs.move = 0;
}
if (Battle_Repeat(630, 960, 3)) {
	var _length = sin((time - 630) * (pi / 24)) * 25;
	
	var _bone0 = Battle_CreateBone(bb.x + 340, bb.y - 60, 47 + _length, 180, 0, 60);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 340, -660, 60);
	
	var _bone1 = Battle_CreateBone(bb.x + 340, bb.y + 60, 47 - _length, 0, 0, 60);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 340, -660, 60);
}
if (Battle_Repeat(990, 1230, 40)) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x + 340 + i * 12, bb.y + 60, 87, 0, 0, 80);
		Anim_Create(_bone0, "x", 0, 0, bb.x + 340 + i * 12, -718, 80);
		_bone0.custom = 1;
		_bone0.mode = 1;
	}
}
if (Battle_Repeat(1010, 1250, 40)) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x + 340 + i * 12, bb.y - 60, 87, 180, 0, 80);
		Anim_Create(_bone0, "x", 0, 0, bb.x + 340 + i * 12, -718, 80);
		_bone0.custom = 1;
		_bone0.mode = 1;
	}
}
if (Battle_Repeat(1270, 1294, 3)) {
	var _length = 5 + (time - 1270) * 2;
	
	var _bone0 = Battle_CreateBone(bb.x + 340, bb.y - 60, _length, 180, 0, 80);
	Anim_Create(_bone0, "x", 0, 0, bb.x + 340, -660, 80);
	
	var _bone1 = Battle_CreateBone(bb.x + 340, bb.y + 60, _length, 0, 0, 80);
	Anim_Create(_bone1, "x", 0, 0, bb.x + 340, -660, 80);
}
if (time == 1340) {
	bs.move = abs((bb.x + 65 - bs.x) / 20);
	
	Battle_BoardTransform(50, 50, 335, 65, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (time == 1360) {
	Battle_CreateBoneWall(DIR.RIGHT, 60, 30, 30);
}
if (time == 1420) {
	Battle_Flash();
}
if (time == 1439) {
	Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
	Battle_SetSoul(battle_soul_red);
	
	bs.x = bb.x;
	bs.y = bb.y;
}
if (Battle_Repeat(1440, 1890, 4)) {
	var _siner = (time - 1440) * (pi / 32);
	var _x_start = bb.x + cos(_siner) * 450;
	var _y_start = bb.y + sin(_siner) * 450;
	var _x_end = bb.x + cos(_siner) * 100;
	var _y_end = bb.y + sin(_siner) * 100;
	var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
	Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 40, 10, 20, 1, 2, ENEMY_NAME_SKELLY);
}
if (Battle_Repeat(1890, 2340, 4)) {
	for (var i = 0; i < 2; i++) { 
		var _siner = (time - 1440) * (-pi / 64) + (i == 0 ? pi / 2 : 0);
		var _x_start = bb.x + cos(_siner) * 450;
		var _y_start = bb.y + sin(_siner) * 450;
		var _x_end = bb.x + cos(_siner) * 100;
		var _y_end = bb.y + sin(_siner) * 100;
		var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
		Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 40, 10, 20, 1, 2, ENEMY_NAME_SKELLY);
	}
}
if (time == 2395) {
	Battle_SetSoul(battle_soul_blue);
	alarm[0] = 1;
}