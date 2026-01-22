var _x = x + (sprite_index == spr_enemy_minus_dance ? sin(sin(siner / 90) * pi) * 5 : 0);
var _y = y + sin(siner / 32) * 4;

draw_sprite_ext(sprite_index, image_index, _x, _y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index - 1, _x + sin(siner / 30) * 2, _y + sin(siner / 30) * 2, 2, 2, 0, c_white, 0.2);
draw_sprite_ext(sprite_index, image_index - 2, _x + sin(siner / 30) * 4, _y + sin(siner / 30) * 4, 2, 2, 0, c_white, 0.1);

draw_set_color(c_black);
draw_rectangle(_x - (sin(siner / 32) + 1) * 4 - 12, _y - (sin(siner / 32) + 1) * 1 - 2, _x + (sin(siner / 32) + 1) * 4 + 12, _y + (sin(siner / 32) + 1) * 1 + 2, 0);
draw_set_color(c_white);