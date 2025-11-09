if (mode == 1) {
	image_index = (image_index == 0) ? 1 : 0;
}

if (mode == 3 && !(x + sprite_width * image_xscale / 2 > -23 * image_yscale && x - sprite_width * image_xscale / 2 < room_width + 23 * image_yscale && y + sprite_height * image_yscale / 2 > -23 * image_yscale && y - sprite_height * image_yscale / 2 < room_height + 23 * image_yscale))
	instance_destroy();