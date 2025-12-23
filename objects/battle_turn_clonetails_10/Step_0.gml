// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 185, 185);
}
if (time == 10) {
	Battle_Slam(DIR.DOWN);
}
if (Battle_Repeat(10, 910, 4)) {
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y + 65, 20, 0, 0, 134);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 3;
}