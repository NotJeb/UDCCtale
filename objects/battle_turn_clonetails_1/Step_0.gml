// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(10, 430, 60)) {
	Battle_Slam(choose(DIR.DOWN, DIR.LEFT, DIR.RIGHT, DIR.UP));
	
	Battle_CreateBoneWall(DIR.DOWN, 55, 30, 20);
	Battle_CreateBoneWall(DIR.LEFT, 55, 30, 20);
	Battle_CreateBoneWall(DIR.RIGHT, 55, 30, 20);
	Battle_CreateBoneWall(DIR.UP, 55, 30, 20);
}