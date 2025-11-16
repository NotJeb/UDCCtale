draw_rectangle(x, y, x + 200, y + 50, 0);
draw_set_color(c_black);
draw_rectangle(x + 2, y + 2, x + 200, y + 48, 0);
draw_set_color(c_white);

draw_sprite(sprite_index, image_index, x + 25, y + 25);

draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_transformed(x + 50, y + 25 - (string_height_ext(text, 20, 140 / 0.6) * 0.6) / 2, text, 20, 140 / 0.6, 0.6, 0.6, 0)

draw_set_color(c_black);
draw_rectangle(640, y, x + 200, y + 50, 0);

draw_set_color(c_white);