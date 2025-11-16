if (place_meeting(x,y,battle_soul) && image_xscale > 1 / 8 && image_alpha > 0.8){
	event_user(0);
}

if (mode == 0)
	image_xscale += (0.35 / 8) * parent_size;
else if (mode == 1)
	image_xscale -= (0.04 / change_time) * parent_size;
else if (mode == 2)
	image_xscale += (0.12 / change_time) * parent_size;
else if (mode == 3) {
	image_xscale -= (0.43 / 8) * parent_size;
	image_alpha -= 1 / 8;
}