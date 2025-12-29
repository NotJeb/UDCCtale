for (var i = 0; i < array_length(time_sources); i++)
	time_source_destroy(time_sources[i]);
	
audio_sound_set_track_position(BGM_GetAudio(), 0);
BGM_SetAudio(-1);