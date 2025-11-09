// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(0, 300, 10)) {
	Battle_CreateSlash(bs.x, bs.y, random(360));
	
	var _edge0 = Battle_CreateEdge(bb.x - 80, bb.y + 65, 180, 30, choose(1, 2), 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x - 80, 145, 30);
}