// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(0, 300, 5)) {
	var _x_start = bb.x + cos(time * (pi / 40)) * 450;
	var _y_start = bb.y + sin(time * (pi / 40)) * 450;
	var _x_end = bb.x + cos(time * (pi / 40)) * 100;
	var _y_end = bb.y + sin(time * (pi / 40)) * 100;
	var _angle = point_direction(_x_end, _y_end, bb.x, bb.y);
	Battle_CreateGB(_x_start, _y_start, -_angle, _x_end, _y_end, _angle, 30, 20, 2, 2);
}
if (Battle_Repeat(300, 540, 10)) {
	Battle_CreateGB(0, 0, 0, random(640), random(480), random(360), 30, 30);
}