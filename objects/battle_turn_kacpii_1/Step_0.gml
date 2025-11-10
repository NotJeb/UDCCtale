// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_Slam(DIR.DOWN);
}
if (Battle_Repeat(20, 340, 90)) {
	var _fire0 = Battle_CreateFireball(bb.x - 80, bb.y + 65, 0, 0, 50, 1);
	Anim_Create(_fire0, "x", 0, 0, bb.x - 80, 145, 50);
	
	var _fire1 = Battle_CreateFireball(bb.x + 80, bb.y + 65, 0, 0, 50, 1);
	Anim_Create(_fire1, "x", 0, 0, bb.x + 80, -145, 50);
	
	for (var i = 0; i < 3; i++) {
		var _fire2 = Battle_CreateFireball(bb.x - 80, bb.y + 65 - 23 - 16 - i * 23, 0, 0, 50, 1);
		Anim_Create(_fire2, "x", 0, 0, bb.x - 80, 145, 50);
		
		var _fire3 = Battle_CreateFireball(bb.x + 80, bb.y + 65 - 23 - 16 - i * 23, 0, 0, 50, 1);
		Anim_Create(_fire3, "x", 0, 0, bb.x + 80, -145, 50);
	}
}
if (Battle_Repeat(42, 362, 90)) {
	for (var i = 0; i < 5; i++) {
		var _fire0 = Battle_CreateFireball(bb.x - 80, bb.y + 65 - i * 23, 0, 1, 50, 1);
		Anim_Create(_fire0, "x", 0, 0, bb.x - 80, 145, 50);
		
		var _fire1 = Battle_CreateFireball(bb.x + 80, bb.y + 65 - i * 23, 0, 1, 50, 1);
		Anim_Create(_fire1, "x", 0, 0, bb.x + 80, -145, 50);
	}
}
if (Battle_Repeat(65, 385, 90)) {
	for (var i = 0; i < 2; i++) {
		var _fire0 = Battle_CreateFireball(bb.x - 80, bb.y + 65 - i * 23, 0, 0, 50, 1);
		Anim_Create(_fire0, "x", 0, 0, bb.x - 80, 145, 50);
		
		var _fire1 = Battle_CreateFireball(bb.x + 80, bb.y + 65 - i * 23, 0, 0, 50, 1);
		Anim_Create(_fire1, "x", 0, 0, bb.x + 80, -145, 50);
	}
	
	for (var i = 0; i < 2; i++) {
		var _fire2 = Battle_CreateFireball(bb.x - 80, bb.y + 65 - 23 * 2 - 16 - i * 23, 0, 0, 50, 1);
		Anim_Create(_fire2, "x", 0, 0, bb.x - 80, 145, 50);
		
		var _fire3 = Battle_CreateFireball(bb.x + 80, bb.y + 65 - 23 * 2 - 16 - i * 23, 0, 0, 50, 1);
		Anim_Create(_fire3, "x", 0, 0, bb.x + 80, -145, 50);
	}
}
if (Battle_Repeat(87, 407, 90)) {
	for (var i = 0; i < 5; i++) {
		var _fire0 = Battle_CreateFireball(bb.x - 80, bb.y + 65 - i * 23, 0, 2, 50, 1);
		Anim_Create(_fire0, "x", 0, 0, bb.x - 80, 145, 50);
		
		var _fire1 = Battle_CreateFireball(bb.x + 80, bb.y + 65 - i * 23, 0, 2, 50, 1);
		Anim_Create(_fire1, "x", 0, 0, bb.x + 80, -145, 50);
	}
}
if (time == 390) {
	Battle_Slam(DIR.UP);
}
if (time == 400) {
	Battle_CreateGB(bb.x - 370, bb.y - 370, 315 + 180, bb.x - 100, bb.y - 100, 315, 30, 20, 2, 2, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x + 370, bb.y - 370, 225 + 180, bb.x + 100, bb.y - 100, 225, 30, 20, 2, 2, ENEMY_NAME_SKELLY);
}
if (time == 410) {
	Battle_CreateFireballWall(DIR.UP, 2, 10, 30);
}
if (time == 440) {
	Battle_Slam(DIR.DOWN);
}
if (time == 450) {
	Battle_CreateGB(bb.x - 370, bb.y - 370, 315 + 180, bb.x - 100, bb.y - 100, 315, 30, 20, 2, 2, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x + 370, bb.y - 370, 225 + 180, bb.x + 100, bb.y - 100, 225, 30, 20, 2, 2, ENEMY_NAME_SKELLY);
}
if (time == 460) {
	Battle_CreateFireballWall(DIR.DOWN, 2, 10, 30);
}
if (time == 490) {
	Battle_CreateFireballWall(DIR.LEFT, 2, 20, 60);
	Battle_CreateFireballWall(DIR.RIGHT, 2, 20, 60);
}
if (time == 515) {
	for (var i = 0; i < 5; i++) {
		var _fire0 = Battle_CreateFireball(bb.x - 80, bb.y + 65 - i * 23, 0, 1, 30, 1);
		Anim_Create(_fire0, "x", 0, 0, bb.x - 80, 145, 30);
		
		var _fire1 = Battle_CreateFireball(bb.x + 80, bb.y + 65 - i * 23, 0, 1, 30, 1);
		Anim_Create(_fire1, "x", 0, 0, bb.x + 80, -145, 30);
	}
}