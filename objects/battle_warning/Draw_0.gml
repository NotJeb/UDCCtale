surface_set_target(Battle_GetBoardSurface());
draw_set_color(color);
draw_rectangle(x1, y1, x2 - 1, y2 - 1, true);
draw_set_color(c_white);
surface_reset_target();