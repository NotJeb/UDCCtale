///@desc Init

// Inherit the parent event
event_inherited();

BGM_SetAudio(bgm_shaun_and_minus_p1);
BGM_Pause();

Battle_SetEnemyName(_enemy_slot, "Shaun");

Battle_SetEnemyActionNumber(_enemy_slot, 2);
Battle_SetEnemyActionName(_enemy_slot, 0, "* Check");
Battle_SetEnemyActionName(_enemy_slot, 1, "* Heal");

Battle_SetMenuMercyFleeEnabled(false);

Player_SetHpMax(67);
Player_SetHp(67);
Player_SetLv(12.75);

instance_create_depth(0, 0, 0, battle_effect_shaun_and_minus_glow);