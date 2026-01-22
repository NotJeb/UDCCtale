///@desc Turn End

// Inherit the parent event
event_inherited();

Anim_Create(battle_enemy, "effect_intensity", 0, 0, 0, 1, 30);
Anim_Create(battle_effect_shaun_and_minus_carousel, "effect_intensity", 0, 0, 0, 1, 30);
Anim_Create(battle_effect_shaun_and_minus_glow, "effect_intensity", 0, 0, 0, 1, 30);
battle_enemy.alarm[1] = 10;
BGM_Resume();