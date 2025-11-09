if (enabled) {
	Debug_TextY(0);
	Debug_TextY(1, true);
	Debug_TextY(2, false, battle, "_turn_number");
	Debug_TextY(3, true, battle_turn, "time");
	Debug_TextY(4, true);
	Debug_TextY(5, true, battle, "_state");
	
	Draw_TextShadow(5, 5, "DEBUG", 2, font_mars_needs_cunnilingus);
	if (text_y[0]) Draw_TextShadow(5, text_y[0], "FPS " + string(game_get_speed(gamespeed_fps)), 2, font_mars_needs_cunnilingus);
	if (text_y[1]) Draw_TextShadow(5, text_y[1], "REAL FPS " + string(fps_real), 2, font_mars_needs_cunnilingus);
	if (text_y[2]) Draw_TextShadow(5, text_y[2], "TURN " + string(Battle_GetTurnNumber()), 2, font_mars_needs_cunnilingus);
	if (text_y[3]) Draw_TextShadow(5, text_y[3], "TURN TIME " + string(battle_turn.time), 2, font_mars_needs_cunnilingus);
	if (text_y[4]) Draw_TextShadow(5, text_y[4], "INSTANCES " + string(instance_count), 2, font_mars_needs_cunnilingus);
	if (text_y[5]) Draw_TextShadow(5, text_y[5], "BATTLE STATE " + string(Battle_GetState()), 2, font_mars_needs_cunnilingus);
}
fps_drop_alpha = clamp(fps_drop_alpha + (fps_real < game_get_speed(gamespeed_fps) && fps_real >= 0) ? 1 / 20 : -1 / 20, 0, 1);

draw_set_alpha(fps_drop_alpha);
draw_set_halign(fa_right);
Draw_TextShadow(5, 635, "FPS DROP: " + string(round(fps_real)) + "/" + string(game_get_speed(gamespeed_fps)) + " FPS", 2, font_mars_needs_cunnilingus, c_red);
draw_set_alpha(1);
draw_set_halign(fa_left);