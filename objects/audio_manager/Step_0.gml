// Play current BGM
if (audio_exists(bgm)) {
	if (!audio_is_playing(bgm))
		audio_play_sound(bgm, 0, 0);
}

// Change all sound volume
for (var i = 0; i < array_length(sfx_array); i++) {
	audio_sound_gain(sfx_array[i], world.settings.sfx_volume, 0);
}

// Change all bgm volume
for (var i = 0; i < array_length(bgm_array); i++) {
	audio_sound_gain(bgm_array[i], world.settings.bgm_volume, 0);
}