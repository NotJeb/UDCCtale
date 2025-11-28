///@desc Init

// Inherit the parent event
event_inherited();

BGM_SetAudio(bgm_clonetails);

battle.kr_enabled = true;
battle_ui.kr_color = c_orange;
battle_ui.kr_text = "KB";

Battle_SetEnemyActionNumber(_enemy_slot, 1);
Battle_SetEnemyActionName(_enemy_slot, 0, "* Heal");