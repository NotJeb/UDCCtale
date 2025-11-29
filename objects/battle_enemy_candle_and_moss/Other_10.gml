///@desc Init

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot, "Moss");

Battle_SetEnemyActionNumber(_enemy_slot, 1);
Battle_SetEnemyActionName(_enemy_slot, 0, "* Check");
Battle_SetEnemyActionName(_enemy_slot, 1, "* Heal");

Battle_SetMenuMercyFleeEnabled(false);