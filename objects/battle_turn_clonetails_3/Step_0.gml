// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 185, 185);
}
if (Battle_Repeat(0, 900, 12)) {
	var _bone0 = Battle_CreateBone(bb.x - 200, bb.y + 75, 40, 0, 0, 400);
	_bone0.direction = DIR.RIGHT;
	_bone0.speed = 1;
}
if (Battle_Repeat(0, 900, 60)) {
	var _platform0 = Battle_CreatePlatform(bb.x - 202, bb.y + 25, 44, 370, 0, 1);
	Anim_Create(_platform0, "x", 0, 0, bb.x - 202, 365, 180);
	Anim_Create(_platform0, "x", 0, 0, bb.x + 163, -365, 180, 180);
}
if (Battle_Repeat(40, 900, 70)) {
	var _bone0 = Battle_CreateBone(bb.x - 200, bb.y + 75, 80, 0, 0, 200);
	_bone0.direction = DIR.RIGHT;
	_bone0.speed = 2;
	_bone0.image_index = 1;
	
	var _bone1 = Battle_CreateBone(bb.x - 200, bb.y - 75, 30, 180, 0, 200);
	_bone1.direction = DIR.RIGHT;
	_bone1.speed = 2;
	_bone1.image_index = 1;
	
	var _bone2 = Battle_CreateBone(bb.x + 200, bb.y + 75, 80, 0, 0, 200);
	_bone2.direction = DIR.LEFT;
	_bone2.speed = 2;
	_bone2.image_index = 1;
	
	var _bone3 = Battle_CreateBone(bb.x + 200, bb.y - 75, 30, 180, 0, 200);
	_bone3.direction = DIR.LEFT;
	_bone3.speed = 2;
	_bone3.image_index = 1;
}
if (Battle_Repeat(140, 900, 70)) {
	var _bone0 = Battle_CreateBone(bb.x - 200, bb.y + 65, 130, 0, 2, 40);
	_bone0.direction = DIR.RIGHT;
	_bone0.speed = 10;
}