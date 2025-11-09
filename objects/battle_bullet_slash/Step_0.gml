if (place_meeting(x,y,battle_soul) && image_yscale > 1 && image_alpha > 0.8) {
	Battle_CallSoulEventBulletCollision();
}

if (mode == 1) {
	image_yscale += size / 12;
}
else if (mode == 2) {
	image_yscale -= size / 12;
	image_alpha -= 1 / 12;
}