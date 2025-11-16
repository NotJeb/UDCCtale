function Battle_SoulHurt(_damage = 1, _inv = Player_GetInvTotal()) {
	show_debug_message(_damage);
	if (battle_soul._inv <= 0) {
		battle_soul._inv = _inv;
		Player_Hurt(_damage);
		
		audio_play_sound(snd_hurt, 0, false);
		Camera_Shake(2, 2, 4, 4);

		if (world.settings.no_hit) {
			Battle_Gameover();
		}
	}
}