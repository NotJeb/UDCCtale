// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(0, 300, 5)) {
	var _x_start = bb.x + cos(time * (pi / 44)) * 450;
	var _y_start = bb.y + sin(time * (pi / 44)) * 450;
	var _x_end = bb.x + cos(time * (pi / 44)) * 100;
	var _y_end = bb.y + sin(time * (pi / 44)) * 100;
	var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
	Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 30, 20, 2, 2);
}
if (time == 300) {
	Battle_BoardTransform(145, 65, 130, 130, bb.x, bb.y, 30);
}
if (Battle_Repeat(300, 540, 20)) {
	var _x = random_range(bb.x - 110, bb.x + 110);
	var _y = random_range(bb.y - 125, bb.y + 45);
	Battle_CreateGB(random(640), 0, 0, _x, _y, point_direction(_x, _y, bs.x, bs.y), 40, 30);
}
if (Battle_Repeat(340, 520, 60)) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 136, bb.y - 145 + i * 60, 30, 0, 0, 120);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 136, 272, 120);
		_bone0.rotation = 1;
		
		var _bone1 = Battle_CreateBone(bb.x + 136, bb.y - 115 + i * 60, 30, 0, 0, 120);
		Anim_Create(_bone1, "x", 0, 0, bb.x + 136, -272, 120);
		_bone1.rotation = -1;
	}
}
if (time == 590) {
	Battle_Flash();
	instance_destroy(battle_bullet);
	Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	bs.x = bb.x;
	bs.y = bb.y;
}
if (time == 630) {
	Battle_Slam(DIR.DOWN);
	
	Battle_CreateBoneWall(DIR.DOWN, 30, 20, 480);
	
	var _platform0 = Battle_CreatePlatform(bb.x, bb.y + 70, 30, 170, 0, 0);
	Anim_Create(_platform0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y + 70, -40, 20);
	Anim_Create(_platform0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y + 30, 40, 20, 150);
}
if (time == 660) {
	Battle_CreateBoneWall(DIR.LEFT, 30, 20, 90);
	Battle_Slam(DIR.LEFT);
}
if (time == 690) {
	Battle_CreateBoneWall(DIR.UP, 30, 20, 420);
	Battle_Slam(DIR.UP);
}
if (time == 720) {
	Battle_CreateBoneWall(DIR.RIGHT, 30, 20, 30);
	Battle_Slam(DIR.RIGHT);
}
if (time == 750) {
	Battle_Slam(DIR.DOWN);
}
if (Battle_Repeat(750, 1050, 30)) {
	var _platform0 = Battle_CreatePlatform(bb.x - 80, bb.y + 30, 30, 60, -10, 1);
	Anim_Create(_platform0, "x", 0, 0, bb.x - 80, 160, 60);
	
	var _platform1 = Battle_CreatePlatform(bb.x + 80, bb.y - 30, 30, 60, 170, 0);
	Anim_Create(_platform1, "x", 0, 0, bb.x + 80, -160, 60);
}
if (Battle_Repeat(750, 1050, 80)) {
	var _bone0 = Battle_CreateBone(bb.x - 70, bb.y + 65, 130, 0, choose(1, 2), 70);
	Anim_Create(_bone0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x - 70, 140, 70);
}
if (Battle_Repeat(790, 1050, 80)) {
	var _bone0 = Battle_CreateBone(bb.x + 70, bb.y + 65, 130, 0, choose(1, 2), 70);
	Anim_Create(_bone0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x + 70, -140, 70);
}
if (time == 870) {
	Battle_Slam(DIR.UP);
}