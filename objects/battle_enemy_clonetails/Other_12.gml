///@desc Menu Start

// Inherit the parent event
event_inherited();

current_dialog = menu_dialog[irandom(array_length(menu_dialog) - 1)];
Battle_SetDialog(current_dialog);