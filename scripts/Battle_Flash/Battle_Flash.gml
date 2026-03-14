function Battle_Flash(time = 20){
	instance_destroy(battle_bullet);
	fader.alpha = 1;
	fader.alarm[0] = time;
	fader.color = c_black;
	audio_play_sound(snd_noise, 0, 0);
	
	for (var i = 0; i < array_length(audio_manager.sfx_array); i++)
		if (audio_manager.sfx_array[i][0] != snd_noise) audio_manager.sfx_array[i][1] -= 99;
	for (var i = 0; i < array_length(audio_manager.bgm_array); i++)
		audio_manager.bgm_array[i][1] -= 99;
}