if (world.settings.hitboxes && world.settings.debug) {
	draw_set_color(c_red);
	draw_rectangle(x - 160 * image_xscale, y - 260 * image_yscale, x + 160 * image_xscale, y + 260 * image_yscale, 0);
	draw_set_color(c_white);
}