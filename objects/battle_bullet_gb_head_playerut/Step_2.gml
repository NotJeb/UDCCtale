if (mode == 2 && x + sprite_width * image_xscale / 2 > -23 * image_yscale && x - sprite_width * image_xscale / 2 < room_width + 23 * image_yscale && y + sprite_height * image_yscale / 2 > -23 * image_yscale && y - sprite_height * image_yscale / 2 < room_height + 23 * image_yscale) {
	speed--;
	gb_beam.x = x;
	gb_beam.y = y;
}