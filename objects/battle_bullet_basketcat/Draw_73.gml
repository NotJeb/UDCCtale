if (world.settings.hitboxes && world.settings.debug) {
	draw_set_color(c_red);
	draw_ellipse(x - 209 * image_xscale, y - 169 * image_yscale, x + 196 * image_xscale, y + 196 * image_yscale, 0);
	draw_set_color(c_white);
}