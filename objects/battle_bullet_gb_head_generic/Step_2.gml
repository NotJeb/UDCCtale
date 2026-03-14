if (mode >= 2 && (x + sprite_width / 2 > 0 && x - sprite_width / 2 < room_width && y + sprite_height / 2 > 0 && y - sprite_height / 2 < room_height)) {
	speed--;
	if (instance_exists(inst_beam)) {
		inst_beam.x = x;
		inst_beam.y = y;
	}
}