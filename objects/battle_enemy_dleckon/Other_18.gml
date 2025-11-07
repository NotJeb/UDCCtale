///@desc Turn Preparation Start

if (Battle_GetMenuChoiceButton() == BATTLE_MENU_CHOICE_BUTTON.FIGHT) {
	var _turn_asset = asset_get_index($"battle_turn_{_enemy_name}_{Battle_GetTurnNumber()}");
	if (object_exists(_turn_asset))
		instance_create_depth(0, 0, 0, _turn_asset);
	else
		show_debug_message($"Attempted to load non-existent turn {Battle_GetTurnNumber()}.");
}
else {
	var _extra_turn = choose(0, 1, 2);
	var _turn_asset = asset_get_index($"battle_turn_extra_{_enemy_name}_{_extra_turn}");
	if (object_exists(_turn_asset))
		instance_create_depth(0, 0, 0, _turn_asset);
	else
		show_debug_message($"Attempted to load non-existent extra turn {_extra_turn}.");
}