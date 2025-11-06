///@desc Turn Preparation Start

var _turn_asset = asset_get_index($"battle_turn_{_enemy_name}_{Battle_GetTurnNumber()}");
if (object_exists(_turn_asset))
	instance_create_depth(0, 0, 0, _turn_asset);
else
	show_debug_message($"Attempted to load non-existent turn {Battle_GetTurnNumber()}.");