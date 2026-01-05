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
if (time == 110) {
	var _edge0 = Battle_CreateEdge(bb.x + 110, bb.y - 25, 0, 2, 45, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x + 110, -205, 45);
	
	var _edge1 = Battle_CreateEdge(bb.x - 110, bb.y + 25, 180, 1, 45, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x - 110, 205, 45);
}
if (time == 130) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
}
if (Battle_Repeat(130, 202, 24)) {
	var _length = time == 202 ? 3 : (time - 130) * (3 / 24);
	var _edge0 = Battle_CreateEdge(bb.x + _length, bb.y + 110, 270, 0, 30, 1);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 110, -205, 30);
}
if (Battle_Repeat(142, 214, 24)) {
	var _length = time == 214 ? 3 : (time - 142) * (3 / 24);
	var _edge0 = Battle_CreateEdge(bb.x - _length, bb.y + 110, 90, 0, 30);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 110, -205, 30);
}
if (time == 200) {
	Battle_CreateSlash(bb.x, bb.y, 45);
	Battle_CreateSlash(bb.x, bb.y, 135);
	
	Anim_Create(bb, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 135, 135, 45);
}
if (time == 217) {
	Battle_CreateSlash(bb.x, bb.y + 40, 0);
	Battle_CreateSlash(bb.x, bb.y - 40, 0);
	Battle_CreateSlash(bb.x + 40, bb.y, 90);
	Battle_CreateSlash(bb.x - 40, bb.y, 90);
}
if (time == 225) {
	var _edge0 = Battle_CreateEdge(bb.x + 85, bb.y + 45, 0, 0, 30, 1);
	Anim_Linear(_edge0, 155, 30, DIR.LEFT);
	
	var _edge1 = Battle_CreateEdge(bb.x - 85, bb.y - 45, 180, 0, 30, 1);
	Anim_Linear(_edge1, 155, 30, DIR.RIGHT);
	
	var _edge2 = Battle_CreateEdge(bb.x + 45, bb.y - 85, 90, 0, 30, 1);
	Anim_Linear(_edge2, 155, 30, DIR.DOWN);
	
	var _edge3 = Battle_CreateEdge(bb.x - 45, bb.y + 85, 270, 0, 30, 1);
	Anim_Linear(_edge3, 155, 30, DIR.UP);
}
if (time == 234) {
	Battle_CreateSlash(bb.x, bb.y, 0);
	Battle_CreateSlash(bb.x, bb.y, 90);
}
if (time == 235) {
	var _edge0 = Battle_CreateEdge(bb.x - 85, bb.y + 15, 0, 0, 30);
	Anim_Linear(_edge0, 155, 30, DIR.RIGHT);
	
	var _edge1 = Battle_CreateEdge(bb.x + 85, bb.y - 15, 180, 0, 30);
	Anim_Linear(_edge1, 155, 30, DIR.LEFT);
	
	var _edge2 = Battle_CreateEdge(bb.x + 15, bb.y + 85, 90, 0, 30);
	Anim_Linear(_edge2, 155, 30, DIR.UP);
	
	var _edge3 = Battle_CreateEdge(bb.x - 15, bb.y - 85, 270, 0, 30);
	Anim_Linear(_edge3, 155, 30, DIR.DOWN);
}
if (time == 246) {
	bb.angle = 0;
}
if (time == 245) {
	var _edge0 = Battle_CreateEdge(bb.x + 85, bb.y - 5, 0, 1, 30, 1);
	Anim_Linear(_edge0, 155, 30, DIR.LEFT);
	
	var _edge1 = Battle_CreateEdge(bb.x - 85, bb.y + 5, 180, 1, 30, 1);
	Anim_Linear(_edge1, 155, 30, DIR.RIGHT);
	
	var _edge2 = Battle_CreateEdge(bb.x - 5, bb.y - 85, 90, 2, 30, 1);
	Anim_Linear(_edge2, 155, 30, DIR.DOWN);
	
	var _edge3 = Battle_CreateEdge(bb.x + 5, bb.y + 85, 270, 2, 30, 1);
	Anim_Linear(_edge3, 155, 30, DIR.UP);
}
if (time == 255) {
	for (var i = 0; i < 3; i++) {
		var _edge0 = Battle_CreateEdge(0, 0, i * 120, 0, 130);
		_edge0.custom = 0;
		_edge0.x_center = bb.x;
		_edge0.y_center = bb.y;
		_edge0.circ_distance = 70;
		_edge0.rotation = 2.5;
		Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 70, -70, 30);
		Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.IN, 0, 70, 30, 100);
	}
}
if (Battle_Repeat(280, 340, 30)) {
	var _angle = (time - 255) * 2.5;
	
	Battle_CreateSlash(bb.x, bb.y, 60 + _angle);
	Battle_CreateSlash(bb.x, bb.y, 180 + _angle);
	Battle_CreateSlash(bb.x, bb.y, 300 + _angle);
}
if (Battle_Repeat(285, 345, 30)) {
	var _angle = (time - 255) * 2.5;
	
	for (var i = 0; i < 3; i++) {
		var _edge0 = Battle_CreateEdge(0, 0, _angle + i * 120, (time == 315 ? 1 : 2), 20);
		_edge0.custom = 0;
		_edge0.x_center = bb.x;
		_edge0.y_center = bb.y;
		_edge0.circ_distance = 0;
		Anim_Create(_edge0, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _angle + i * 120, -70, 20);
	}
}
if (time == 380) {
	Battle_SetSoul(battle_soul_blue_corridor);
	battle_soul.impact = 1;
	battle_soul.dir = DIR.RIGHT;
	
	Battle_BoardTransform(50, 50, 320, 320, bb.x, bb.y, 30);
}
if (Battle_Repeat(380, 790, 3)) {
	var _y_offset = sin((time - 380) * (pi / 30)) * 25;
	var _edge0 = Battle_CreateEdge(655, bb.y - 10 + _y_offset, 180, 0, 60);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 655, -655, 60);
	
	var _edge1 = Battle_CreateEdge(655, bb.y + 10 + _y_offset, 0, 0, 60, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 655, -655, 60);
	
	if (time > 540) {
		Anim_Create(_edge0, "y", 0, 0, bb.y - 10 + _y_offset, random_range(15, 70), 6, 60 - (time - 540) / 6);
		Anim_Create(_edge0, "image_angle", 0, 0, 180, random_range(-15, 15), 6, 60 - (time - 540) / 6);
		
		Anim_Create(_edge1, "y", 0, 0, bb.y + 10 + _y_offset, random_range(-15, -70), 6, 60 - (time - 540) / 6);
		Anim_Create(_edge1, "image_angle", 0, 0, 0, random_range(-15, 15), 6, 60 - (time - 540) / 6);
	}
}
if (Battle_Repeat(400, 480, 20)) {
	var _x = 10 + (time - 400) * (155 / 20);
	Battle_CreateSlash(_x, bb.y - 80, 60);
}
if (Battle_Repeat(403, 483, 20)) {
	var _x = 10 + (time - 403) * (155 / 20);
	Battle_CreateSlash(_x, bb.y - 80, 90);
}
if (Battle_Repeat(406, 486, 20)) {
	var _x = 10 + (time - 406) * (155 / 20);
	Battle_CreateSlash(_x, bb.y - 80, 120);
}

if (Battle_Repeat(410, 470, 20)) {
	var _x = 87.5 + (time - 400) * (155 / 20);
	Battle_CreateSlash(_x, bb.y + 80, 60);
}
if (Battle_Repeat(413, 473, 20)) {
	var _x = 87.5 + (time - 403) * (155 / 20);
	Battle_CreateSlash(_x, bb.y + 80, 90);
}
if (Battle_Repeat(416, 476, 20)) {
	var _x = 87.5 + (time - 406) * (155 / 20);
	Battle_CreateSlash(_x, bb.y + 80, 120);
}

if (Battle_Repeat(400, 520, 60)) {
	var _cutout0 = Battle_CreateBoardCutout(70, 5, 20, 20, 670, bb.y, 60);
	Anim_Create(_cutout0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 670, -700, 60);
}
if (Battle_Repeat(430, 550, 60)) {
	var _cutout0 = Battle_CreateBoardCutout(5, 70, 20, 20, 670, bb.y, 60);
	Anim_Create(_cutout0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 670, -700, 60);
}
if (Battle_Repeat(440, 600, 40)) {
	var _edge0 = Battle_CreateEdge(655, bb.y - 50, 0, 2, 60, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 655, -670, 60);
	
	var _edge1 = Battle_CreateEdge(670, bb.y - 50, 0, 2, 60, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 670, -670, 60);
}
if (Battle_Repeat(460, 580, 40)) {
	var _color = time < 540 ? 2 : 1;
	var _edge0 = Battle_CreateEdge(655, bb.y + 50, 180, _color, 60);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 655, -670, 60);
	
	var _edge1 = Battle_CreateEdge(670, bb.y + 50, 180, _color, 60);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 670, -670, 60);
}
if (Battle_Repeat(815, 995, 30)) {
	var _edge0 = Battle_CreateEdge(675, bb.y + 9, 180 + 20, 0, 60);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 675, -695, 60);
	
	var _edge1 = Battle_CreateEdge(695, bb.y - 1, 180 + 20, 0, 60);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 695, -695, 60);
}
if (Battle_Repeat(830, 1010, 30)) {
	var _edge0 = Battle_CreateEdge(675, bb.y - 9, -20, 0, 60, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 675, -695, 60);
	
	var _edge1 = Battle_CreateEdge(695, bb.y + 1, -20, 0, 60, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 695, -695, 60);
}
if (Battle_Repeat(805, 985, 60)) {
	Battle_CreateSlash(bb.x, bb.y - 28, 0);
	Battle_CreateSlash(bb.x, bb.y + 28, 0);
	Battle_CreateSlash(bs.x, bb.y, 90);
}
if (Battle_Repeat(835, 1015, 60)) {
	var _x = 15 - (time - 835) * (73 / 60);
	Battle_CreateSlash(bb.x + _x, bb.y, 10);
	Battle_CreateSlash(bb.x + _x, bb.y, -10);
	Battle_CreateSlash(bb.x, bb.y - 40, 0);
	Battle_CreateSlash(bb.x, bb.y + 40, 0);
}
if (Battle_Repeat(1025, 1055, 30)) {
	var _multipler = (time - 1025) * (1 / 45);
	var _edge0 = Battle_CreateEdge(675, bb.y + 9 - _multipler * 6, 180 + 20, 0, 60 + _multipler * 20);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 675, -695, 60 + _multipler * 20);
	
	var _edge1 = Battle_CreateEdge(695, bb.y - 1 - _multipler * 6, 180 + 20, 0, 60 + _multipler * 20);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 695, -695, 60 + _multipler * 20);
}
if (Battle_Repeat(1040, 1070, 30)) {
	var _multipler = (time - 1025) * (1 / 45);
	var _edge0 = Battle_CreateEdge(675, bb.y - 9 + _multipler * 6, -20, 0, 60 + _multipler * 20, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 675, -695, 60 + _multipler * 20);
	
	var _edge1 = Battle_CreateEdge(695, bb.y + 1 + _multipler * 6, -20, 0, 60 + _multipler * 20, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 695, -695, 60 + _multipler * 20);
}
if (time == 1055) {
	bs.impact = 1;
}
if (Battle_Repeat(1055, 1130)) {
	if (bs.impact == 1)
		bs.x += (time - 1055) * (10 / 75);
	else {
		Battle_SetSoul(battle_soul_blue);
		bs.dir = DIR.RIGHT;
	}
}
if (time == 1130 && instance_exists(battle_soul_blue_corridor)) {
	Battle_Slam(DIR.RIGHT);
	
	Battle_BoardTransform(50, 50, 320, 195, bb.x, bb.y, 10);
}
if (time == 1140) {
	var _edge0 = Battle_CreateEdge(bb.x + 180, bb.y + 65, 90, 0, 30);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 65, -115, 30);
	
	var _edge1 = Battle_CreateEdge(bb.x + 120, bb.y - 65, 90, 1, 20, 1);
	Anim_Create(_edge1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y - 65, 115, 20);
}
if (time == 1155) {
	var _edge0 = Battle_CreateEdge(bb.x + 140, bb.y + 65, 90, 2, 20);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 65, -115, 20);
}
if (time == 1165) {
	var _edge0 = Battle_CreateEdge(bb.x + 100, bb.y - 65, 90, 0, 40, 1);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 65, 84, 40);
}
if (time == 1170) {
	var _edge0 = Battle_CreateEdge(bb.x + 125, bb.y + 65, 90, 2, 35);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 65, -115, 35);
}
if (time == 1175) {
	var _edge0 = Battle_CreateEdge(bb.x + 170, bb.y + 65, 90, 0, 40);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 65, -115, 40);
	
	var _edge1 = Battle_CreateEdge(bb.x + 195, bb.y + 50, 90, 1, 30);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x + 195, -95, 25);
}
if (time == 1205) {
	Battle_Flash();
}
if (time == 1224) {
	Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
	bs.x = bb.x;
	bs.y = bb.y;
	
	Battle_SetSoul(battle_soul_red);
}
if (time == 1225) {
	bs.x = bb.x;
	bs.y = bb.y;
}