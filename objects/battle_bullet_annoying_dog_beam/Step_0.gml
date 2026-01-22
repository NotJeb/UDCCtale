if (place_meeting(x,y,battle_soul) && (mode == 0 || image_yscale > 1 && image_alpha > 0.8)) {
	event_user(0);
}

if (mode == 0) {
	y += y_speed;
	image_angle += rotation;
}
else if (mode == 1) {
	if (image_yscale < size)
		image_yscale += size / 4;
}
else if (mode == 2) {
	image_yscale -= size / 24;
	image_alpha -= 1 / 12;
}