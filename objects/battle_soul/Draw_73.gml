if (world.settings.hitboxes && world.settings.debug) {
	draw_set_color(c_lime);
	draw_rectangle(x - 2, y - 2, x + 2, y + 2, 0);
	draw_set_color(c_white);
}