// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(0, 260, 4)) {
	var _x_start = bb.x + cos(time * (pi / 32)) * 450;
	var _y_start = bb.y + sin(time * (pi / 32)) * 450;
	var _x_end = bb.x + cos(time * (pi / 32)) * 100;
	var _y_end = bb.y + sin(time * (pi / 32)) * 100;
	var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
	Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 40, 20, 1, 2);
}
if (Battle_Repeat(320, 920, 40)) {
	var _dir = choose(DIR.DOWN, DIR.LEFT, DIR.RIGHT, DIR.UP);
	Battle_Slam(_dir);
	Battle_CreateBoneWall(_dir, 30, 20, 20);
}