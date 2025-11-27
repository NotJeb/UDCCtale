// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(185, 65, 185, 185);
}
if (Battle_Repeat(10, 810, 20)) {
	var _x = random_range(bb.x - 135, bb.x + 135);
	var _y = random_range(bb.y - 80, bb.y + 15);
	var _angle = point_direction(_x, _y, bs.x, bs.y);
	Battle_CreateGB(random(640), -50, _angle - 180, _x, _y, _angle, 40, 10, 20, 1, 2, 0, ENEMY_NAME_SKELLY);
}
if (time == 70) {
	var _length = sqrt(power(250, 2) + power(370, 2));
	
	var _bone0 = Battle_CreateBone(bb.x, bb.y - 60, 0, 0, 0, 780);
	Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, _length, 60);
	Anim_Create(_bone0, "origin", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, _length / 2, 60);
	Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 450, -_length, 60, 720);
	Anim_Create(_bone0, "origin", ANIM_TWEEN.SINE, ANIM_EASE.IN, 225, -_length / 2, 60, 720);
	_bone0.rotation = 0.75;
	
	var _bone1 = Battle_CreateBone(bb.x, bb.y - 60, 0, 0, 1, 780);
	Anim_Create(_bone1, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, _length, 60);
	Anim_Create(_bone1, "origin", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, _length / 2, 60);
	Anim_Create(_bone1, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 450, -_length, 60, 720);
	Anim_Create(_bone1, "origin", ANIM_TWEEN.SINE, ANIM_EASE.IN, 225, -_length / 2, 60, 720);
	_bone1.rotation = -0.75;
}