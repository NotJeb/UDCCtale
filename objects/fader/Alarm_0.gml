alpha = 0;
audio_play_sound(snd_noise, 0, 0);

for (var i = 0; i < array_length(audio_manager.sfx_array); i++)
	if (audio_manager.sfx_array[i][0] != snd_noise) audio_manager.sfx_array[i][1] += 99;
for (var i = 0; i < array_length(audio_manager.bgm_array); i++)
	audio_manager.bgm_array[i][1] += 99;