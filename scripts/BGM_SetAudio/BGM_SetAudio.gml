function BGM_SetAudio(_audio) {
	if (audio_manager.bgm == _audio)
		audio_stop_sound(audio_manager.bgm);
	audio_manager.bgm = _audio;
}