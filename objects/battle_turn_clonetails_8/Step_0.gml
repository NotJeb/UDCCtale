// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_Slam(DIR.DOWN);
	
	var _side = choose(DIR.LEFT, DIR.RIGHT);
	Battle_CreateBoneWall(DIR.DOWN, 50, 30, 20);
	Battle_CreateBoneWall(DIR.UP, 50, 30, 20);
	Battle_CreateBoneWall(_side, 75, 30, 20);
	
	var _event0 = function(_side) {
		var _bone0 = Battle_CreateBone(bb.x + (_side == DIR.LEFT ? 75 : -75), bb.y + 65, 130, 0, 1, 30);
		Anim_Linear(_bone0, 150, 30, _side);
	}
	Delay_Event(_event0, 30, [_side]);
}
if (Battle_Repeat(70, 850, 40)) {
	var _bone0 = Battle_CreateBone(bb.x, bb.y + 70, 75, 90, 0, 60);
	Anim_Linear(_bone0, 140, 60, DIR.UP);
	
	var _bone1 = Battle_CreateBone(bb.x, bb.y - 70, 75, 270, 0, 60);
	Anim_Linear(_bone1, 140, 60, DIR.DOWN);
}
if (time == 320) {
	Battle_CreateGB(bb.x, bb.y - 370, 270 + 180, bb.x, bb.y - 100, 270, 30, 10, 20, 1, 2, 0, ENEMY_NAME_SKELLY);
}
if (time == 360) {
	Battle_Slam(DIR.UP);
}
if (time == 860) {
	var _side = choose(DIR.LEFT, DIR.RIGHT);
	Battle_CreateBoneWall(DIR.DOWN, 50, 30, 20);
	Battle_CreateBoneWall(DIR.UP, 50, 30, 20);
	Battle_CreateBoneWall(_side, 75, 30, 20);
	
	var _event0 = function(_side) {
		var _bone0 = Battle_CreateBone(bb.x + (_side == DIR.LEFT ? 75 : -75), bb.y + 65, 130, 0, 1, 30);
		Anim_Linear(_bone0, 150, 30, _side);
	}
	Delay_Event(_event0, 30, [_side]);
}