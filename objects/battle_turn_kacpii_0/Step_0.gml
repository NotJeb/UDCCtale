// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130 + 65, 65, 130, 130);
}
if (time == 20) {
	var _board0 = Battle_CreateBoardCutout(20, 20, 20, 20, bb.x, bb.y - 130 - 95);
	Anim_Create(_board0, "angle", 0, 0, 0, 720, 240);
	Anim_Create(_board0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y - 130 - 95, 130 + 95, 120);
	Anim_Create(_board0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y, -130, 120, 120);
}