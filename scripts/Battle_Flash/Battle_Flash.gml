function Battle_Flash(time = 20){
	fader.alpha = 1;
	fader.alarm[0] = time;
	fader.color = c_black;
	audio_play_sound(snd_noise, 0, 0);
}