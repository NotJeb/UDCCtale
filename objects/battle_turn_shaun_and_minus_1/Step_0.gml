// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130, 65, 185, 185);
}
if (Battle_Repeat(30, 330, 45)) {
	Battle_CreateJevilBomb(random_range(100, 540), random_range(bb.y - 185, bb.y - 130), 2);
}
if (time == 30) {
	inst_cat = instance_create_depth(690, bb.y, 0, battle_bullet_angry_cat);
	inst_cat.xscale = 70 / 1128;
	inst_cat.image_xscale = 70 / 1128;
	inst_cat.image_yscale = 70 / 1128;
	Anim_Create(inst_cat, "x", 0, 0, 690, bb.x + 100 - 690, 240);
}
if (time == 355) {
	audio_play_sound(snd_meow, 0, 0);
}
if (time == 360) {
	inst_cat.can_damage = true;
	inst_cat.image_index = 1;
}