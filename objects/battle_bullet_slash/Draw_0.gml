if (mode == 0) {
	var _x1 = x + lengthdir_x(-1000, image_angle);
	var _y1 = y + lengthdir_y(-1000, image_angle);
	var _x2 = x + lengthdir_x(1000, image_angle);
	var _y2 = y + lengthdir_y(1000, image_angle);
	
	draw_set_color(c_orange);
	draw_line(_x1, _y1, _x2, _y2);
	draw_self();
}
else
	draw_self();