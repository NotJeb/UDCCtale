if (timer == time) {
	if (audio_exists(sound))
		audio_play_sound(sound, 0, 0);
	instance_destroy();
}

if (timer & 4) color = c_red;
else color = c_yellow;

timer++;