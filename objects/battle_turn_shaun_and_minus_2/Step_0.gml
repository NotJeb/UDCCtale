// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130, 65, 185, 185);
}
if (Battle_Repeat(30, 300, 45)) {
	Battle_CreateJevilBomb(random_range(100, 540), random_range(bb.y - 185, bb.y - 130), 2);
}
if (Battle_Repeat(330, 630, 60)) {
	Battle_CreateJevilBomb(random_range(100, 540), random_range(bb.y - 185, bb.y - 130), 1);
}
if (time == 30) {
	inst_cat = Battle_CreateProjectile(690, bb.y, 70, spr_battle_bullet_angry_cat, 0, 0, 924, 1);
	inst_cat.move_speed = 1;
	inst_cat.x_center = bb.x + 100;
	inst_cat.y_center = bb.y;
	inst_cat.can_damage = false;
	Anim_Create(inst_cat, "x", 0, 0, 690, bb.x + 100 - 690, 240);
}
if (time == 355) {
	audio_play_sound(snd_meow, 0, 0);
}
if (time == 360) {
	inst_cat.can_damage = true;
	inst_cat.image_index = 1;
}
if (time == 650) {
	Anim_Create(inst_cat, "yscale", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 1, -1 / 5, 30);
	Anim_Create(inst_cat, "red_tint", 0, 0, 0, 50, 30);
	Anim_Create(inst_cat, "move_speed", 0, 0, 1, 1.1, 30);
}
if (time == 945) {
	instance_create_depth(inst_cat.x, inst_cat.y, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	inst_cat.can_damage = false;
}