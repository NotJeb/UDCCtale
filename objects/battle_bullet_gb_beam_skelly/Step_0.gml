if (place_meeting(x,y,battle_soul) && image_xscale > 1 / 8 && image_alpha > 0.8){
	Battle_CallSoulEventBulletCollision();
}

if (mode == 0)
	image_xscale += (0.35 / 8) * parent_size;
else if (mode == 1)
	image_xscale -= (0.02 / change_time) * parent_size;
else if (mode == 2)
	image_xscale += (0.06 / change_time) * parent_size;
else if (mode == 3) {
	image_xscale -= (0.39 / 8) * parent_size;
	image_alpha -= 1 / 8;
}