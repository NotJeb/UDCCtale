// Play current BGM
if (audio_exists(bgm)) {
	if (!audio_is_playing(bgm))
		bgm = audio_play_sound(bgm, 0, 0);
}

// Change all sound volume
for (var i = 0; i < array_length(sfx_array); i++) {
	audio_sound_gain(sfx_array[i][0], global.settings.sfx_volume * sfx_array[i][1], 0);
}

// Change all bgm volume
for (var i = 0; i < array_length(bgm_array); i++) {
	audio_sound_gain(bgm_array[i][0], global.settings.bgm_volume * bgm_array[i][1], 0);
}