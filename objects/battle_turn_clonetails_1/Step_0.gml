// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_Slam(DIR.DOWN);
	
	Battle_CreateBoneWall(DIR.LEFT, 57, 20, 520);
	Battle_CreateBoneWall(DIR.RIGHT, 57, 20, 520);
}
if (Battle_Repeat(35, 505, 25)) {
	var _bone0 = Battle_CreateBone(bb.x - 70, bb.y - 65, 100, 180, 0, 30);
	_bone0.image_index = 1;
	Anim_Create(_bone0, "x", 0, 0, bb.x - 70, 140, 30);
	
	var _bone1 = Battle_CreateBone(bb.x + 70, bb.y + 65, 15, 0, 0, 30);
	_bone1.image_index = 1;
	Anim_Create(_bone1, "x", 0, 0, bb.x + 70, -140, 30);
}