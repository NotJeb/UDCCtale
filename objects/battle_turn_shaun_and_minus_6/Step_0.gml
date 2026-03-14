// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
	
	battle_enemy_minus_dummy.follow_board = false;
	
	Anim_Create(battle_enemy_shaun_and_minus, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 320 - 80, 80, 30);
	Anim_Create(battle_enemy_minus_dummy, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 320 + 80, 50, 30);
	Anim_Create(battle_enemy_minus_dummy, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 240, -30, 30);
	Anim_Create(battle_enemy_minus_dummy, "image_alpha", 0, 0, 1, -0.5, 30);
}
if (time == 10) {
	Battle_CreateSword(bb.x - 75, bb.y - 43, 174, 0, 0);
	Battle_CreateSword(bb.x - 75, bb.y, 174, 1, 0);
	Battle_CreateSword(bb.x - 75, bb.y + 43, 174, 0, 0);
}
if (time == 35) {
	Battle_CreateSword(bb.x + 75, bb.y - 43, 174, 2, 180);
	Battle_CreateSword(bb.x + 75, bb.y, 174, 0, 180);
	Battle_CreateSword(bb.x + 75, bb.y + 43, 174, 2, 180);
}
if (time == 60) {
	Battle_CreateSword(bs.x + 75, bs.y, 174, 0, 180);
	Battle_CreateSword(bs.x - 75, bs.y, 174, 0, 0);
	Battle_CreateSword(bs.x, bs.y - 75, 174, 0, 270);
	Battle_CreateSword(bs.x, bs.y + 75, 174, 0, 90);
}
if (time == 85) {
	var _x1 = (bs.x < bb.x) ? -43 : 43;
	var _y1 = (bs.y < bb.y) ? -75 : 75;
	var _angle1 = (bs.y < bb.y) ? 270 : 90;
	var _x2 = (bs.x < bb.x) ? -75 : 75;
	var _y2 = (bs.y < bb.y) ? -43 : 43;
	var _angle2 = (bs.x < bb.x) ? 0 : 180;
	
	Battle_CreateSword(bb.x + _x1, bb.y + _y1, 174, 0, _angle1);
	Battle_CreateSword(bb.x, bb.y + _y1, 174, 0, _angle1);
	Battle_CreateSword(bb.x + _x2, bb.y + _y2, 174, 0, _angle2);
	Battle_CreateSword(bb.x + _x2, bb.y, 174, 0, _angle2);
	
	var _event0 = function(_x, _y) {
		Battle_CreateSword(bb.x + _x, bb.y + _y, 174, 0, (_y < 0) ? 270 : 90);
	}
	Delay_Event(_event0, 25, [-_x1, -_y1]);
}
if (time == 135) {
	var _y = (bs.y < bb.y) ? 75 : -75;
	var _angle = (bs.y < bb.y) ? 90 : 270;
	Battle_CreateSword(bb.x - 65, bb.y + _y, 174, 0, _angle);
	Battle_CreateSword(bb.x, bb.y + _y, 174, 0, _angle);
	Battle_CreateSword(bb.x + 65, bb.y + _y, 174, 0, _angle);
	
	var _event0 = function(_y, _angle) {
		Battle_CreateSword(bb.x + 130 / 6 + 3, bb.y + _y, 174, 3, _angle);
		Battle_CreateSword(bb.x - 130 / 6 - 3, bb.y + _y, 174, 3, _angle);
	}
	Delay_Event(_event0, 25, [-_y, 180 + _angle]);
	
	var _event1 = function(_y, _angle) {
		var _x;
		if (bs.x < bb.x - 130 / 6 - 3) _x = (bb.x - 130 / 6 + bb.x - 65 - 16) / 2;
		else if (bs.x > bb.x + 130 / 6 - 3) _x = (bb.x + 130 / 6 + bb.x + 65 + 16) / 2;
		else _x = bb.x;
		
		Battle_CreateSword(_x, bb.y + _y, 174, 2, _angle);
	}
	Delay_Event(_event1, 50, [_y, _angle]);
	
	var _event2 = function(_y, _angle) {
		var _x;
		if (bs.x < bb.x - 130 / 6 - 3) _x = (bb.x - 130 / 6 + bb.x - 65 - 16) / 2;
		else if (bs.x > bb.x + 130 / 6 - 3) _x = (bb.x + 130 / 6 + bb.x + 65 + 16) / 2;
		else _x = bb.x;
		
		Battle_CreateSword(_x, bb.y + _y, 174, 1, _angle);
	}
	Delay_Event(_event2, 75, [-_y, 180 + _angle]);
	
	var _event3 = function(_y, _angle) {
		var _x;
		if (bs.x < bb.x - 130 / 6 - 3) _x = (bb.x - 130 / 6 + bb.x - 65 - 16) / 2;
		else if (bs.x > bb.x + 130 / 6 - 3) _x = (bb.x + 130 / 6 + bb.x + 65 + 16) / 2;
		else _x = bb.x;
		
		Battle_CreateSword(_x, bb.y + _y, 174, 2, _angle);
	}
	Delay_Event(_event3, 100, [_y, _angle]);
}
if (time == 260) {
	var _x = (bs.x < bb.x) ? 75 : -75;
	var _angle = (bs.x < bb.x) ? 180 : 0;
	Battle_CreateSword(bb.x + _x, bb.y + 130 / 6 + 3, 174, 3, _angle);
	Battle_CreateSword(bb.x + _x, bb.y - 130 / 6 - 3, 174, 3, _angle);
}
if (time == 285) {
	var _x;
	if (bs.x < bb.x - 130 / 6 - 3) _x = (bb.x - 130 / 6 + bb.x - 65 - 16) / 2;
	else if (bs.x > bb.x + 130 / 6 - 3) _x = (bb.x + 130 / 6 + bb.x + 65 + 16) / 2;
	else _x = bb.x;
	
	var _y = (bs.y < bb.y) ? 75 : -75;
	var _angle = (bs.y < bb.y) ? 90 : 270;
		
	Battle_CreateSword(_x, bb.y + _y, 174, 2, _angle);
}
if (time == 313) {
	Battle_Flash();
}
if (time == 322) {
	Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	bs.x = bb.x;
	bs.y = bb.y;
	instance_destroy(battle_board_cutout);
}
if (time == 333) {
	bs.x = bb.x;
	bs.y = bb.y;
}
if (Battle_Repeat(333, 589, 8)) {
	circ_radians += circ_speed;
		
	var _x1 = bb.x + cos(circ_radians) * 106;
	var _y1 = bb.y + sin(circ_radians) * 106;
	var _x2 = bb.x + cos(circ_radians + pi / 2) * 106;
	var _y2 = bb.y + sin(circ_radians + pi / 2) * 106;
	
	Battle_CreateSword(_x1, _y1, 174, 0, point_direction(_x1, _y1, bb.x, bb.y));
	Battle_CreateSword(_x2, _y2, 174, 0, point_direction(_x2, _y2, bb.x, bb.y));
}
if (time == 461) {
	Anim_Create(id, "circ_speed", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, pi / 8, (pi / 8) * -2, 32);
}
if (Battle_Repeat(597, 777, 7)) {
	var _color = ((time - 597) / 7) % 3 ? 0 : 0;
	switch (((time - 597) / 7) % 4) {
		case 0:
			Battle_CreateSword(bs.x, bb.y + 75, 174, _color, 90);
			break;
		case 1:
			Battle_CreateSword(bb.x + 75, bs.y, 174, _color, 180);
			break;
		case 2:
			Battle_CreateSword(bs.x, bb.y - 75, 174, _color, 270);
			break;
		case 3:
			Battle_CreateSword(bb.x - 75, bs.y, 174, _color, 0);
			break;
	}
}
if (time == 687) {
	Anim_Create(battle_enemy_minus_dummy, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 320 + 80 + 50, -30, 80);
	Anim_Create(battle_enemy_minus_dummy, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 240 - 30, 30, 80);
	Anim_Create(battle_enemy_minus_dummy, "image_alpha", 0, 0, 0.5, 0.5, 80);
}
if (time == 756) {
	battle_enemy_minus_dummy.follow_board = true;
	
	Anim_Create(battle_enemy_shaun_and_minus, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 320, -50, 30);
	
	dialog_count++;
	with (battle_enemy_minus_dummy) {
		var _inst = instance_create_depth(x - 70, y - 80, 0, battle_dialog_enemy);
		_inst.text = "{skippable false}{script `Dialog_Event1` 1}chill out bro.{sleep 30}{script `Dialog_Event1` 0}{end}";
		_inst.template = 1;
	}
}
if (dialog_count == 1 && !instance_exists(battle_dialog_enemy)) {
	dialog_count++;
	
	with (battle_enemy_shaun_and_minus) {
		var _inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
		_inst.text = "{script `Dialog_Event2` 0}{voice 2}my bad gng.{pause}{end}";
		_inst.template = 0;
	}
}