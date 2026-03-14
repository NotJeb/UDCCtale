function BGM_Stop(){
	audio_stop_sound(BGM_GetAudio());
	BGM_SetAudio(-1);
}