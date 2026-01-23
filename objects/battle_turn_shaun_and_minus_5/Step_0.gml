// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 185, 185);
}
if (time == 10) {
	var _cat0 = Battle_CreateProjectile(-45, bb.y, 90, spr_battle_bullet_strawberry_cat, 0, 0, 1010);
	Anim_Create(_cat0, "x", 0, 0, -45, bb.x - 195, 90);
	Anim_Create(_cat0, "x", ANIM_TWEEN.CUBIC, ANIM_EASE.IN, bb.x - 240, 240, 90, 920);
}
if (time == 220) {
	var _cat0 = Battle_CreateProjectile(740, bb.y, 200, spr_battle_bullet_melon_cat, 0, 0, 800);
	Anim_Create(_cat0, "x", 0, 0, 740, bb.x + 195 - 740 + 100, 120);
	Anim_Create(_cat0, "x", ANIM_TWEEN.CUBIC, ANIM_EASE.IN, bb.x + 295, -295, 90, 710);
}
if (Battle_Repeat(100, 900, 70)) {
	var _gap = irandom(5);
	for (var i = 0; i < 6; i++) {
		var _y = bb.y + 65 - (19 / 2) - i * 19;
		if (i >= _gap) _y -= 16;
		var _strawberry0 = Battle_CreateProjectile(bb.x - 195, _y, 19, spr_battle_bullet_strawberry, 0, 0, 120);
		_strawberry0.depth = DEPTH_BATTLE.BULLET;
		Anim_Create(_strawberry0, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, bb.x - 195, 30, 20);
		Anim_Create(_strawberry0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x - 165, -30, 20, 20);
		Anim_Create(_strawberry0, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.x - 195, 390, 80, 40);
	}
}
if (Battle_Repeat(340, 900, 70)) {
	var _time = (bb.x + 235 - battle_soul.x) / -5;
	var _y_vel = ((bb.y - battle_soul.y) - (-0.2 * power(_time, 2)) / 2) / _time;
	Battle_CreateMelonCat(bb.x + 235, bb.y, -5, _y_vel, 50, random(360), 470 / 5);
}
if (time == 900) {
	audio_play_sound(snd_car_crash, 0, 0);
}
if (time == 1000) {
	instance_create_depth(320 + 35, 320 + 53, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	instance_create_depth(320 + 35 / 2, 320 + 53 / 2, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 1005) {
	instance_create_depth(320 + 49, 320 + -78, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	instance_create_depth(320 + 49 / 2, 320 + -78 / 2, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 1009) {
	instance_create_depth(320 + -51, 320 + 88, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	instance_create_depth(320 + -51 / 2, 320 + 88 / 2, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 1010) {
	instance_create_depth(320 + -40, 320 + -80, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	instance_create_depth(320 + -40 / 2, 320 + -80 / 2, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 1014) {
	instance_create_depth(320 + 9, 320 + 75, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	instance_create_depth(320 + 9 / 2, 320 + 75 / 2, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}