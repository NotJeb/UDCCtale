// Inherit the parent event
event_inherited();

with (all) {
	if (object_index != battle_board && object_get_parent(object_index) != battle_soul && object_index != camera && variable_instance_exists(id, "old_x")) {
		x = old_x;
		y = old_y;
		Anim_Destroy(id, "x");
		Anim_Destroy(id, "y");
	}
}

instance_destroy(battle_effect_line);
instance_destroy(battle_effect_blur);

battle_ui.hp_display = 0;