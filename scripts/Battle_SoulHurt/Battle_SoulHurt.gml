function Battle_SoulHurt(_damage = 1, _inv = Player_GetInvTotal()) {
	if (battle_soul._inv <= 0) {
		battle_soul._inv = _inv;
		
		audio_play_sound(snd_hurt, 0, false);
		Camera_Shake(2, 2, 4, 4);
		Player_Hurt(_damage);

		if (world.settings.no_hit) {
			Battle_Gameover();
		}
	}
}