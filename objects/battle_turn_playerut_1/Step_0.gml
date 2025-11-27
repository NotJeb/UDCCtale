// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(30, 330, 30)) {
	var _x = bb.x + random_range(-50, 50);
	Battle_CreateGB(_x, -50, 270 - 180, _x, bb.y - 100, 270, 30, 10, 20, 1, 1);
	
	var _y = bb.y + random_range(-50, 50);
	Battle_CreateGB(-50, _y, 0 - 180, bb.x - 100, _y, 0, 30, 10, 20, 1, 1);
}
if (Battle_Repeat(10, 250, 60)) {
	var _y = bb.y + random_range(-50, 50);
	var _angle = random(360);
	var _bone0 = Battle_CreateBone(bb.x - 85, _y, 30, _angle, 0, 120, 10);
	_bone0.direction = 0;
	_bone0.speed = 170 / 120;
	_bone0.rotation = choose(-1, 1);
}
if (time == 370) {
	Battle_BoardTransform(65, 65, 130, 130);
}
if (Battle_Repeat(360, 660, 10)) {
	if (choose(false, true)) {
		var _x = bb.x + random_range(-50, 50);
		Battle_CreateGB(_x, -50, 270 - 180, _x, bb.y - 100, 270, 30, 10, 20, 1, 1);
	}
	else {
		var _y = bb.y + random_range(-50, 50);
		Battle_CreateGB(-50, _y, 0 - 180, bb.x - 165, _y, 0, 30, 10, 20, 1, 1);
	}
}