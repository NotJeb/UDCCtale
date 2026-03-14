if (depth > DEPTH_BATTLE.BOARD) {
	surface_set_target(Battle_GetBoardSurface());
	draw_self();
	surface_reset_target();
}
else
	draw_self();