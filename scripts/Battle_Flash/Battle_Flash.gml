function Battle_Flash(time = 20){
	instance_destroy(battle_bullet);
	fader.alpha = 1;
	fader.alarm[0] = time;
	fader.color = c_black;
	audio_play_sound(snd_noise, 0, 0);
}