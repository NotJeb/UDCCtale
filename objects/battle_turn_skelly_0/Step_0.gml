// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
	var _bone0 = Battle_CreateBone(bb.x - 70, bb.y - 70, 74 * sqrt(2), 180, 0, 40);
	Anim_Create(_bone0, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 180, -90, 40);
}
if (Battle_Repeat(0, 300, 5)) {
	var _x_start = bb.x + cos(time * (pi / 42)) * 450;
	var _y_start = bb.y + sin(time * (pi / 42)) * 450;
	var _x_end = bb.x + cos(time * (pi / 42)) * 100;
	var _y_end = bb.y + sin(time * (pi / 42)) * 100;
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
if (Battle_Repeat(360, 540, 30)) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x - 136, bb.y - 145 + i * 60, 100, 0, 0, 80);
		Anim_Create(_bone0, "x", 0, 0, bb.x - 136, 272, 80);
	}
}