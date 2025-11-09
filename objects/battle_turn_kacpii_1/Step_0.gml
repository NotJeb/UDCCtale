// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_Slam(DIR.DOWN);
}
if (Battle_Repeat(20, 340, 90)) {
	var _edge0 = Battle_CreateEdge(bb.x - 80, bb.y + 25, 180, 0, 50, 1);
	Anim_Create(_edge0, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _edge1 = Battle_CreateEdge(bb.x - 80, bb.y + 40, 0, 0, 50);
	Anim_Create(_edge1, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _edge2 = Battle_CreateEdge(bb.x + 80, bb.y + 25, 180, 0, 50);
	Anim_Create(_edge2, "x", 0, 0, bb.x + 80, -145, 50);
	
	var _edge3 = Battle_CreateEdge(bb.x + 80, bb.y + 40, 0, 0, 50, 1);
	Anim_Create(_edge3, "x", 0, 0, bb.x + 80, -145, 50);
}
if (Battle_Repeat(42, 362, 90)) {
	var _edge0 = Battle_CreateEdge(bb.x - 80, bb.y + 65, 180, 1, 50, 1);
	Anim_Create(_edge0, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _edge1 = Battle_CreateEdge(bb.x + 80, bb.y + 65, 180, 1, 50);
	Anim_Create(_edge1, "x", 0, 0, bb.x + 80, -145, 50);
}
if (Battle_Repeat(65, 385, 90)) {
	var _edge0 = Battle_CreateEdge(bb.x - 80, bb.y - 5, 180, 0, 50, 1);
	Anim_Create(_edge0, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _edge1 = Battle_CreateEdge(bb.x - 80, bb.y + 10, 0, 0, 50);
	Anim_Create(_edge1, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _edge2 = Battle_CreateEdge(bb.x + 80, bb.y - 5, 180, 0, 50);
	Anim_Create(_edge2, "x", 0, 0, bb.x + 80, -145, 50);
	
	var _edge3 = Battle_CreateEdge(bb.x + 80, bb.y + 10, 0, 0, 50, 1);
	Anim_Create(_edge3, "x", 0, 0, bb.x + 80, -145, 50);
}
if (Battle_Repeat(87, 407, 90)) {
	var _edge0 = Battle_CreateEdge(bb.x - 80, bb.y + 65, 180, 2, 50, 1);
	Anim_Create(_edge0, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _edge1 = Battle_CreateEdge(bb.x + 80, bb.y + 65, 180, 2, 50);
	Anim_Create(_edge1, "x", 0, 0, bb.x + 80, -145, 50);
}
if (time == 390) {
	Battle_Slam(DIR.UP);
}
if (time == 410) {
	for (var i = 0; i < 9; i++) {
		var _edge0 = Battle_CreateEdge(bb.x + 65 - i * 15, bb.y - 65, 180, 0, 40);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y - 65, 50, 20);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 15, -50, 20, 20);
	}
	
	Battle_CreateSlash(bb.x - 20, bb.y, 45);
	Battle_CreateSlash(bb.x, bb.y, 45);
	Battle_CreateSlash(bb.x + 20, bb.y, 45);
	
	Battle_CreateSlash(bb.x - 20, bb.y, 135);
	Battle_CreateSlash(bb.x, bb.y, 135);
	Battle_CreateSlash(bb.x + 20, bb.y, 135);
}
if (time == 445) {
	Battle_Slam(DIR.DOWN);
}
if (time == 465) {
	for (var i = 0; i < 9; i++) {
		var _edge0 = Battle_CreateEdge(bb.x - 65 + i * 15, bb.y + 65, 0, 0, 40);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y + 65, -50, 20);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y + 15, 50, 20, 20);
	}
	
	Battle_CreateSlash(bb.x - 20, bb.y, 45);
	Battle_CreateSlash(bb.x, bb.y, 45);
	Battle_CreateSlash(bb.x + 20, bb.y, 45);
	
	Battle_CreateSlash(bb.x - 20, bb.y, 135);
	Battle_CreateSlash(bb.x, bb.y, 135);
	Battle_CreateSlash(bb.x + 20, bb.y, 135);
}
if (time == 505) {
	for (var i = 0; i < 9; i++) {
		var _edge0 = Battle_CreateEdge(bb.x - 65, bb.y - 65 + i * 15, 270, 0);
		Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 65, 58, 30);
		_edge0.depth++;
	}
	
	for (var i = 0; i < 9; i++) {
		var _edge1 = Battle_CreateEdge(bb.x + 65, bb.y + 65 - i * 15, 90, 0);
		Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x + 65, -58, 30);
		_edge1.depth++;
	}
}
if (time == 530) {
	var _edge0 = Battle_CreateEdge(bb.x - 80, bb.y + 65, 180, 1, 30, 1);
	Anim_Create(_edge0, "x", 0, 0, bb.x - 80, 145, 30);
	
	var _edge1 = Battle_CreateEdge(bb.x + 80, bb.y + 65, 180, 1, 30);
	Anim_Create(_edge1, "x", 0, 0, bb.x + 80, -145, 30);
}