///@desc Soul Collision

if (color == 0) || (color == 1 && battle_soul.player_is_moving) || (color == 2 && !battle_soul.player_is_moving) {
	if (image_index == 1) Battle_SoulHurt(5, 1, false);
	else Battle_SoulHurt(1, 1);
}