///@desc Init

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot, "Minus");

Battle_SetEnemyActionNumber(_enemy_slot, 2);
Battle_SetEnemyActionName(_enemy_slot, 0, "* Check");
Battle_SetEnemyActionName(_enemy_slot, 1, "* Heal");

Battle_SetMenuMercyFleeEnabled(false);

instance_create_depth(0, 0, DEPTH_BATTLE.BG, battle_effect_shaun_and_minus_carousel);