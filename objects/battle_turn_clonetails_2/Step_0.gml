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
if (Battle_Repeat(600, 900)) {
	bs.x += ((bb.x - 100) - bs.x) / 20;
	bs.move = 0;
}
if (Battle_Repeat(630, 780, 2)) {
	var _x = random_range(100, 540);
	var _y = random_range(100, 380);
	Battle_CreateGB(random(640), 0, 0, _x, _y, point_direction(_x, _y, bs.x, bs.y), 40, 20, 1, 2, ENEMY_NAME_SKELLY);
}
if (Battle_Repeat(630, 780, 6)) {
	var _x = random(640);
	var _bone0 = Battle_CreateBone(_x, -50, 100, 0, choose(1, 2), 120);
	_bone0.direction = point_direction(_x, -50, bs.x, bs.y);
	_bone0.speed = 10;
	_bone0.rotation = 5;
	_bone0.out = true;
	
	var _y = random(480);
	var _bone1 = Battle_CreateBone(690, _y, 100, 0, choose(1, 2), 120);
	_bone1.direction = point_direction(690, _y, bs.x, bs.y);
	_bone1.speed = 10;
	_bone1.rotation = -5;
	_bone1.out = true;
}
if (Battle_Repeat(633, 783, 6)) {
	var _x = random(640);
	var _bone0 = Battle_CreateBone(_x, 530, 100, 0, choose(1, 2), 120);
	_bone0.direction = point_direction(_x, 530, bs.x, bs.y);
	_bone0.speed = 10;
	_bone0.rotation = -5;
	_bone0.out = true;
	
	var _y = random(480);
	var _bone1 = Battle_CreateBone(-50, _y, 100, 0, choose(1, 2), 120);
	_bone1.direction = point_direction(-50, _y, bs.x, bs.y);
	_bone1.speed = 10;
	_bone1.rotation = 5;
	_bone1.out = true;
}
if (time == 900) {
	bs.move = abs((bb.x + 65 - bs.x) / 20);
	
	Battle_BoardTransform(50, 50, 335, 65, bb.x, bb.y, 20, {tween : 0, ease : 0});
}
if (time == 930) {
	Battle_Flash();
}
if (time == 949) {
	Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
	Battle_SetSoul(battle_soul_red);
	
	bs.x = bb.x;
	bs.y = bb.y;
}
if (Battle_Repeat(950, 1400, 4)) {
	var _siner = ((time - 950) / 4) * (pi / 8);
	var _x_start = bb.x + cos(_siner) * 450;
	var _y_start = bb.y + sin(_siner) * 450;
	var _x_end = bb.x + cos(_siner) * 100;
	var _y_end = bb.y + sin(_siner) * 100;
	var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
	Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 40, 20, 1, 2, ENEMY_NAME_SKELLY);
}
if (Battle_Repeat(1400, 1850, 4)) {
	for (var i = 0; i < 2; i++) { 
		var _siner = ((time - 950) / 4) * (-pi / 16) + (i == 0 ? pi / 2 : 0);
		var _x_start = bb.x + cos(_siner) * 450;
		var _y_start = bb.y + sin(_siner) * 450;
		var _x_end = bb.x + cos(_siner) * 100;
		var _y_end = bb.y + sin(_siner) * 100;
		var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
		Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 40, 20, 1, 2, ENEMY_NAME_SKELLY);
	}
}
if (time == 1905) {
	Battle_SetSoul(battle_soul_blue);
	alarm[0] = 1;
}