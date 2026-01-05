///@desc Menu Start

// Inherit the parent event
event_inherited();

current_dialog = dialog[irandom(array_length(dialog) - 1)];
Battle_SetDialog(current_dialog);