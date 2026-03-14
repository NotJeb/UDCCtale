// Inherit the parent event
event_inherited();

if (time == -1) {
	Battle_SetSoul(battle_soul_blue);
	bs.y = bb.y + 57;
}

if (Battle_Repeat(10, 850, 120)) {
	var _platform0 = Battle_CreatePlatform(bb.x + 235, bb.y - 65 + 130 / 3, 100, 240, 0, 1);
	Anim_Linear(_platform0, 470, 240, DIR.LEFT);
	
	var _platform1 = Battle_CreatePlatform(bb.x - 235, bb.y - 65 + (130 / 3) * 2, 100, 240, 0, 1);
	Anim_Linear(_platform1, 470, 240, DIR.RIGHT);
}
if (Battle_Repeat(30, 850, 25)) {
	var _y = choose(bb.y + 65, bb.y + 65 - (130 / 3) - 4.5, bb.y + 65 - (130 / 3) * 2 - 4.5);
	var _dir = choose(DIR.LEFT, DIR.RIGHT);
	
	var _bone0 = Battle_CreateBone((_dir == DIR.LEFT ? bb.x + 235 : bb.x - 235), _y, 130 / 3 - 9, 0, 0, 240);
	Anim_Linear(_bone0, 470, 240, _dir);
}
if (Battle_Repeat(100, 850, 60)) {
	var _x = random_range(bb.x - 175, bb.x + 175);
	Battle_CreateGB(_x, -50, 270 - 180, _x, bb.y - 100, 270, 40, 10, 30, 1, 2, 0);
}
if (Battle_Repeat(190, 670, 120)) {
	var _y = choose(bb.y + 45, bb.y + 45 - (130 / 3), bb.y + 45 - (130 / 3) * 2);
	if (choose(DIR.LEFT, DIR.RIGHT) == DIR.LEFT)
		Battle_CreateGB(-50, _y, 0 - 180, bb.x - 220, _y, 0, 40, 10, 30, 1, 2, 0);
	else
		Battle_CreateGB(690, _y, 180 - 180, bb.x + 220, _y, 180, 40, 10, 30, 1, 2, 0);
}
if (time == 850) {
	with (battle_bullet_bone) {
		var _y_change = choose(-180, 180);
		Anim_Create(id, "y", ANIM_TWEEN.BACK, ANIM_EASE.IN, y, _y_change, 75);
	}
	
	Battle_CreateBoneWall(DIR.UP, 130 / 3 - 4.5, 45, 45);
	Battle_CreateBoneWall(DIR.DOWN, 130 / 3 - 4.5, 45, 45);
}