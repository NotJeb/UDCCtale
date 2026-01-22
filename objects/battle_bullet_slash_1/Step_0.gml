if (place_meeting(x,y,battle_soul) && image_xscale > 1 / 8 && image_alpha > 0.8){
	event_user(0);
}

if (mode == 0)
	image_xscale += (0.95 / 12) * size / 16;
else if (mode == 1)
	image_xscale += (0.1 / change_time) * size / 16;
else if (mode == 2)
	image_xscale -= (0.05 / change_time) * size / 16;
else if (mode == 3) {
	image_xscale -= (1 / 12) * size / 16;
	image_alpha -= 1 / 12;
}

hue += 7;
if (hue > 255) hue = 0;