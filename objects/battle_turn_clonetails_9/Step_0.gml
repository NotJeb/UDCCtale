// Inherit the parent event
event_inherited();

if (time == 10) {
	Battle_Slam(DIR.DOWN);
	
	var _side = choose(DIR.LEFT, DIR.RIGHT);
	Battle_CreateBoneWall(DIR.DOWN, 50, 30, 20);
	Battle_CreateBoneWall(DIR.UP, 50, 30, 20);
	Battle_CreateBoneWall(_side, 75, 30, 20);
	Battle_CreateBoneWall((_side + 180) % 360, 55, 35, 15, 1);
}
if (Battle_Repeat(70, 850, 40)) {
	var _bone0 = Battle_CreateBone(bb.x, bb.y + 75, 75, 90, 0, 60);
	Anim_Linear(_bone0, 150, 60, DIR.UP);
	
	var _bone1 = Battle_CreateBone(bb.x, bb.y - 75, 75, 270, 0, 60);
	Anim_Linear(_bone1, 150, 60, DIR.DOWN);
}
if (Battle_Repeat(75, 850, 80)) {
	var _bone0 = Battle_CreateBone(bb.x - 65, bb.y - 75, 130, 90, 1, 30);
	Anim_Linear(_bone0, 150, 30, DIR.DOWN);
}
if (time == 320) {
	Battle_CreateGB(bb.x, bb.y - 370, 270 + 180, bb.x, bb.y - 100, 270, 30, 10, 10, 2, 1, 0);
}
if (time == 360) {
	Battle_Slam(DIR.UP);
}
if (time == 900) {
	var _side = choose(DIR.LEFT, DIR.RIGHT);
	Battle_CreateBoneWall(DIR.DOWN, 50, 30, 20);
	Battle_CreateBoneWall(DIR.UP, 50, 30, 20);
	Battle_CreateBoneWall(_side, 75, 30, 20);
	Battle_CreateBoneWall((_side + 180) % 360, 55, 35, 15, 1);
}