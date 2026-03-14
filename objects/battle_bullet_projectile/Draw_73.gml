if (global.settings.hitboxes && global.settings.debug && can_damage) {
	if (sprite_index == spr_battle_bullet_melon_cat) {
		draw_set_color(c_red);
		draw_ellipse(x - 209 * image_xscale, y - 169 * image_yscale, x + 196 * image_xscale, y + 196 * image_yscale, 0);
		draw_set_color(c_white);
	}
	else if (sprite_index == spr_battle_bullet_chips) {
		draw_sprite_ext(spr_battle_bullet_strike, 0, x, y, 160 * image_xscale, 260 * image_yscale, image_angle, c_red, 1);
	}
	else draw_sprite_ext(sprite_index, image_number - 1, x, y, image_xscale, image_yscale, image_angle, c_red, 1);
}