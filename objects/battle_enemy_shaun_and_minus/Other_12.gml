///@desc Menu Start

// Inherit the parent event
event_inherited();

current_dialog = Battle_GetTurnNumber() < array_length(menu_dialog) ? menu_dialog[Battle_GetTurnNumber()] : "* :3";
Battle_SetDialog(current_dialog);