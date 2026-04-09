// Inherit the parent event
event_inherited();

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
	
	bs.x = bb.x + 57;
	bs.y = bb.y + 57;
	
	Battle_SetSoul(battle_soul_blue);
	bs.dir = DIR.DOWN;
}
if (time == 1225) {
	bs.x = bb.x + 57;
	bs.y = bb.y + 57;
}
if (time == 1235) {
	for (var i = 0; i < 27; i++) {
		var _edge0 = Battle_CreateEdge(bb.x - 75 + i * 15, bb.y + 75, 0, 0, 1 + ceil(6 * i), 1);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y + 75, -70, 20, i);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y + 5, 70, (i % 2 == 0) ? 40 : 30, 20 + i);
		_edge0.direction = DIR.LEFT;
		_edge0.speed = 2.5;
		
		var _edge1 = Battle_CreateEdge(bb.x + 75, bb.y - 75 + i * 15, 90, 0, 1 + ceil(6 * i));
		Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x + 75, -70, 20, i);
		Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x + 5, 70, (i % 2 == 0) ? 40 : 30, 20 + i);
		_edge1.direction = DIR.UP;
		_edge1.speed = 2.5;
	}
}
if (time == 1250) {
	Battle_CreateSlash(bb.x - 40, bb.y, 45);
	Battle_CreateSlash(bb.x + 40, bb.y, 45);
}
if (time == 1255) {
	for (var i = 0; i < 20; i++) {
		var _edge0 = Battle_CreateEdge(bb.x + 75 - i * 15, bb.y - 75, 180, 0, 1 + ceil(6 * i), 1);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y - 75, 70, 20, i);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 5, -70, (i % 2 == 0) ? 40 : 30, 20 + i);
		_edge0.direction = DIR.RIGHT;
		_edge0.speed = 2.5;
		
		var _edge1 = Battle_CreateEdge(bb.x - 75, bb.y + 75 - i * 15, 270, 0, 1 + ceil(6 * i));
		Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 75, 70, 20, i);
		Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x - 5, -70, (i % 2 == 0) ? 40 : 30, 20 + i);
		_edge1.direction = DIR.DOWN;
		_edge1.speed = 2.5;
	}
}
if (time == 1280) {
	Battle_CreateSlash(bb.x - 40, bb.y, 135);
	Battle_CreateSlash(bb.x + 40, bb.y, 135);
}
if (time == 1320) {
	Battle_Flash();
}
if (time == 1339) {
	bs.x = bb.x;
	bs.y = bb.y - 57;
	
	Battle_SetSoul(battle_soul_blue);
	bs.dir = DIR.UP;
}
if (time == 1340) {
	bs.x = bb.x;
	bs.y = bb.y - 57;
}
if (time == 1352) {
	var _edge0 = Battle_CreateEdge(bb.x - 75, bb.y - 65, 0, 1, 40);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x - 75, 150, 40);
	
	var _edge1 = Battle_CreateEdge(bb.x + 75, bb.y + 65, 180, 2, 40);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x + 75, -150, 40);
}
if (time == 1350) {
	for (var i = 0; i < 10; i++) {
		var _edge0 = Battle_CreateEdge(0, 0, 180, 0, 240);
		_edge0.custom = 0;
		_edge0.x_center = bb.x;
		_edge0.y_center = bb.y;
		_edge0.circ_distance = 70;
		_edge0.tangental_offset = -75 + i * 15;
		var _circ_delay = (i < 5 ? 5 - i : i - 5) * 2;
		Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 70, -65, 30);
		Anim_Create(_edge0, "tangental_offset", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, -75 + i * 15, 85 - i * 15, 30, 10 + _circ_delay);
		Anim_Create(_edge0, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 180, (i - 5) * 36, 30, 10 + _circ_delay);
		Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 5, -5, 30, 50);
		Anim_Create(_edge0, "tangental_offset", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 10, 20, 30, 50);
	}
}
if (time == 1393) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
}
if (time == 1395) {
	Battle_CreateSlash(bb.x, bb.y, 0);
	Battle_CreateSlash(bb.x, bb.y, 90);
}
if (time == 1440) {
	Battle_Flash();
}
if (time == 1459) {
	bs.x = bb.x;
	bs.y = bb.y;
}
if (time == 1460) {
	bs.x = bb.x;
	bs.y = bb.y;
}
if (Battle_Repeat(1460, 1580, 5)) {
	var _angle = (time - 1460) * (20 / 5);
	Battle_CreateSlash(bb.x, bb.y, _angle);
}
if (Battle_Repeat(1490, 1580, 60)) {
	var _angle = (time - 1510) * (20 / 5);
	
	var _edge0 = Battle_CreateEdge(0, 0, _angle, ((time - 1460) % 60 == 0 ? 1 : 2), 60);
	_edge0.custom = 0;
	_edge0.x_center = bb.x;
	_edge0.y_center = bb.y;
	_edge0.circ_distance = 70;
	_edge0.tangental_offset = -100;
	_edge0.rotation = 2;
	Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 70, -105, 30);
	Anim_Create(_edge0, "tangental_offset", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, -100, 200, 60);
	
	var _edge1 = Battle_CreateEdge(0, 0, _angle + 180, ((time - 1460) % 60 == 0 ? 2 : 1), 60);
	_edge1.custom = 0;
	_edge1.x_center = bb.x;
	_edge1.y_center = bb.y;
	_edge1.circ_distance = 70;
	_edge1.tangental_offset = -100;
	_edge1.rotation = 2;
	Anim_Create(_edge1, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 70, -105, 30);
	Anim_Create(_edge1, "tangental_offset", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, -100, 200, 60);
}
if (Battle_Repeat(1475, 1580, 60)) {
	var _edge0 = Battle_CreateEdge(bb.x - 75, bb.y + 25, 0, 0, 40);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x - 75, 150, 40);
	
	var _edge1 = Battle_CreateEdge(bb.x + 75, bb.y + 25, 0, 0, 40, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x + 75, -150, 40);
	
	var _edge2 = Battle_CreateEdge(bb.x - 75, bb.y - 25, 180, 0, 40, 1);
	Anim_Create(_edge2, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x - 75, 150, 40);
	
	var _edge3 = Battle_CreateEdge(bb.x + 75, bb.y - 25, 180, 0, 40);
	Anim_Create(_edge3, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.x + 75, -150, 40);
	
	var _edge4 = Battle_CreateEdge(bb.x + 25, bb.y - 75, 90, 0, 40);
	Anim_Create(_edge4, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y - 75, 150, 40);
	
	var _edge5 = Battle_CreateEdge(bb.x + 25, bb.y + 75, 90, 0, 40, 1);
	Anim_Create(_edge5, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 75, -150, 40);
	
	var _edge6 = Battle_CreateEdge(bb.x - 25, bb.y - 75, 270, 0, 40, 1);
	Anim_Create(_edge6, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y - 75, 150, 40);
	
	var _edge7 = Battle_CreateEdge(bb.x - 25, bb.y + 75, 270, 0, 40);
	Anim_Create(_edge7, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 75, -150, 40);
}
if (time == 1570) {
	var _sword0 = Battle_CreateProjectile(bb.x + 320, bb.y - 320, 800, spr_battle_effect_sword, 135, 0, 10);
	Anim_Linear(_sword0, 450, 10, 225);
}
if (time == 1580) {
	fader.color = c_white;
	Fader_Fade(1, 0, 20);
	
	audio_play_sound(snd_boom, 0, 0);
	
	instance_destroy(battle_bullet);
	
	battle_ui.hp_display = 1;
	
	with (all) {
		if (object_index != battle_board && object_get_parent(object_index) != battle_soul && object_index != camera) {
			old_x = x;
			old_y = y;
			x -= 640;
			y += 640;
		}
	}
	
	bs.x = 370 + 57;
	bs.y = 190 - 57;
}
if (time == 1581) {
	bs.x = 370 + 57;
	bs.y = 190 - 57;
}
if (Battle_Repeat(1580, 1940)) {
	siner += pi;
	var _offset1 = sin(siner / 30) * 1;
	var _offset2 = sin(siner / 60) * 5;
	
	bb.x = 370 + _offset1 + _offset2 + random_range(-1, 1);
	bb.y = 190 + _offset1 - _offset2 + random_range(-1, 1);
}
if (Battle_Repeat(1580, 1940, 3)) {
	var _x = 0;
	var _y = random_range(0, 640+480);
	var _line = instance_create_depth(_x, _y, 0, battle_effect_line);
	_line.direction = random_range(43, 47);
	_line.length = random_range(13, 17);
	_line.speed = random_range(19, 21);
	_line.image_alpha = random_range(0.3, 1);
	_line.image_blend = make_color_rgb(random_range(225, 255), random_range(225, 255), random_range(225, 255));
	_line.alarm[0] = 50;
}
if (Battle_Repeat(1585, 1601, 16)) {
	var _edge0 = Battle_CreateEdge(bbx - 75, bby + 75, 45, 0, 30);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 75, 140, 30);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bby + 75, -140, 30);
}
if (Battle_Repeat(1593, 1609, 16)) {
	var _edge0 = Battle_CreateEdge(bbx - 75, bby + 75, 225, 0, 30, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 75, 140, 30);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bby + 75, -140, 30);
}
if (time == 1628) {
	var _edge0 = Battle_CreateEdge(bbx + 85, bby - 85, 90, 0, 40, 1);
	Anim_Create(_edge0, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 90, 90, 40);
	_edge0.x_center = bbx + 85;
	_edge0.y_center = bby - 85;
	_edge0.tag = 1;
	
	var _edge1 = Battle_CreateEdge(bbx + 85, bby - 85, 180, 0, 40);
	Anim_Create(_edge1, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 180, -90, 40);
	_edge1.x_center = bbx + 85;
	_edge1.y_center = bby - 85;
	_edge1.tag = 1;
}
if (Battle_Repeat(1625, 1700)) {
	with (battle_bullet_edge) {
		if (tag == 1) {
			x = x_center + lengthdir_x(105 * sqrt(2), image_angle + 90);
			y = y_center + lengthdir_y(105 * sqrt(2), image_angle + 90);
		}
	}
}
if (time == 1635) {
	for (var i = 0; i < 3; i++) {
		var _edge0 = Battle_CreateEdge(-1000, -1000, 60 + i * 120, 0, 40);
		_edge0.custom = 0;
		_edge0.x_center = bbx - 100;
		_edge0.y_center = bby + 100;
		_edge0.circ_distance = 25;
		_edge0.rotation = 3 * (3 / 4);
		Anim_Create(_edge0, "x_center", 0, 0, bbx - 100, 200, 40);
		Anim_Create(_edge0, "y_center", 0, 0, bby + 100, -200, 40);
	}
}
if (time == 1640) {
	Battle_CreateSlash(bbx, bby, 45);
}
if (time == 1660) {
	var _edge0 = Battle_CreateEdge(bbx - 85, bby + 85, 270, 1, 40, 1);
	Anim_Create(_edge0, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 270, 90, 40);
	_edge0.x_center = bbx - 85;
	_edge0.y_center = bby + 85;
	_edge0.tag = 1;
	
	var _edge1 = Battle_CreateEdge(bbx - 85, bby + 85, 0, 2, 40);
	Anim_Create(_edge1, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 0, -90, 40);
	_edge1.x_center = bbx - 85;
	_edge1.y_center = bby + 85;
	_edge1.tag = 1;
}
if (time == 1650) {
	for (var i = 0; i < 3; i++) {
		var _edge0 = Battle_CreateEdge(-1000, -1000, 80 + i * 120, 0, 40);
		_edge0.custom = 0;
		_edge0.x_center = bbx - 100;
		_edge0.y_center = bby + 100;
		_edge0.circ_distance = 35;
		_edge0.rotation = -3 * (3 / 4);;
		Anim_Create(_edge0, "x_center", 0, 0, bbx - 100, 200, 40);
		Anim_Create(_edge0, "y_center", 0, 0, bby + 100, -200, 40);
	}
}
if (Battle_Repeat(1670, 1690, 20)) {
	var _edge0 = Battle_CreateEdge(bbx - 85, bby + 85, 0, 0, 80);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 85, 170, 80);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bby + 85, -170, 80);
}
if (Battle_Repeat(1680, 1720, 20)) {
	var _edge0 = Battle_CreateEdge(bbx - 85, bby + 85, 180, 0, 40, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 85, 170, 40);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bby + 85, -170, 40);
}
if (time == 1728) {
	var _edge0 = Battle_CreateEdge(bbx, bby + 85, 315, 0, 30);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bby + 85, -85, 20);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bbx, -85, 20, 10);
	
	var _edge1 = Battle_CreateEdge(bbx, bby - 85, 135, 0, 30);
	Anim_Create(_edge1, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bby - 85, 85, 20);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bbx, 85, 20, 10);
}
if (Battle_Repeat(1725, 1745, 5)) {
	var _x = bbx - 50 + (time - 1725) * (25 / 5);
	var _y = bby - 50 + (time - 1725) * (25 / 5);
	Battle_CreateSlash(_x, _y, 45);
}
if (time == 1748) {
	var _edge0 = Battle_CreateEdge(bbx + 85, bby, 45, 0, 30, 1);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bbx + 85, -85, 20);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bby, 85, 20, 10);
	
	var _edge1 = Battle_CreateEdge(bbx - 85, bby, 225, 0, 30, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bbx - 85, 85, 20);
	Anim_Create(_edge1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bby, -85, 20, 10);
}
if (Battle_Repeat(1725, 1740, 15)) {
	var _edge0 = Battle_CreateEdge(bbx - 225, bby, 45, 1, 120);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 225, 255, 120);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bby, -255, 120);
}
if (Battle_Repeat(1755, 1770, 15)) {
	var _edge0 = Battle_CreateEdge(bbx - 225, bby, 45, 2, 60);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 225, 255, 60);
	Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bby, -255, 60);
}
if (time == 1790) {
	Battle_Slam(DIR.DOWN);
}
if (time == 1795) {
	for (var i = 0; i < 11; i++) {
		var _edge0 = Battle_CreateEdge(bb.x - 85 + i * 15, bb.y + 85, 0, 0, 100 - i);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.y + 85, -60, 20, i);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 25, 15, 20, i + 20);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bb.y + 40, -15, 20, (10 - i) + 50);
		Anim_Create(_edge0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y + 25, 60, 20, (10 - i) + 70);
	}
}
if (time == 1805) {
	var _cutout0 = Battle_CreateBoardCutout(65, 0, 15, 15, bbx - 105, bby + 95, 80);
	Anim_Create(_cutout0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 105, 130, 40);
	Anim_Create(_cutout0, "up", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 55, 10, 40);
	Anim_Create(_cutout0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx + 25, -130, 40, 40);
	_cutout0.tag = 1
	_cutout0.x_previous = _cutout0.x;
	
	var _edge0 = Battle_CreateEdge(bbx - 85, bby - 65, 0, 2, 40);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 85, 170, 40);
	
	var _edge1 = Battle_CreateEdge(bbx + 85, bby - 65, 0, 1, 40, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx + 85, -170, 40);
}
if (Battle_Repeat(1805, 1945)) {
	with (battle_board_cutout) {
		if (tag == 1) {
			angle = clamp(x - x_previous, -5, 5);
			x_previous = x;
		}
	}
}
if (Battle_Repeat(1805, 1861, 2)) {
	var _gap = 30;
	var _width = 40;
	var _speed = 20;
	
	var _circ = sin((time - 1805) * (pi / _speed));
	var _dist = (_gap / sqrt(2)) / 2;
	var _offset = _circ * (_width / sqrt(2)) / 2;
	
	var _edge0 = Battle_CreateEdge(bbx - 85 + _dist + _offset, bby + 85 + _dist + _offset, 45, 0, 30);
	Anim_Create(_edge0, "x", 0, 0, bbx - 85 + _dist + _offset, 170, 30);
	Anim_Create(_edge0, "y", 0, 0, bby + 85 + _dist + _offset, -170, 30);
	
	var _edge1 = Battle_CreateEdge(bbx - 85 - _dist + _offset, bby + 85 - _dist + _offset, 225, 0, 30, 1);
	Anim_Create(_edge1, "x", 0, 0, bbx - 85 - _dist + _offset, 170, 30);
	Anim_Create(_edge1, "y", 0, 0, bby + 85 - _dist + _offset, -170, 30);
}
if (time == 1875) {
	var _cutout0 = Battle_CreateBoardCutout(65, 0, 15, 15, bbx + 105, bby + 95, 80);
	Anim_Create(_cutout0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx + 105, -130, 40);
	Anim_Create(_cutout0, "up", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 55, 10, 40);
	Anim_Create(_cutout0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 25, 130, 40, 40);
	_cutout0.tag = 1
	_cutout0.x_previous = _cutout0.x;
	
	var _edge0 = Battle_CreateEdge(bbx - 85, bby - 65, 0, 1, 40);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 85, 170, 40);
	
	var _edge1 = Battle_CreateEdge(bbx + 85, bby - 65, 0, 2, 40, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx + 85, -170, 40);
}
if (time == 1905) {
	var _edge0 = Battle_CreateEdge(bbx - 85, bby - 30, -20, 0, 40);
	Anim_Create(_edge0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx - 85, 200, 40);
	
	var _edge1 = Battle_CreateEdge(bbx + 85, bby - 30, 20, 0, 40, 1);
	Anim_Create(_edge1, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, bbx + 85, -200, 40);
}
if (time == 1935) {
	Battle_SetSoul(battle_soul_red);
	audio_play_sound(snd_ding, 0, 0);
}
if (time == 1940) {
	Anim_Create(bb, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x, 320 - bb.x, 10);
	Anim_Create(bb, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y, 320 - bb.y, 10);
	
	battle_button_fight.x = 320 - 640 - battle_button_fight.sprite_width / 2;
	battle_button_fight.y = 320 + 640 - battle_button_fight.sprite_height / 2;
	battle_button_fight.depth = DEPTH_BATTLE.UI_HIGH;
	
	with (all) { 
		if (object_index != battle_board && object_get_parent(object_index) != battle_soul && object_index != camera && variable_instance_exists(id, "old_x")) {
			Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, x, 640, 10);
			Anim_Create(id, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, y, -640, 10);
		}
	}
}
if (Battle_Repeat(1940, 1949)) {
	with (battle_effect_line) {
		image_alpha -= 1 / 10;
	}
}
if (time == 1949) {
	Camera_Shake(4, 4, 4, 4);
	
	audio_play_sound(snd_dong, 0, 0);
	
	var _effect_blur = instance_create_depth(0, 0, 0, battle_effect_blur);
	_effect_blur.effect_intensity = 8;
	Anim_Create(_effect_blur, "effect_intensity", ANIM_TWEEN.SINE, ANIM_EASE.IN, 8, -8, 6);
	
	battle_ui.hp_display = 0;
}
if (time == 1955) {
	instance_destroy(battle_effect_blur);
}
if (time == 1950) {
	for (var i = 0; i < 10; i++) {
		var _edge0 = Battle_CreateEdge(-1000, -1000, i * 36, 0, 120, 1);
		_edge0.custom = 0;
		_edge0.x_center = bb.x;
		_edge0.y_center = bb.y;
		_edge0.circ_distance = 100;
		_edge0.tangental_offset = 30;
		Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 100, -110, 30);
	}
}
if (time == 1960) {
	for (var i = 0; i < 10; i++) {
		var _edge0 = Battle_CreateEdge(-1000, -1000, i * 36 + 18, 0, 120, 1);
		_edge0.custom = 0;
		_edge0.x_center = bb.x;
		_edge0.y_center = bb.y;
		_edge0.circ_distance = 100;
		_edge0.tangental_offset = 30;
		Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 100, -60, 30);
	}
}
if (time == 1970) {
	Battle_CreateSlash(bb.x, bb.y, 0);
	Battle_CreateSlash(bb.x, bb.y, 90);
}
if (time >= 1950) {
	if (battle_button_fight.image_index == 1 && Input_IsPressed(INPUT.CONFIRM)) {
		audio_play_sound(snd_slice, 0, 0);
		instance_destroy(battle_bullet);
		fader.color = c_black;
		fader.alpha = 1;
	}
}