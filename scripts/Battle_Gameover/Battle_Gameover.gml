function Battle_Gameover(){
	BGM_Stop();
	
	if (global.settings.debug) {
		Player_Heal(Player_GetHpMax());
	}
	else if (global.settings.fast_reset) {
		Player_CustomInitialData();
		room_restart();
	}
	else {
		var z = Storage_GetTempGeneral();
		z.Set(FLAG_TEMP_GAMEOVER_SOUL_X, x - camera.x);
		z.Set(FLAG_TEMP_GAMEOVER_SOUL_Y, y - camera.y);
		room_goto(room_gameover);
	}
}