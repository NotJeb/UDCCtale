// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(185, 65, 130, 130);
}
if (time == 10) {
	inst_cat = Battle_CreateProjectile(bb.x, -75, 150, battle_bullet_projectile);
	Anim_Create(inst_cat, "y", 0, 0, -75, bb.y - 65 + 75, 30);
	Anim_Create(inst_cat, "size", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 120, 30, 30);
	Anim_Create(inst_cat, "size", ANIM_TWEEN.SINE, ANIM_EASE.IN, 150, -30, 594, 30);
	Anim_Create(inst_cat, "size", ANIM_TWEEN.SINE, ANIM_EASE.IN, 120, 30, 20, 674);
}