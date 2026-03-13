///@desc Turn End

// Inherit the parent event
event_inherited();

Anim_Create(battle_enemy_minus_dummy, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 320 + 80 + 20, -20, 30);
Anim_Create(battle_enemy_shaun_and_minus, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 320 - 50, -30, 30);