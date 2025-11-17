///@desc Init

// Inherit the parent event
event_inherited();

BGM_SetAudio(bgm_dleckon);

Battle_SetEnemyName(_enemy_slot, "Dleckon");

Battle_SetEnemyActionNumber(_enemy_slot, 1);
Battle_SetEnemyActionName(_enemy_slot, 0, "* Check");

Battle_SetMenuMercyFleeEnabled(false);
Battle_SetEnemyCenterPos(_enemy_slot, x, y - 130);

Player_SetHpMax(44);
Player_SetHp(44);
Player_SetLv(7);

var items=Item_GetInventoryItems();
items.Add(ITEM_DLECKON_FISH_AND_CHIPS);
items.Add(ITEM_DLECKON_NOODLES);
items.Add(ITEM_DLECKON_CHOCOLATE);
items.Add(ITEM_DLECKON_GHOST_ROBOTIC_SANDWICH);
items.Add(ITEM_DLECKON_SPACE_CEREALS);