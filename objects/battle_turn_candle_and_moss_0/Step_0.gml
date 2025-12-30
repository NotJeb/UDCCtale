// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_Slam(DIR.LEFT);
	
	for (var i = 0; i < 11; i++) {
		var _edge0 = Battle_CreateEdge(bb.x - 90, bb.y - 80 + i * 15, 270, 0, 135);
		
		if (i % 2 == 0) {
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 90, 85, 30);
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x - 5, -85, 30, 30);
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 90, 130, 30, 60);
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x + 40, -130, 30, 90);
		}
		else {
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 90, 130, 30, 15);
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x + 40, -130, 30, 45);
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 90, 85, 30, 75);
			Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x - 5, -85, 30, 105);
		}
	}
}
if (time == 55) {
	battle_enemy.follow_board = false;
	Anim_Create(bb, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 0, 135, 45);
}
if (time == 85) {
	var _cutout0 = Battle_CreateBoardCutout(180, 0, 100, 100, bb.x, bb.y - 100, 135);
	Anim_Create(_cutout0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y - 100, 65, 45);
	Anim_Create(_cutout0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y - 35, 65, 30, 45);
	Anim_Create(_cutout0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 30, -130, 60, 75);
	
	var _cutout1 = Battle_CreateBoardCutout(0, 180, 100, 100, bb.x, bb.y + 100, 165);
	Anim_Create(_cutout1, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y + 100, -65, 45);
	Anim_Create(_cutout1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 35, 65, 30, 45);
	Anim_Create(_cutout1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 100, -130, 60, 75);
	Anim_Create(_cutout1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 30, 130, 30, 135);
}
if (time == 130) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
}
if (Battle_Repeat(130, 202, 24)) {
	var _edge0 = Battle_CreateEdge(bb.x + 5, bb.y + 90, 270, 0, 30, 1);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 90, -180, 30);
}
if (Battle_Repeat(142, 214, 24)) {
	var _edge0 = Battle_CreateEdge(bb.x - 5, bb.y + 90, 90, 0, 30);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 90, -180, 30);
}