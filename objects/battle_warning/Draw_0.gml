if (timer == time)
	instance_destroy();

if (timer & 2) color = c_red;
else color = c_yellow;

draw_set_color(color);
draw_rectangle(x1, y1, x2, y2, true);
draw_set_color(c_white);

timer++;