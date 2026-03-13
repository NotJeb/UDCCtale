var _x = x + ((sprite_index == spr_enemy_minus_dance || sprite_index == spr_enemy_minus_dance_sad) ? sin(sin(siner / 90) * pi) * 5 : 0);
var _y = y + sin(siner / 32) * 4;

if (sprite_index == spr_enemy_minus_dance_sad) {
	draw_sprite_ext(sprite_index, image_index, _x, _y, 2, 1.9, 0, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index - 1, _x + sin(siner / 30) * 1.5, _y + sin(siner / 30) * 1.5, 2, 1.9, 0, c_white, image_alpha * 0.1);
}
else {
	draw_sprite_ext(sprite_index, image_index, _x, _y, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index - 1, _x + sin(siner / 30) * 2, _y + sin(siner / 30) * 2, 2, 2, 0, c_white, image_alpha * 0.2);
	draw_sprite_ext(sprite_index, image_index - 2, _x + sin(siner / 30) * 4, _y + sin(siner / 30) * 4, 2, 2, 0, c_white, image_alpha * 0.1);
}

draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(_x - (sin(siner / 32) + 1) * 4 - 12, _y - (sin(siner / 32) + 1) * 1 - 2, _x + (sin(siner / 32) + 1) * 4 + 12, _y + (sin(siner / 32) + 1) * 1 + 2, 0);
draw_set_color(c_white);
draw_set_alpha(1);