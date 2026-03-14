if (mode == 1) {
	image_index += 4 / 8;
}
else if (mode == 2) {
	image_index = image_index ? 4 : 5;
}
else if (mode == 3 && !(x + sprite_width / 2 > 0 && x - sprite_width / 2 < room_width && y + sprite_height / 2 > 0 && y - sprite_height / 2 < room_height))
	instance_destroy();