function Battle_Gameover(){
	if (global.settings.debug) {
		Player_Heal(Player_GetHpMax());
	}
	else if (global.settings.fast_reset) {
		BGM_Stop();
		audio_stop_all();
		Player_CustomInitialData();
		room_restart();
	}
	else {
		BGM_Stop();
		audio_stop_all();
		var z = Storage_GetTempGeneral();
		z.Set(FLAG_TEMP_GAMEOVER_SOUL_X, x - camera.x);
		z.Set(FLAG_TEMP_GAMEOVER_SOUL_Y, y - camera.y);
		room_goto(room_gameover);
	}
}