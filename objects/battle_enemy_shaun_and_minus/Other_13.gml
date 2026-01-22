///@desc Menu Switch

// Inherit the parent event
event_inherited();

if (Battle_GetMenuDialog() == "" && Battle_GetMenu() == BATTLE_MENU.BUTTON) {
	Battle_SetDialog(current_dialog);
}