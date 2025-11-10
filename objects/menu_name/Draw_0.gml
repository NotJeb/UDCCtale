draw_set_font(font_mars_needs_cunnilingus);
draw_set_halign(fa_middle);
draw_text_transformed(x, y - 40, "Enter your name", 1.5, 1.5, 0);
draw_set_color(c_gray);
draw_text_transformed(x, y, "(Type with keyboard)", 0.5, 0.5, 0);
draw_set_color(c_white);
if (selected_option == 0) {
	draw_set_halign(fa_left);
	draw_text(x - string_width(name) / 2, y + 40, (time & 2) ? name + "_" : name + " ");
	
	draw_set_halign(fa_middle);
	draw_text(x, y + 100, "Confirm");
	draw_set_halign(fa_left);
}
else if (selected_option == 1) {
	draw_text(x, y + 40, name);
	
	draw_set_color(c_yellow);
	draw_text(x, y + 100, "Confirm");
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}