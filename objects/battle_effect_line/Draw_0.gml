draw_set_color(image_blend);
draw_set_alpha(image_alpha);
draw_line_width(x, y, x + lengthdir_x(length, direction + 180), y + lengthdir_y(length, direction + 180), width);
draw_set_color(c_white);
draw_set_alpha(1);