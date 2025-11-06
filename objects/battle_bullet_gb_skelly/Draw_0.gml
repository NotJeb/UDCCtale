if (mode == 0) {
	draw_sprite_ext(spr_bullet_gb_head_skelly, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}
else if (mode == 1) {
	draw_sprite_ext(spr_bullet_gb_head_skelly, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	draw_sprite_ext(spr_bullet_gb_beam, 0, x, y, beam_xscale, image_yscale, image_angle, c_white, image_alpha);
}