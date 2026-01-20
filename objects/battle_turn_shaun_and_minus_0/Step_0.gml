// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130, 65, 185, 185);
}
if (time == 30) {
	inst_chips = Battle_CreateChips(bb.x, -50, 100, 0, 0, 600);
	Anim_Create(inst_chips, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, -50, bb.y - 150, 60);
	Anim_Create(inst_chips, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 200, 150 - bb.y, 60, 510);
}
if (Battle_Repeat(30, 610)) {
	siner += pi / 120;
	chips_angle_speed = tan(sin(siner)) * 20;
	chips_angle += chips_angle_speed;
}
if (Battle_Repeat(30, 610, 2)) {
	var _chips0 = Battle_CreateChips(inst_chips.x, inst_chips.y, 25, chips_angle, 3, 716 / 10);
	_chips0.direction = chips_angle;
	_chips0.speed = 10;
}
if (Battle_Repeat(40, 610, 20)) {
	for (var i = -30; i < 60; i += 30) {
		var _angle = point_direction(inst_chips.x, inst_chips.y, bs.x, bs.y) + i;
		var _chips0 = Battle_CreateChips(inst_chips.x, inst_chips.y, 50, _angle, 3, 716 / 7);
		_chips0.direction = _angle;
		_chips0.speed = 7;
	}
}