if (mode == 1) {
	image_index += 1 / 3;
}
if (mode == 2) {
	if !(x + sprite_width * image_xscale / 2 < -23 * image_yscale || x - sprite_width * image_xscale / 2 > room_width + 23 * image_yscale || y + sprite_height * image_yscale / 2 < -23 * image_yscale || y - sprite_height * image_yscale / 2 > room_height + 23 * image_yscale) {
		image_index = (image_index == 4 ? 5 : 4);
		gb_beam.x = x;
		gb_beam.y = y;
	}
	speed--;
}

if (mode == 3 && (x + sprite_width * image_xscale / 2 < 0 || x - sprite_width * image_xscale / 2 > room_width || y + sprite_height * image_yscale / 2 < 0 || y - sprite_height * image_yscale / 2 > room_height))
	instance_destroy();