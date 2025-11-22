text_y = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

if (!world.settings.debug) {
	Debug_TextY(0);
	Debug_TextY(1);
	Debug_TextY(2, true);
	Debug_TextY(3, false, battle, "_turn_number");
	Debug_TextY(4, true, battle_turn, "time");
	Debug_TextY(5, true);
	Debug_TextY(6, true, battle, "_state");
	Debug_TextY(7, true, battle_soul, "x");
	Debug_TextY(8, true, battle_soul, "y");
	if (world.settings.hitboxes) Debug_TextY(9, false, world, "settings");
	else text_y[9] = 0;
	
	if (text_y[0]) Draw_TextShadow(5, text_y[0], "DEBUG", 2, font_mars_needs_cunnilingus);
	if (text_y[1]) Draw_TextShadow(5, text_y[1], $"FPS {game_get_speed(gamespeed_fps)}", 2, font_mars_needs_cunnilingus);
	if (text_y[2]) Draw_TextShadow(5, text_y[2], $"REAL FPS {fps_real}", 2, font_mars_needs_cunnilingus);
	if (text_y[3]) Draw_TextShadow(5, text_y[3], $"TURN {Battle_GetTurnNumber()}", 2, font_mars_needs_cunnilingus);
	if (text_y[4]) Draw_TextShadow(5, text_y[4], $"TURN TIME {battle_turn.time}", 2, font_mars_needs_cunnilingus);
	if (text_y[5]) Draw_TextShadow(5, text_y[5], $"INSTANCES {instance_count}", 2, font_mars_needs_cunnilingus);
	if (text_y[6]) Draw_TextShadow(5, text_y[6], $"BATTLE STATE {Battle_GetState()}", 2, font_mars_needs_cunnilingus);
	if (text_y[7]) Draw_TextShadow(5, text_y[7], $"BATTLE SOUL X {battle_soul.x}", 2, font_mars_needs_cunnilingus);
	if (text_y[8]) Draw_TextShadow(5, text_y[8], $"BATTLE SOUL Y {battle_soul.y}", 2, font_mars_needs_cunnilingus);
	if (text_y[9]) Draw_TextShadow(5, text_y[9], "HITBOXES ON", 2, font_mars_needs_cunnilingus);
	Draw_TextShadow(5, 185, $"DELTATIME {1000000/delta_time}", 2, font_mars_needs_cunnilingus);
}

fps_drop_alpha += (fps_real < game_get_speed(gamespeed_fps) && fps_real >= 0) ? 1 / 20 : -1 / 20;
fps_drop_alpha = clamp(fps_drop_alpha, 0, 1);

if (fps_drop_alpha > 0) Debug_TextY(10, false);

if (text_y[10]) {
	draw_set_alpha(fps_drop_alpha);
	Draw_TextShadow(5, text_y[10], $"FPS DROP: {round(fps_real)}/{game_get_speed(gamespeed_fps)} FPS", 2, font_mars_needs_cunnilingus, c_red);
	draw_set_alpha(1);
}