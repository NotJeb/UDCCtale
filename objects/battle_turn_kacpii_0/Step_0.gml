// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130 + 65, 65, 130, 130);
}
if (Battle_Repeat(0, 1200, 20)) {
	var _x = random_range(100, 540);
	var _y = random_range(100, 380);
	var _angle = point_direction(_x, _y, bs.x, bs.y);
	Battle_CreateGB(random(640), -50, _angle - 180, _x, _y, _angle, 40, 30, 2, choose(1, 2));
}