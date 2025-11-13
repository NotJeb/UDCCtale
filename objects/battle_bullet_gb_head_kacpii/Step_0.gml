if (mode == 1) {
	image_index += 3 / 8;
}
else if (mode == 2) {
	if (image_index < 8)
		image_index += 1 / 3;
	else
		image_index = 4;
		
	if (mouth_index < 4)
		mouth_index += 1 / 6;
}
else if (mode == 3 && !(x + sprite_width * image_xscale / 2 > -23 * image_yscale && x - sprite_width * image_xscale / 2 < room_width + 23 * image_yscale && y + sprite_height * image_yscale / 2 > -23 * image_yscale && y - sprite_height * image_yscale / 2 < room_height + 23 * image_yscale))
	instance_destroy();
	
image_angle = angle;