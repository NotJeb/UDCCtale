if (mode == 0)
	draw_self();
else {
	draw_set_alpha(image_alpha);
	draw_circle(x, y, image_xscale, 0);
	draw_set_alpha(1);
}