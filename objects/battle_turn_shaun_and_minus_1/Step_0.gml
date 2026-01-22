// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130, 65, 185, 185);
}
if (time == 30) {
	inst_chips = Battle_CreateProjectile(bb.x, -50, 100, spr_battle_bullet_chips, 0, 0, 870, 0);
	Anim_Create(inst_chips, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, -50, bb.y - 150, 60);
	Anim_Create(inst_chips, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 200, 150 - bb.y, 60, 810);
}
if (Battle_Repeat(30, 840)) {
	siner += pi / 120;
	chips_angle_speed = tan(sin(siner)) * 10;
	chips_angle += chips_angle_speed;
}
if (Battle_Repeat(30, 840, 3)) {
	var _chips0 = Battle_CreateProjectile(inst_chips.x, inst_chips.y, 25, spr_battle_bullet_chips, chips_angle, 3, 716 / 7);
	_chips0.direction = chips_angle;
	_chips0.speed = 7;
}
if (Battle_Repeat(40, 800, 40)) {
	for (var i = -30; i < 60; i += 30) {
		var _angle = point_direction(inst_chips.x, inst_chips.y, bs.x, bs.y) + i;
		var _chips0 = Battle_CreateProjectile(inst_chips.x, inst_chips.y, 50, spr_battle_bullet_chips, _angle, 3, 716 / 5);
		_chips0.direction = _angle;
		_chips0.speed = 5;
	}
	
	Anim_Create(inst_chips, "image_xscale", ANIM_TWEEN.SINE, ANIM_EASE.OUT, inst_chips.image_xscale, inst_chips.image_xscale * 0.15, 2, 5);
	Anim_Create(inst_chips, "image_xscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, inst_chips.image_xscale * 1.15, -inst_chips.image_xscale * 0.15, 33, 7);
	Anim_Create(inst_chips, "image_yscale", ANIM_TWEEN.SINE, ANIM_EASE.OUT, inst_chips.image_yscale, inst_chips.image_yscale * 0.15, 2, 5);
	Anim_Create(inst_chips, "image_yscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, inst_chips.image_yscale * 1.15, -inst_chips.image_yscale * 0.15, 33, 7);
}
if (Battle_Repeat(60, 780, 60)) {
	var _x = (time % 120 == 0) ? bb.x - 235 : bb.x + 235
	var _bomb0 = Battle_CreateJevilBomb(_x, bb.y + 65, 0);
	_bomb0.alarm[1] = -1;
	_bomb0.alarm[2] = -1;
}
if (Battle_Repeat(60, 962)) {
	with (battle_bullet_jevil_bomb) {
		if (y + y_speed > battle_soul.y && alarm[2] == -1) {
			end_y = battle_soul.y;
			alarm[1] = 1;
			alarm[2] = 31;
		}
	}
}
if (time == 820) {
	Battle_CreateJevilBomb(bb.x - 235, bb.y, 3);
	Battle_CreateJevilBomb(bb.x + 235, bb.y, 3);
}
if (Battle_Repeat(840, 855, 5)) {
	var _x_offset = 165 - (time - 840) * (40 / 5);
	Battle_CreateDogBeam(bb.x + _x_offset, random(360), 6, 40);
	Battle_CreateDogBeam(bb.x - _x_offset, random(360), 6, 40);
}
if (time == 865) {
	Battle_CreateDogBeam(bb.x, random(360), 6, 40);
}