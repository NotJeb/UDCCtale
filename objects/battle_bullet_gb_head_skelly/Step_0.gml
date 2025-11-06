if (mode == 1) {
	if !(x + sprite_width * image_xscale / 2 < -23 * image_yscale || x - sprite_width * image_xscale / 2 > room_width + 23 * image_yscale || y + sprite_height * image_yscale / 2 < -23 * image_yscale || y - sprite_height * image_yscale / 2 > room_height + 23 * image_yscale) {
		image_index = (image_index == 4 ? 5 : 4);
		gb_beam.x = x;
		gb_beam.y = y;
	}
	gb_beam.image_xscale = beam_xscale;
	gb_beam.image_alpha = image_alpha;
}

if (mode == 2 && (x + sprite_width * image_xscale / 2 < 0 || x - sprite_width * image_xscale / 2 > room_width || y + sprite_height * image_yscale / 2 < 0 || y - sprite_height * image_yscale / 2 > room_height))
	instance_destroy();