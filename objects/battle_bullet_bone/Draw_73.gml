if (global.settings.hitboxes && global.settings.debug) {
	var temp_pos = [x, y];
	x -= lengthdir_x(origin, image_angle - 90);
	y -= lengthdir_y(origin, image_angle - 90);

	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_red, 1);
	
	x = temp_pos[0];
	y = temp_pos[1];
}